<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\ArticleNews;
use App\Models\Author;

class FrontController extends Controller
{
    //
    public function index()
    {
        $categories = Category::all();

        $articles = ArticleNews::with('category')
            ->where('is_featured', 'not_featured')
            ->latest()
            ->take(3)
            ->get();
        
        $authors = Author::all();

        return view('front.index', compact('categories', 'articles','authors'));
    }

    public function details()
    {
        return view('front.details');
    }

    public function category()
    {
        return view('front.category');
    }

    public function author()
    {
        return view('front.author');
    }
}
