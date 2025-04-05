<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $permissions = [
            'manage categories',
            'manage company',
            'manage jobs',
            'manage candidates',
            'apply job',
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate([
                'name' => $permission,
            ]);
        }

        // buat role employer
        $employerRole = Role::firstOrCreate([
            'name' => 'employer'
        ]);

        $employerPermissions = [
            'manage company',
            'manage jobs',
            'manage candidates',
        ];
        $employerRole->syncPermissions($employerPermissions);

        // buat role employee
        $employeeRole = Role::firstOrCreate([
            'name' => 'employee'
        ]);

        $employeePermissions = [
            'apply job',
        ];
        $employeeRole->syncPermissions($employeePermissions);

        // buat role superadmin
        $superAdminRole = Role::firstOrCreate([
            'name' => 'super_admin'
        ]);

        // buat akun super_admin
        $user = User::create([
            'name' => "Super Admin",
            'email' => "super@admin.com",
            'occupation' => "Superadmin ",
            'experience' => 100,
            'avatar' => "images/default-avatar.png",
            'password' => '123123123',
        ]);
        $user->assignRole($superAdminRole);

    }
}
