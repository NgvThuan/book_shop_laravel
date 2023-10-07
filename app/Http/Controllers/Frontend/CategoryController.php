<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use App\Models\Attribute;

class CategoryController extends FrontendController
{
    public function index(Request $request, $slug)
    {
        $arraySlug = explode('-', $slug);
        $id = array_pop($arraySlug);
        if ($id) {

            $category = Category::with('children', 'attribute')->find($id);

            $listCategoryId = [];
            if ($category->c_parent_id == 0) {
                $childrenCate = Category::where('c_parent_id', $category->id)->get();
                array_push($listCategoryId, $category->id);
                foreach ($childrenCate as $key => $cate) {
                    array_push($listCategoryId, $cate->id);
                }
            } else {
                $listCategoryId = [intval($id)];
            }

            $products = Product::where('pro_active', 1)->whereIn('pro_category_id', $listCategoryId);
            $paramAtbSearch =  $request->except('price', 'page', 'k', 'country', 'rv', 'sort');
            $paramAtbSearch =  array_values($paramAtbSearch);

            if (!empty($paramAtbSearch)) {
                $products->whereHas('attributes', function($query) use($paramAtbSearch){
                    $query->whereIn('pa_attribute_id', $paramAtbSearch);
                });
            }

            if ($request->price) {
                $price =  $request->price;
                if ($price == 6) {
                    $products->where('pro_price','>', 500000);
                }else{
                    $products->where('pro_price','<=', 50000 * $price);
                }
            }
            if ($request->country) $products->where('pro_country','like','%'.$request->country.'%');
            if ($request->k) $products->where('pro_name','like','%'.$request->k.'%');
            if ($request->rv) $products->where('pro_age_review','=',$request->rv);
            if ($request->sort) {
                if ($request->sort == 'desc' || $request->sort == 'asc') {
                    $products->orderBy('id',$request->sort);
                }
                if ($request->sort == 'min' || $request->sort == 'max') {
                    $request->sort == 'max' ? $sort = 'desc' : $sort = 'asc';
                    $products->orderBy('pro_price' ,$sort);
                }
            }

            $products = $products->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_price','pro_review_total','pro_review_star', 'pro_number')
                ->paginate(12);

            $producerId = Product::where('pro_active', 1)->whereIn('pro_category_id', $listCategoryId)->distinct()->pluck('pro_country');

            // Lấy thuộc tính
            $attributes =  Attribute::select('*')->get()->toArray();

            $viewData = [
                'attributes'    => $attributes,
                'products'      => $products,
                'category'      => $category,
                'title_page'    => $category->c_name,
                'query'         => $request->query(),
                'types'         => Attribute::getListType(),
                'link_search'   => request()->fullUrlWithQuery(['k' => \Request::get('k')])
            ];

            return view('frontend.pages.product.index', $viewData);
        }
    }
}
