@extends('layouts.app')

@section('content')


<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Customer add</h1>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
            <form id="addForm" action="{{route('customer.doadd')}}" method="POST">
                @csrf
                <div class="card-header">
                    <h3 class="card-title">Details</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>First name</label>
                                <input type="text" class="form-control" id="first_name" name="first_name">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" class="form-control" id="last_name" name="last_name">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>City</label>
                                <select class="form-control select2" style="width: 100%;" id="c_city" name="c_city">
                                    <option value="" selected>Select city</option>
                                    @foreach($allCitys AS $_city)
                                    <option value="{{$_city->id}}">{{$_city->city}}</option>
                                    @endForeach
                                </select>

                                <div id="c_city_error"></div>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" id="c_email" name="c_email">
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" id="c_password" name="c_password">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <a href="{{route('customer.list')}}">
                        <button type="button" class="btn btn-default float-right">Cancel</button>
                    </a>
                </div>
            </form>
        </div>
    </div><!-- /.container-fluid -->
</section>
<script src="{{ asset('assets/plugins/select2/js/select2.full.min.js') }}"></script>

<script>
    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2();

        $('#addForm').submit(function(){
            if($('#first_name').commonCheck() & 
            $('#last_name').commonCheck() & 
            $('#c_city').commonCheck({errorArea: '#c_city_error'}) 
            & $('#c_email').validateEmail()
            & $('#c_password').commonCheck()
            ){
                return true;
            }
            return false;
        })

  
    })
</script>
@endsection