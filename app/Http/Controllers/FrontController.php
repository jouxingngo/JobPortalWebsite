<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreApplyJobRequest;
use App\Http\Requests\StroreApplyJobRequest;
use App\Models\Category;
use App\Models\CompanyJob;
use App\Models\JobCandidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class FrontController extends Controller
{
    //
    public function index()
    {
        $categories = Category::all();
        $jobs = CompanyJob::with(['category', 'company'])->get();
        return view('front.index', compact('categories', 'jobs'));
    }

    public function details(CompanyJob $companyJob)
    {
        $jobs = CompanyJob::with(['category', 'company'])->where('id', '!=', $companyJob->id)->inRandomOrder('id')->take(4)->get();

        return view('front.details', compact('jobs', 'companyJob'));
    }

    public function category(Category $category)
    {
        $jobs = $category->jobs()->paginate(6);
        return view('front.category', compact('category', 'jobs'));
    }

    public function apply(CompanyJob $companyJob)
    {
        return view('front.apply', compact('companyJob'));
    }

    public function apply_store(StoreApplyJobRequest $request, CompanyJob $companyJob)
    {
        $user = Auth::user();
        $hasAppllied = JobCandidate::where('candidate_id', $user->id)->where('company_job_id', $companyJob->id)->first();
        if ($hasAppllied) {
            return redirect()->back()->with('error', 'Failded! Anda sudah apply sebelumnya.');
        }
        DB::transaction(function () use ($request, $companyJob, $user) {
            $validated = $request->validated();
            if ($request->hasFile('resume')) {
                $resumePath = $request->file('resume')->store('resumes', 'public');
                $validated['resume'] = $resumePath;
            }
            $validated['candidate_id'] = $user->id;
            $validated['is_hired'] = false;
            $validated['company_job_id'] = $companyJob->id;

            $newData = JobCandidate::create($validated);
        });
        return redirect()->route('front.apply.success');
    }

    public function success_apply()
    {
        return view('front.success_apply');
    }


    public function search(Request $request)
    {
        $request->validate([
            'keyword' => 'required|string|max:255'
        ]);
        $keyword = $request->keyword;
        $jobs = CompanyJob::with(['company', 'category'])
            ->where('name', 'like', '%' . $keyword . '%')->paginate(6)
            ->appends(['keyword' => $keyword]);
        return view('front.search', compact('jobs', 'keyword'));
    }
}
