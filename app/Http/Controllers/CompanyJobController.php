<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCompanyJobRequest;
use App\Http\Requests\UpdateCompanyJobRequest;
use App\Models\Category;
use App\Models\Company;
use App\Models\CompanyJob;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class CompanyJobController extends Controller
{
    use AuthorizesRequests;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $user = Auth::user();
        $my_company = $user->companies()->first();
        if ($my_company) {
            $company_jobs = $my_company->jobs()->with(['category'])->paginate(6);
        } else {
            $company_jobs = collect(); //empty collection
        }

        return view("admin.company_jobs.index", compact("company_jobs"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        $user = Auth::user();
        $my_company = $user->companies()->first();
        if (!$my_company) {
            return redirect()->route('admin.company.create');
        }
        $categories = Category::all();
        return view('admin.company_jobs.create', compact('my_company', 'categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCompanyJobRequest $request)
    {
        //
        DB::transaction(function () use ($request) {
            $validated = $request->validated();
            if ($request->hasFile('thumbnail')) {
                $thumbnailPath = $request->file('thumbnail')->store('thumbnails/' . date('Y/m/d'), 'public');
                $validated['thumbnail'] = $thumbnailPath;
            }
            $validated['slug'] = Str::slug($validated['name']);
            $validated['is_open'] = true;

            $new_job = CompanyJob::create($validated);

            if (!empty($validated['responsibilities'])) {
                foreach ($validated['responsibilities'] as $responsibility) {
                    $new_job->responsibilities()->create([
                        'name' => $responsibility
                    ]);
                }
            }

            if (!empty($validated['qualifications'])) {
                foreach ($validated['qualifications'] as $qualification) {
                    $new_job->qualifications()->create([
                        'name' => $qualification
                    ]);
                }
            }
        });
        return redirect()->route('admin.company_jobs.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(CompanyJob $companyJob)
    {
        //
        // Force eager load 'qualifications' relasi
        $this->authorize('view', $companyJob);
        $companyJob->load(['qualifications', 'responsibilities', 'candidates', 'candidates.profile']);
        return view('admin.company_jobs.show', compact('companyJob'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(CompanyJob $companyJob)
    {
        //
        // if (Auth::id() != $companyJob->company->employer_id) {
        //     abort(403);
        // }
        $this->authorize('edit', $companyJob);
        $categories = Category::all();
        return view('admin.company_jobs.edit', compact('companyJob', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCompanyJobRequest $request, CompanyJob $companyJob)
    {
        //
        $this->authorize('update', $companyJob);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CompanyJob $companyJob)
    {
        //
        $this->authorize('delete', $companyJob);
    }
}
