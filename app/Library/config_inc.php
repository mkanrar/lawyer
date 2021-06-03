<?php

namespace App\Library {

    use Illuminate\Http\Request;
    use DB;

    class Config_inc {
        function isUsersExist($id) {
            if ($id != '') {
                $fetchUser = DB::table('users')->select('id')->where('id', $id)->where('status', '1')->count();
                if ($fetchUser > 0) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
    }
}
?>