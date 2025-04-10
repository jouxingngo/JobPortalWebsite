@extends('master-layouts.master')
@section('content')

    <body class="font-poppins text-[#0E0140]">
        <main class="min-h-screen flex">
            <div id="Left-background"
                class="fixed top-0 left-0 h-screen w-[640px] flex shrink-0 items-baseline ring-1 ring-[#E8E4F8] overflow-hidden">
                <img src="{{ asset('assets//backgrounds/Working from Home with Pet Dog 1.png') }}"
                    class="background object-cover w-full h-full" alt="background image">
                <div
                    class="testimonial absolute bottom-0 w-[580px] mx-[30px] mt-auto mb-[30px] rounded-[20px] border border-[#E8E4F8] p-5 flex flex-col gap-4 bg-white shadow-[0_8px_30px_0_#0E01400D]">
                    <p class="caption font-semibold leading-8">Jobank memberikan semangat baru setelah kena PHK, saya bisa
                        belajar ilmu baru dan upgrade portfolio lalu mendapatkan pekerjaan remote dengan gaji cukup ideal!
                        mantap.</p>
                    <div class="flex justify-between items-center">
                        <div class="flex items-center gap-[14px]">
                            <div class="w-[60px] h-[60px] flex shrink-0 rounded-full overflow-hidden">
                                <img src="{{ asset('assets//photos/photo1.png') }}" class="object-cover w-full h-full"
                                    alt="photo">
                            </div>
                            <div class="h-fit">
                                <p class="font-semibold">Masayoshi</p>
                                <p class="text-sm leading-[21px]">Product Designer</p>
                            </div>
                        </div>
                        <div class="flex items-center gap-[2px]">
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/Star.svg') }}" alt="star">
                            </div>
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/Star.svg') }}" alt="star">
                            </div>
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/Star.svg') }}" alt="star">
                            </div>
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/Star.svg') }}" alt="star">
                            </div>
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/Star.svg') }}" alt="star">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section id="Signup-form"
                class="pl-[640px] flex flex-col py-[140px] items-center justify-center w-full gap-[70px]">
                <form method="POST" action="{{ route('register') }}"  class="max-w-[500px] w-full flex flex-col gap-[30px]" enctype="multipart/form-data">
                    @csrf
                    <a href="{{ route('front.index') }}" class="logo h-[10] flex shrink-0 justify-start mb-10">
                        <img src="{{ asset('assets//logos/Logo-black.svg') }}" class="object-contain" alt="logo">
                    </a>
                    <h1 class="font-bold text-[26px] leading-[39px]">Create Account</h1>
                    <div class="flex items-center gap-4">
                        <button type="button" id="Upload-btn"
                            class="w-[100px] h-[100px] flex shrink-0 rounded-full overflow-hidden">
                            <img id="File-thumbnail" src="{{ asset('assets//icons/upload-avatar.svg') }}"
                                class="object-cover w-full h-full" alt="avatar">
                        </button>
                        <div class="h-fit flex flex-col gap-1">
                            <label class="font-semibold" for="File-upload">Add Your Avatar</label>
                            <p class="text-sm leading-[21px]">Use professional photo for career</p>
                            <button type="button" id="Replace-photo-btn"
                                class="font-semibold text-sm leading-[21px] text-[#FF6B2C] hover:underline transition-all duration-300 w-fit hidden">Replace
                                Photo</button>
                        </div>
                        <input type="file" name="avatar" id="File-upload" class="hidden" accept="image/*">
                        <x-input-error :messages="$errors->get('avatar')" class="mt-2" />

                    </div>
                    <div class="flex flex-col gap-2">
                        <label for="Name" class="font-semibold">Full Name</label>
                        <div
                            class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/user.svg') }}" alt="icon">
                            </div>
                            <input type="text" id="Name" autocomplete="off" name="name"
                                class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                placeholder="Write your full name" required>
                        </div>
                        <x-input-error :messages="$errors->get('name')" class="mt-2" />

                    </div>
                    <div class="flex flex-col gap-2">
                        <label for="Email" class="font-semibold">Email Address</label>
                        <div
                            class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/sms.svg') }}" alt="icon">
                            </div>
                            <input type="email" id="Email" autocomplete="off" name="email"
                                class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                placeholder="Write your email address" required>
                        </div>
                        <x-input-error :messages="$errors->get('email')" class="mt-2" />

                    </div>
                    <div class="grid grid-cols-2 gap-[30px]">
                        <div class="flex flex-col gap-2">
                            <label for="Occupation" class="font-semibold">Occupation</label>
                            <div
                                class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                                <div class="w-6 h-6 flex shrink-0">
                                    <img src="{{ asset('assets//icons/note-favorite.svg') }}" alt="icon">
                                </div>
                                <input type="text" id="Occupation" autocomplete="off" name="occupation"
                                    class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                    placeholder="Type here..." required>
                            </div>
                            <x-input-error :messages="$errors->get('occupation')" class="mt-2" />

                        </div>
                        <div class="flex flex-col gap-2">
                            <label for="Experience" class="font-semibold">Experience</label>
                            <div
                                class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                                <div class="w-6 h-6 flex shrink-0">
                                    <img src="{{ asset('assets//icons/chart.svg') }}" alt="icon">
                                </div>
                                <input type="text" id="Experience" autocomplete="off" name="experience"
                                    class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                    placeholder="Type here..." required>
                            </div>
                            <x-input-error :messages="$errors->get('experience')" class="mt-2" />

                        </div>
                    </div>
                    <div class="flex flex-col gap-2">
                        <label for="Password" class="font-semibold">Password</label>
                        <div
                            class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/lock.svg') }}" alt="icon">
                            </div>
                            <input type="password" id="Password" autocomplete="off" name="password"
                                class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                placeholder="Write your password" required>
                        </div>
                        <x-input-error :messages="$errors->get('password')" class="mt-2" />

                    </div>
                    <div class="flex flex-col gap-2">
                        <label for="password_confirmation" class="font-semibold">Confirm Password</label>
                        <div
                            class="flex items-center rounded-full p-[14px_24px] gap-[10px] ring-1 ring-[#0E0140] focus-within:ring-2 focus-within:ring-[#FF6B2C] transition-all duration-300">
                            <div class="w-6 h-6 flex shrink-0">
                                <img src="{{ asset('assets//icons/lock.svg') }}" alt="icon">
                            </div>
                            <input type="password" id="password_confirmation" autocomplete="off"
                                name="password_confirmation"
                                class="appearance-none w-full outline-none font-semibold placeholder:font-normal placeholder:text-[#0E0140] focus:outline-none"
                                placeholder="Write your password" required>
                        </div>
                        <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />

                    </div>
                    <div class="flex flex-col gap-2">
                        <p class="font-semibold">Account Type</p>
                        <div class="grid grid-cols-2 gap-[30px]">
                            <label
                                class="relative group bg-white rounded-3xl p-[30px_24px] flex flex-col items-center justify-center gap-5 ring-1 ring-[#0E0140] has-[:checked]:ring-2 has-[:checked]:ring-[#FF6B2C] transition-all duration-300">
                                <div class="w-[46px] h-[46px] flex shrink-0">
                                    <img src="{{ asset('assets//icons/briefcase.svg') }}" alt="icon">
                                </div>
                                <p class="font-semibold">As an Employee</p>
                                <img src="{{ asset('assets//icons/tick-circle-orange.svg') }}"
                                    class="absolute top-[10px] right-[10px] w-6 h-6 opacity-0 group-has-[:checked]:opacity-100 transition-all duration-300"
                                    alt="icon">
                                <input type="radio" name="account_type" id="Employee" value="Employee"
                                    class="absolute -z-10 top-1/2 left-1/2" required>
                            </label>
                            <label
                                class="relative group bg-white rounded-3xl p-[30px_24px] flex flex-col items-center justify-center gap-5 ring-1 ring-[#0E0140] has-[:checked]:ring-2 has-[:checked]:ring-[#FF6B2C] transition-all duration-300">
                                <div class="w-[46px] h-[46px] flex shrink-0">
                                    <img src="{{ asset('assets//icons/building-4.svg') }}" alt="icon">
                                </div>
                                <p class="font-semibold">As an Employer</p>
                                <img src="{{ asset('assets//icons/tick-circle-orange.svg') }}"
                                    class="absolute top-[10px] right-[10px] w-6 h-6 opacity-0 group-has-[:checked]:opacity-100 transition-all duration-300"
                                    alt="icon">
                                <input type="radio" name="account_type" id="Employer" value="Employer"
                                    class="absolute -z-10 top-1/2 left-1/2" required>
                            </label>
                        </div>
                    </div>
                    <div class="flex flex-col gap-3">
                        <button type="submit"
                            class="rounded-full p-[14px_30px] bg-[#FF6B2C] font-semibold text-white text-nowrap hover:shadow-[0_10px_20px_0_#FF6B2C66] transition-all duration-300">Sign
                            Up Now</button>
                        <a href="{{ route('login') }}"
                            class="rounded-full border border-[#0E0140] p-[14px_30px] font-semibold text-[#0E0140] text-center">Sign
                            In to My Account</a>
                    </div>
                </form>
            </section>
        </main>

    </body>
@endsection
@push('scripts')
    <script>
        document.getElementById('Upload-btn').addEventListener('click', function() {
            document.getElementById('File-upload').click();
        });
        document.getElementById('Replace-photo-btn').addEventListener('click', function() {
            document.getElementById('File-upload').click();
        });

        document.getElementById('File-upload').addEventListener('change', function(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('File-thumbnail').src = e.target.result;
                    document.getElementById('Replace-photo-btn').classList.remove('hidden');
                };
                reader.readAsDataURL(file);
            }
        });
    </script>
@endpush
