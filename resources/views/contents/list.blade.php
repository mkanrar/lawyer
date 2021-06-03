@extends('layouts.app')
@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Content Story</h1>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <!-- /.card -->

                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Contents list</h3>
                        <div class="card-tools">
                            <a href="{{route('content.add')}}">
                            <button type="button"
                                class="btn btn-block btn-primary btn-sm">Add new</button>
                            </a>
                        </div> 
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th>Image</th>
                                    <th>Status</th>
                                    <th>Added Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($allContents AS $_Contents)
                                <tr>
                                    <td>{{$_Contents->title}}</td>
                                    <td>{{$_Contents->description}}</td>
                                    <td>
                                        <div class="image">
                                            <img src="{{url('/public/assets/uploades/contents/thumb/'.$_Contents->image)}}" alt="Image Not Found" class='img-circle elevation-2' width="50px">
                                            {{-- {{ HTML::image('/assets/uploades/contents/thumb/'.$_Contents->image, 'Image Not Found', array('class' => 'img-circle elevation-2', 'style'=> 'width:40px' )) }} --}}
                                           
                                        </div>
                                    </td>
                                    
                                    
                                    <td>
                                        @if($_Contents->status == 1)
                                        <span class="badge badge-success">Active</span>
                                        @else
                                        <span class="badge badge-secondary">Deactive</span>
                                        @endif
                                    </td>
                                    <td>{{$_Contents->created_at}}</td>
                                    <td>
                                        <a class="btn btn-block btn-outline-info btn-sm" href="{{url('content/edit/'.$_Contents->content_id)}}">
                                            <i class="fas fa-edit">
                                            </i>
                                            Edit
                                        </a>
                                        <a class="btn btn-block btn-outline-info btn-sm" href="{{url('content/delete/'.$_Contents->content_id)}}">
                                            <i class="fas fa-trash">
                                            </i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                @endForeach

                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>



<script>
    $(function () {
      $('#example1').DataTable({
        "paging": true,
        "lengthChange": true,
        "searching": true,
        "ordering": false,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
    });
</script>
@endsection