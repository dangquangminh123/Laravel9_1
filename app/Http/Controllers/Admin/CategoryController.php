<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryStoreRequest;
use App\Models\Category;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        // dd($categories);
        return view('admin.categories.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    //Request $request, 
    public function store(CategoryStoreRequest $request)
    {
        if (!$request->hasFile('image')) {
            // Nếu không thì in ra thông báo
            return "Mời chọn file cần upload";
        }
        // Nếu có thì thục hiện lưu trữ file vào public/images
        $image = $request->file('image');
        $filename = $image->getClientOriginalName();
        $fileHash = Str::random(10) . '.' .$image->getClientOriginalExtension();
    
        $filePath = $image->storeAs('public/categories', $fileHash);
        Category::create([
            'name' => $request->name,
            'description' => $request->description,
            'image' => $filePath
        ]);

        return to_route('admin.categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        return view('admin.categories.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required'
        ]);
        $image = $category->image;
        if($request->hasFile('image')) {
            if(Storage::get($image)){
                Storage::delete($category->image);
            }
            $image = $request->file('image');
            $filename = $image->getClientOriginalName();
            $fileHash = Str::random(10) . '.' .$image->getClientOriginalExtension();
            $filePath = $image->storeAs('public/categories', $fileHash);
        }

        $category->update([
            'name' => $request->name,
            'description' => $request->description,
            'image' => $filePath
        ]);
        return to_route('admin.categories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category) 
    {
        $Menus = Menu::where('category_id',$category->id)->get();
        foreach($Menus as $menu){
            Storage::delete($menu->image);
            Menu::where('id',$menu->id)->delete();
        }
        Storage::delete($category->image);
        Category::where('id',$category->id)->delete();
        return to_route('admin.categories.index');
    }

}
