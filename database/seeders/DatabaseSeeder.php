<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;

use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       

        User::create([
            'name'=>'Febri Gilang Pratama',
            'username' => 'febrigilangp',
            'email'=> 'febrigilangp@gmail.com',
            'password'=> bcrypt('12345')
        ]);

        // User::create([
        //     'name'=>'rendi dwo',
        //     'email'=> 'renee@gmail.com',
        //     'password'=> bcrypt('12345')

        // ]);

        User::factory(4)->create();

        Category::create([
            'name'=>'Programming',
            'slug'=>'programming'
        ]);
        Category::create([
            'name'=>'Web Design',
            'slug'=>'web-design'
        ]);
        Category::create([
            'name'=>'Personal',
            'slug'=>'personal'
        ]);


        Post::factory(20)->create();



        // Post::create([
        //     'title'=>'Judul Pertama',
        //     'slug'=> 'judul-pertama',
        //     'excerpt'=> 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit',
        //     'body'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit veritatis consequuntur sit nam omnis? Iste vitae consequuntur harum quae soluta velit dicta mollitia nostrum quas rerum exercitationem molestias ipsam perferendis cum eius officiis adipisci sequi consectetur error quasi temporibus nulla, tempore odit? Necessitatibus, reprehenderit!',
        //     'category_id'=>1,
        //     'user_id'=> 1
        // ]);

        // Post::create([
        //     'title'=>'Judul kedua',
        //     'slug'=> 'judul-ke-dua',
        //     'excerpt'=> 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit',
        //     'body'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit veritatis consequuntur sit nam omnis? Iste vitae consequuntur harum quae soluta velit dicta mollitia nostrum quas rerum exercitationem molestias ipsam perferendis cum eius officiis adipisci sequi consectetur error quasi temporibus nulla, tempore odit? Necessitatibus, reprehenderit!',
        //     'category_id'=> 1,
        //     'user_id'=> 1
        // ]);

        // Post::create([
        //     'title'=>'Judul ketiga',
        //     'slug'=> 'judul-ke-tiga',
        //     'excerpt'=> 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit',
        //     'body'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit veritatis consequuntur sit nam omnis? Iste vitae consequuntur harum quae soluta velit dicta mollitia nostrum quas rerum exercitationem molestias ipsam perferendis cum eius officiis adipisci sequi consectetur error quasi temporibus nulla, tempore odit? Necessitatibus, reprehenderit!',
        //     'category_id'=> 2,
        //     'user_id'=> 1
        // ]);

        // Post::create([
        //     'title'=>'Judul Keempat',
        //     'slug'=> 'judul-ke-empat',
        //     'excerpt'=> 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit',
        //     'body'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit veritatis consequuntur sit nam omnis? Iste vitae consequuntur harum quae soluta velit dicta mollitia nostrum quas rerum exercitationem molestias ipsam perferendis cum eius officiis adipisci sequi consectetur error quasi temporibus nulla, tempore odit? Necessitatibus, reprehenderit!',
        //     'category_id'=> 2,
        //     'user_id'=> 1
        // ]);

        // Post::create([
        //     'title'=>'Judul Kelima',
        //     'slug'=> 'judul-ke-lima',
        //     'excerpt'=> 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit',
        //     'body'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sequi enim aperiam maxime pariatur cumque reprehenderit veritatis consequuntur sit nam omnis? Iste vitae consequuntur harum quae soluta velit dicta mollitia nostrum quas rerum exercitationem molestias ipsam perferendis cum eius officiis adipisci sequi consectetur error quasi temporibus nulla, tempore odit? Necessitatibus, reprehenderit!',
        //     'category_id'=> 1,
        //     'user_id'=> 2
        // ]);

    }
}

