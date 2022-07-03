<?php

namespace App\Models;

use function PHPUnit\Framework\returnSelf;

class Post 
{
   private static $blog_posts = [
        [
            "title"=> "Judul Pertama",
            "slug"=> "judul-post-pertama",
            "author"=> "Febri Gilang",
            "body"=>"Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi amet quis eaque aliquid libero in minus maxime iste enim suscipit repellat atque exercitationem iure molestiae corporis, nulla architecto, saepe assumenda! Odio ipsa recusandae ullam nam dolorum sunt nesciunt eveniet voluptatem?"
        ],
        [
            "title"=> "Judul kedua",
            "slug"=> "judul-post-kedua",
            "author"=> "rendi dwi",
            "body"=>"Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloribus itaque cupiditate magni inventore consequuntur maiores eius necessitatibus id esse earum neque delectus, quae, quod, ipsam natus accusantium perferendis? Ab officiis magnam ullam quidem quasi animi sint id ipsam numquam tenetur sed, inventore repellat culpa quaerat placeat, consequatur amet soluta minus distinctio, nulla vitae asperiores reiciendis harum? Incidunt, cupiditate ratione iste velit ab nam provident tenetur esse possimus aliquid debitis exercitationem nihil neque sapiente aspernatur unde ex? Voluptate rerum dignissimos labore facere quisquam quae ullam. Ea sunt corporis maiores, repudiandae odit porro possimus recusandae eum repellendus voluptatem, nihil nisi est aliquam?"
        ],
    ];
    
    
    public static function all(){
        return collect(self::$blog_posts);
        // kalo dia properti biasa menggunaakn this->$blog_post
    }

    public static function find($slug)
    {
        $posts = static::all();   
        // $post = [];
        // foreach($posts as $p){
        //     if($p['slug'] === $slug){
        //         $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug',$slug);
    }
};
