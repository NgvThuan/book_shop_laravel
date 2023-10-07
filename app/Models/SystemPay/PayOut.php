<?php

namespace App\Models\SystemPay;

use Illuminate\Database\Eloquent\Model;

class PayOut extends Model
{
    protected $guarded = [''];
    protected $table = 'pay_outs';

    const STATUS_SUCCESS = 1;
}
