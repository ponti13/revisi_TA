<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class City extends Model
{
    protected $guarded = [];

    public function province(): BelongsTo
    {
        return $this->belongsTo(Province::class);
    }
}