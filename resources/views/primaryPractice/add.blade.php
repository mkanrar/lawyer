@extends('layouts.app')

@section('content')


<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>add</h1>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
            <form id="addForm" action="{{route('primary_practice.doadd')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <div class="card-header">
                    <h3 class="card-title">Details</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" id="title" name="title">
                                <div id="title_error"></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" class="form-control" id="primary_image" name="primary_image">
                                <div id="primary_image_error"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Status: </label>
                                <input type="radio" value="1" name="status"> Active
                                <input type="radio" value="0" checked="checked" name="status"> Deactive
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <a href="{{route('primary_practice.list')}}">
                        <button type="button" class="btn btn-default float-right">Cancel</button>
                    </a>
                </div>
            </form>
        </div>
    </div><!-- /.container-fluid -->
</section>

<script>
    $(function () {
        $('#addForm').submit(function(){
            if($('#title').commonCheck({errorArea: '#title_error'}) & 
            $('#primary_image').commonCheck({errorArea: '#primary_image_error'})
            ){
                return true;
            }
            return false;
        })
    })
</script>
@endsection