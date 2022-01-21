<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Brand;
use App\Http\Requests\admin\InsertBrandRequest;

class BrandController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function brand(Request $request)
    {
        $brands = Brand::select('id','name')->get()->toArray();

        return view('/admin/brand/brand',compact('brands'));
    }
    public function delete_brand(Request $request)
    {
        Brand::findOrFail($request->id)->delete();
        return redirect()->back();
    }

    public function get_brand(Request $request)
    {
        return view('admin/brand/add_brand');
    }
    public function post_brand(InsertBrandRequest $request)
    {
        $brand = new Brand;
        $brand['name']=$request->brand_name;
        $brand->save();
        return redirect('admin/brand')->with('success','Insert thanh cong');
    }
}
