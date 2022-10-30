<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryMenu extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table="category_menu";

    public function category(){
        return $this->belongsTo(Category::class,'category_id','id');
    }

    public function menus(){
        return $this->belongsTo(Menu::class,'menu_id','id');
    }
}
