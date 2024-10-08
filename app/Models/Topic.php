<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;
class Topic extends Model
{
    use HasFactory;
    protected $fillable = [
    'category_id', 'image', 'trending', 'published', 'content', 'title', 'views',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id' );
    }
}
