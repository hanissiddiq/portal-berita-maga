<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\ArticleNews;
use App\Models\Author;
use App\Models\BannerAds;

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

        $featured_articles = ArticleNews::with('category')
            ->where('is_featured', 'featured')
            ->inRandomOrder()
            ->take(3)
            ->get();
        
        $authors = Author::all();

        $bannerads = BannerAds::where('is_active', 'active')
        ->where('type', 'banner')
            ->inRandomOrder()
            // ->take(1)
            // ->get();
            ->first();

        return view('front.index', compact('categories', 'articles','authors', 'featured_articles','bannerads'));
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
