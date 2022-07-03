@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Create New Post</h1>
  </div>
    <div class="col-lg-8">

      {{-- FORM START --}}

        <form method="POST" action="/dashboard/posts" enctype="multipart/form-data">
            @csrf

            {{-- Input title start --}}
            <div class="mb-3">
              <label for="title" class="form-label">Title</label>
              <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" aria-describedby="title" name="title" required autofocus value="{{ old('title') }}"
              >@error('title') 
              <div class="invalid-feedback">
                {{ $message }}
              </div>
                @enderror
             </div>
             {{-- Input title end --}}


            {{-- input slug start --}}
            {{-- Kalo ingin disable menggunakan disabe readonly --}}
            <div class="mb-3">
              <label for="slug" class="form-label">Slug </label>
              <input type="text" class="form-control" id="slug" aria-describedby="slug" name="slug" @error('slug') is-invalid @enderror required value="{{ old('slug') }}">
              @error('slug') 
              <div class="invalid-feedback">
                {{ $message }}
              </div>
                @enderror
            </div>
            {{-- input slug end --}}

            {{-- input category start --}}
            <div class="mb-3">
              <label for="category_id" class="form-label">Category</label>
              <select class="form-select" aria-label="category_id" name="category_id">
                @foreach ($categories as $category)
                    @if (old('category_id')== $category->id)
                    <option value="{{ $category->id }}" selected>{{ $category->name }}</option>
                    @else
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endif
                @endforeach
              </select>
            </div>
            {{-- input category end --}}

            {{-- Input Images Start --}}

            <div class="mb-3">
              <label for="image" class="form-label">Post Image</label>
              <img class="img-preview img-fluid mb-3 col-sm-5">
              <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewImage()">
              @error('image') 
              <div class="invalid-feedback">
                {{ $message }}
              </div>
                @enderror
            </div>

            {{-- Input images end --}}

            {{-- input body start --}}

            <div class="mb-3">
              <label for="body" class="form-label">Body</label>
              @error('body') 
              <div class="text-danger">
                <p>{{ $message }}</p>
              </div>
                @enderror
              <input id="body" type="hidden" name="body" value="{{ old('body') }}">
              <trix-editor input="body" ></trix-editor>
              </select>
            </div>

            {{-- input body end --}}

   <button type="submit" class="btn btn-primary mb-2">Create Post</button>
          </form>
    </div>

    <script>
        const title = document.querySelector('#title');
        const slug = document.querySelector('#slug');

        title.addEventListener('change', function(){
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
        .then(response => response.json())
        .then(data => slug.value = data.slug)
        }) ;

        document.addEventListener('trix-file-accept',function (e){
            e.preventDefault();
          })

          function previewImage() {
            const image = document.querySelector('#image');
            const imgPreview = document.querySelector('.img-preview');

            imgPreview.style.display = 'block';

            const oFReader = new FileReader();
            oFReader.readAsDataURL(image.files[0]);

            oFReader.onload = function(oFREvent){
              imgPreview.src = oFREvent.target.result;
            }
          }
       
         
    </script>


@endsection