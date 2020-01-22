
@if($ourpage->image!=null)
<img src="/storage/{{ $ourpage->image }}" >


@else
<p>There is no image</p>
{{-- <p style="color:red;">{{ $ourpage->title}}</p> --}}
@endif
<p style="color:red;">{{ $ourpage->title}}</p>
{{-- @if($ourpage->slug=="license-certificate")
<p style="color:red;">{{ $ourpage->title}}</p>
@endif --}}