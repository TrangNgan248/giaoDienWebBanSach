<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Product;

use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index( $categoryId){
        $danhmucsaches = Category::where('DMS_parentId', 0)->get();
        $saches = Product::where('S_DanhmucId', $categoryId)->paginate(12);
        return view('product.category.list', compact('danhmucsaches', 'saches'));
    }
}
