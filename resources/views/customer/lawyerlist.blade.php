@extends('layouts.app')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>All Lawyers</h1>
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
                        <h3 class="card-title">Lawyers list</h3>
                        {{-- <div class="card-tools">
                            <a href="{{route('customer.add')}}" <button type="button"
                                class="btn btn-block btn-primary btn-sm">Add new</button>
                            </a>
                        </div> --}}
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Email</th>
                                    <th>City</th>
                                    <th>Status</th>
                                    <th>Added Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($allCustomers AS $_contomer)
                                <tr>
                                    <td>{{$_contomer->name}}</td>
                                    <td>
                                        <div class="image">
                                            @if($_contomer && $_contomer->image !=="")
                                            <img style="width: 40px;" src={{url("/public/assets/uploades/profile/thumb/".$_contomer->image)}}
                                                class="img-circle elevation-2" alt="User Image">
                                            @else
                                            <img style="width: 40px;" src={{url("/public/assets/uploades/profile/thumb/default.png")}}
                                                class="img-circle elevation-2" alt="User Image">
                                            @endif
                                        </div>
                                    </td>
                                    <td>{{$_contomer->email}}</td>
                                    <td>
                                       
                                        @if($_contomer->city)
                                            {{ $_contomer->city }}
                                        @endif
                                    </td>
                                    <td><span class="badge badge-success">Active</span></td>
                                    <td>{{$_contomer->created_at}}</td>
                                    <td>
                                        <a class="btn btn-block btn-outline-info btn-sm" href="{{url('customer/editlawyer/'.$_contomer->id)}}">
                                            <i class="fas fa-binoculars">
                                            </i>
                                            Lawyer Details
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