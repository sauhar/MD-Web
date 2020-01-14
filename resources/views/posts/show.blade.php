@extends('layouts.app')
@section('content')


<h1>{{$post -> title}}</h1>
<img style="width:100%" src ="/storage/cover_images/{{$post ->cover_image}}">
<br><br>
<div>

{{$post ->body}}
</div>
<hr>
<small> Written on {{$post ->created_at}} </small>
<hr>
<a href="/posts/{{$post ->id}}/edit" class="btn btn-default">Edit</a>

{!!Form::open(['action' => ['PostsController@destroy', $post ->id ],'method' => 'POST', 'class'=>'pull-right'])!!}
{{Form::hidden('_method', 'DELETE')}}
{{Form::submit('Delete',['class' =>'btn btn-danger'])}}
{!!Form::close()!!}

@endsection