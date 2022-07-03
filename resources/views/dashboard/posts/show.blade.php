@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
        <div class="col-lg-8">
            <h1 class="mb-3">{{ $post->title}}</h1>
            <a href="/dashboard/posts" class="btn btn-success">
                <span data-feather="arrow-left"></span> Back to all my posts</a>
            <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning">
                <span data-feather="edit"></span> Edit</a>

                <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button class="btn btn-danger" onclick="return confirm ('are you sure?')">
                      <span data-feather="x-circle"></span> Delete
                    </button>
                    </form>

                    @if ($post->image)
                    <div style="max-height: 350px; overflow:hidden;">
                        <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top mt-3 img-fluid" alt="{{ $post->image }}">
                    </div>                    
                    @else
                    <img src="https://source.unsplash.com/random/1500x500?{{ $post->category->name }}" class="card-img-top mt-3 img-fluid" alt="{{ $post->category->name }}">
                    @endif

            {{-- {{ $post->body }} dengan htmlspesialchar --}}

            <article class="my-3 fs-6">
                {!! $post->body !!} 
            </article>
            {{-- digunakan untuk escaping jadi tag html tetap tercetak bisa dibilang tanpa htmlspesialchar  --}}
        </div>
    </div>
</div>

@endsection