<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $table = 'categories';
    protected $fillable = [
        'category_name',
        'description',
    ];
    public function topics()
    {
        return $this->hasMany(Topic::class);
    }


    // public function latest_topics()
    // {
    //     return $this->hasMany(Topic::class)->latest()->take(3);
    // }
}
