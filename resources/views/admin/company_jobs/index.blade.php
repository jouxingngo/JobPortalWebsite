<x-app-layout>
    <x-slot name="header">
        <div class="flex flex-row justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Manage Job Listing') }}
            </h2>
            <a href="{{ route('admin.company_jobs.create') }} "
                class="font-bold py-4 px-6 bg-indigo-700 text-white rounded-full">
                Add New
            </a>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-10 flex flex-col gap-y-5">

                @forelse ($company_jobs as $company_job)
                    <div class="item-card flex flex-row justify-between items-center">
                        <div class="flex flex-row items-center gap-x-3">
                            <img src=" {{ Storage::url($company_job->thumbnail) }}" alt="" class="rounded-2xl object-cover w-[120px] h-[90px]">
                            <div class="flex flex-col">
                                <h3 class="text-indigo-950 text-xl font-bold">
                                    {{ $company_job->name }}
                                </h3>
                                <p class="text-slate-500 text-sm">
                                    {{ $company_job->category->name }}
                                </p>
                            </div>
                        </div>
                        <div class="hidden md:flex flex-col">
                            <p class="text-slate-500 text-sm">Salary</p>
                            <h3 class="text-indigo-950 text-xl font-bold">
                                Rp {{ number_format($company_job->salary,2,',','.') }}/mo
                            </h3>
                        </div>
                        <div class="hidden md:flex flex-col">
                            <p class="text-slate-500 text-sm">Level</p>
                            <h3 class="text-indigo-950 text-xl font-bold">{{ $company_job->skill_level }}</h3>
                        </div>
                        <div class="hidden md:flex flex-col">
                            <p class="text-slate-500 text-sm">Candidates</p>
                            <h3 class="text-indigo-950 text-xl font-bold">{{ $company_job->candidates->count() }}</h3>
                        </div>
                        <div class="hidden md:flex flex-row items-center gap-x-3">
                            <a href="{{ route('admin.company_jobs.show',$company_job) }} " class="font-bold py-4 px-6 bg-indigo-700 text-white rounded-full">
                                Manage
                            </a>
                        </div>
                    </div>

                @empty
                    <p>Belum ada data terbaru.</p>
                @endforelse
                {{ $company_jobs->links() }}

            </div>
        </div>
    </div>
</x-app-layout>
