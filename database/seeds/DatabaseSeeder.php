<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        \DB::table('admins')->insert([
            'name'     => 'Admin',
            'email'    => 'doantotnghiep@gmail.com',
            'phone'    => '0988999999',
            'password' => Hash::make('123456789')
        ]);
    }
}
