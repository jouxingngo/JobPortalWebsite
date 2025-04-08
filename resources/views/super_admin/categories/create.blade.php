<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('New Category') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-3xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden p-10 shadow-sm sm:rounded-lg">
                <form method="POST" action=" {{ route('admin.categories.store') }} " enctype="multipart/form-data">
                    @csrf
                    <div>
                        <x-input-label for="name" :value="__('Name')" />
                        <x-text-input id="name" class="block mt-1 w-full" type="text" name="name"
                            :value="old('name')" required autofocus autocomplete="name" />
                        <x-input-error :messages="$errors->get('name')" class="mt-2" />
                    </div>


                    <div class="mt-4">
                        <x-input-label for="icon" :value="__('icon')" />
                        <img src="" id="preview" alt="" class="rounded-2xl object-contain w-[90px] h-[90px]">
                        <x-text-input id="icon" class="block mt-1 w-full" type="file" name="icon" required
                            autofocus autocomplete="icon" />
                        <x-input-error :messages="$errors->get('icon')" class="mt-2" />
                    </div>

                    <div class="flex items-center justify-end mt-4">

                        <button type="submit" class="font-bold py-4 px-6 bg-indigo-700 text-white rounded-full">
                            Add New Category
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    @push('scripts')
    <script>
        document.getElementById('icon').addEventListener('change', function(event) {
            const input = event.target;
            const preview = document.getElementById('icon-preview');

            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        });
    </script>
@endpush
</x-app-layout>
