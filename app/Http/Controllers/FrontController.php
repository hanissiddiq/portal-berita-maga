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

        $entertainment_articles = ArticleNews::whereHas('category', function ($query) {
                $query->where('name', 'Entertainment');
            })
            ->where('is_featured', 'not_featured')
            ->latest()
            ->take(6)
            ->get();

        $entertainment_featured_articles = ArticleNews::whereHas('category', function ($query) {
                $query->where('name', 'Entertainment');
            })
            ->where('is_featured', 'featured')
            ->inRandomOrder()
            ->first();

        return view('front.index', compact('entertainment_articles', 'entertainment_featured_articles', 'categories', 'articles','authors', 'featured_articles','bannerads'));
    }

    public function details()
    {
        return view('front.details');
    }

    public function category(Category $category)
    {
        $categories = Category::all();

        $bannerads = BannerAds::where('is_active', 'active')
        ->where('type', 'banner')
            ->inRandomOrder()            
            ->first();

        return view('front.category', compact('category','categories','bannerads'));
    }

    public function author(Author $author)
    {
        $categories = Category::all();

        $bannerads = BannerAds::where('is_active', 'active')
        ->where('type', 'banner')
            ->inRandomOrder()            
            ->first();
        return view('front.author', compact('author','categories','bannerads'));
    }
}
