@extends('layouts.app')

@section('content')


<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Lawyer Details</h1>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>
<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
            <form id="editForm" action="{{route('customer.update')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <div class="card-header">
                    <h3 class="card-title">Details</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Name : </label> 
                                {{$finalLawyerDetails[0]->primary_details['name']}}
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>City : </label>
                                {{$finalLawyerDetails[0]->primary_details['city']}}
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Email : </label>
                                {{$finalLawyerDetails[0]->primary_details['email']}}
                            </div>
                        </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label>Average Rating : </label>
                                    {{$finalLawyerDetails[0]->avg_rating}}
                                </div>
                            </div>
                        <!-- /.col -->
                    </div>
                    <div class="row">
                            <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Mobile No : </label>
                                {{$finalLawyerDetails[0]->primary_details['mobile_no']}}
                            </div>
                        </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label>Year Of Experience : </label>
                                    {{$finalLawyerDetails[0]->primary_details['year_of_experience']}}
                                </div>
                            </div>
                        <!-- /.col -->
                    </div>
                    <div class="row">
                            <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Education : </label>
                                {{$finalLawyerDetails[0]->primary_details['education']}}
                            </div>
                        </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label>Profile Description : </label>
                                    {{$finalLawyerDetails[0]->primary_details['profile_description']}}
                                </div>
                            </div>
                        <!-- /.col -->
                    </div>
                    <div class="row">
                            <!-- /.col -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Court : </label>
                                {{implode(', ',$finalLawyerDetails[0]->court_info)}}
                            </div>
                        </div>
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label>Primary Practice : </label>
                                    {{implode(', ',$finalLawyerDetails[0]->primary_practice_Info)}}
                                </div>
                            </div>
                        <!-- /.col -->
                    </div>
                    <div class="row">
                        <!-- /.col -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Experise : </label>
                            {{implode(', ',$finalLawyerDetails[0]->expertise_info)}}
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                </div>
                <div class="card-body">
                    <input type="hidden" name="lawyer_id" value={{ Request::segment(3) }} />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Profile Pic : </label>
                                <img width="60px" src={{$finalLawyerDetails[0]->primary_details['profile_pic']}} />
                                <input type="file" name="lawyer_image" id="lawyer_image" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <a href="{{route('customer.lawyer-list')}}">
                        <button type="button" class="btn btn-default">Back</button>
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
    })
</script>
@endsection