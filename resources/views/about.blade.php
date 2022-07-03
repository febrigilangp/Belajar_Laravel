@extends('layouts.main')

@section('container')
<h1>about me</h1>
<h2>{{ $name }}</h2>  <!-- {{}} menggunakan blade templeting engine-->
<h2><?= $jobs ?></h2> <!-- echo php / dignati dengan '=' menggunakan echo php--> 


@endsection
