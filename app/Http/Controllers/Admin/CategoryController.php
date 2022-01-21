<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Category;
use App\Http\Requests\admin\InsertCategoryRequest;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function category(Request $request)
    {
        $categories = Category::select('id','name')->get()->toArray();

        return view('/admin/category/category',compact('categories'));
    }
    public function delete_cat(Request $request)
    {
        Category::findOrFail($request->id)->delete();
        return redirect()->back();
    }

    public function get_cat(Request $request)
    {
        return view('admin/category/add_category');
    }
    public function post_cat(InsertCategoryRequest $request)
    {
        $category = new Category;
        $category['name']=$request->category_name;
        $category->save();
        return redirect('admin/category')->with('success','Insert thanh cong');
    }
}
