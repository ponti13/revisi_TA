<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Province extends Model
{
    protected $guarded = [];

    public function cities(): HasMany
    {
        return $this->hasMany(City::class);
    }

}