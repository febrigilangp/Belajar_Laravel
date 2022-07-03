@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-md-8">
            <h1 class="mb-3">{{ $post->title}}</h1>
            <p> By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> In <a class="text-decoration-none" href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a></p>

            @if ($post->image)
            <div style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top img-fluid" alt="{{ $post->image }}">
            </div>                    
            @else
            <img src="https://source.unsplash.com/random/1500x500?{{ $post->category->name }}" class="card-img-top mt-3 img-fluid" alt="{{ $post->category->name }}">
            @endif


            {{-- {{ $post->body }} dengan htmlspesialchar --}}

            <article class="my-3 fs-6">
                {!! $post->body !!} 
            </article>
            {{-- digunakan untuk escaping jadi tag html tetap tercetak bisa dibilang tanpa htmlspesialchar  --}}

            <a href="/posts" class="d-block mt-2" >Back to posts</a>
        </div>
    </div>
</div>
@endsection