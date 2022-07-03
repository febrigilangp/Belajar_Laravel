<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    use HasFactory, Sluggable;

    // protected $table = ['posts'];

    // * $fillable digunakan untuk field apa saja yang boleh diisi
    
    // ! sedang kan $guarded diisi apabila field tersebut tidak boleh disii

    protected $guarded = ['id'];
    // protected $fillable =['title','category_id','slug','excerpt','body'];


    // * $with digunakan untuk menampung field yang akan dibawa sehingga dapat mengatasi problem n+1 
    protected $with = ['category','author'];

    // *scope filter digunakan untuk search

    public function scopeFilter($query, array $filters){
      
    // * cara 1 menggunakan if isset untuk search
        // if(isset($filters['search']) ? $filters['search'] : false){
        //     $query -> where('title', 'LIKE', '%' . $filters['search'] . '%')
        //     -> orWhere('body','LIKE','%' . $filters['search'].'%');
        // }

        // * cara 2 menggunakan method when dan null coalescing operator dari php

        $query->when($filters['search'] ?? false , function($query, $search){
           return $query -> where('title', 'LIKE', '%' . $search . '%')
            -> orWhere('body','LIKE','%' . $search .'%');
        });

// *versi callback

        $query->when($filters['category'] ?? false, function($query, $category){ return $query->whereHas('category', function($query) use ($category){
            $query->where('slug',$category);
        });
        });

// *versi arrow function

        $query->when($filters['author'] ?? false, fn($query, $author)=> $query->whereHas('author', fn($query)=>
            $query->where('username',$author)
        )
        );

    }



    // * digunakan untuk meralisikan ke table category belongTO digunakan untu one to one
    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function author(){
        return $this->belongsTo(User::class,'user_id');
    }

    // * Customizing The Key

        public function getRouteKeyName()
    {
        return 'slug';
    }

    // *eloquent slugable

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

  
}

