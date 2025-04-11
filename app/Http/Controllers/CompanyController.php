<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCompanyRequest;
use App\Http\Requests\UpdateCompanyRequest;
use App\Models\Company;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class CompanyController extends Controller
{
    use AuthorizesRequests;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $user = Auth::user();
        // $company = Company::with('employer')->where('employer_id', $user->id)->first();
        $company = $user->companies()->first();
        if (!$company) {
            return redirect()->route('admin.company.create');
        }
        return view('admin.company.index', compact('company'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('admin.company.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCompanyRequest $request)
    {
        //
        $user = Auth::user();
        $company = $user->companies()->first();
        if ($company) {
            return redirect()->route('admin.company.index')->with('error', 'Gagal! Anda sudah membuat company.');
        }
        DB::transaction(function () use ($request, $user) {
            $validated = $request->validated();
            if ($request->hasFile('logo')) {
                $logoPath = $request->file('logo')->store('logos/' . date('Y/m/d'), 'public');
                $validated['logo'] = $logoPath;
            }
            $validated['slug'] = Str::slug($validated['name']);
            $validated['employer_id'] = $user->id;
            $newData = Company::create($validated);
        });
        return redirect()->route('admin.company.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Company $company)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Company $company)
    {
        //
        // if (Auth::id() != $company->employer_id) {
        //     abort(403);
        // }
        $this->authorize('edit', $company);
        return view('admin.company.edit', compact('company'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCompanyRequest $request, Company $company)
    {

        //
        DB::transaction(function () use ($request, $company) {
            $validated = $request->validated();
            if ($request->hasFile('logo')) {
                if ($company->logo && Storage::disk('public')->exists($company->logo)) {
                    Storage::disk('public')->delete($company->logo);
                }
                $logoPath = $request->file('logo')->store('logos/' . date('Y/m/d'), 'public');
                $validated['logo'] = $logoPath;
            }
            $validated['slug'] = Str::slug($validated['name']);
            $company->update($validated);
        });
        return redirect()->route('admin.company.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Company $company)
    {
        $this->authorize('delete', $company);

        //
        DB::transaction(function () use ($company) {
            if ($company->logo && Storage::disk('public')->exists($company->logo)) {
                Storage::disk('public')->delete($company->logo);
            }
            $company->delete();
        });
        return redirect()->route('admin.company.index');
    }
}
