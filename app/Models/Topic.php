<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class Topic extends Model
{
    // use HasFactory;

    use HasFactory, softDeletes;
    protected $fillable = [
    'category_id', 'image', 'trending', 'published', 'content', 'title', 
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
