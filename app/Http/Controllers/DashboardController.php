<?php

namespace App\Http\Controllers;

use App\Models\JobCandidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    //

    public function my_applications(){
        $user = Auth::user();
        $my_applications = $user->job_applications()->with(['companyJob', 'companyJob.company', 'companyJob.category'])->latest('id')->paginate(10);
        return view('dashboard.my_applications', compact('my_applications'));
    }

    public function my_application_details(JobCandidate $jobCandidate)
    {
        $user = Auth::user();
        if ($jobCandidate->candidate_id != $user->id) {
            abort(403);
        }
        $jobCandidate->load(['companyJob', 'profile']);

        return view('dashboard.my_application_details', compact('jobCandidate'));
    }
}
