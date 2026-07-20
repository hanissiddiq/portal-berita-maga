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

    public function details(ArticleNews $articleNews)
    {
        $categories = Category::all();

        $article = ArticleNews::with('category')
            ->where('is_featured', 'not_featured')
            ->where('id', '!=', $articleNews->id) // Exclude the current article
            ->latest()
            ->take(3)
            ->get(); 

        $bannerads = BannerAds::where('is_active', 'active')
        ->where('type', 'banner')
            ->inRandomOrder()            
            ->first();

        $squareads = BannerAds::where('is_active', 'active')
        ->where('type', 'square')
            ->inRandomOrder()            
            ->take(2)
            ->get();  
            
        if($squareads->count() < 2) {
            $squareads1 = $squareads->first();
            $squareads2 = null;
        } else {
            $squareads1 = $squareads->get(0);
            $squareads2 = $squareads->get(1);
        }

        $author_news = ArticleNews::where('author_id', $articleNews->author_id)
            ->where('id', '!=', $articleNews->id) // Exclude the current article
            ->inRandomOrder()
            ->get();

        return view('front.details', compact('articleNews','article','categories','bannerads', 'squareads','squareads1', 'squareads2', 'author_news'));
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

    public function search(Request $request)
    {
        $request->validate([
            'keyword' => 'required|string|max:255',
        ]);

        $categories = Category::all();

        $keyword = $request->keyword;

        $articles = ArticleNews::with(['category', 'author'])
            ->where('name', 'like', '%' . $keyword . '%')->paginate(6);

        return view('front.search', compact('articles', 'categories', 'keyword'));
            
    }
}
