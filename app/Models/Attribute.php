<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Arr;

class Attribute extends Model
{
    protected $guarded = [''];

    public $type = [
        1 => [
            'name' => "Sách Giáo Khoa",
            'class' => 'label label-info'
        ],
        2 => [
            'name' => 'Sách Văn Học',
            'class' => 'label label-default' 
        ],
        3 => [
			'name' => 'Sách Kinh Tế',
			'class' => 'label label-info'
        ],
		4 => [
			'name' => 'Tâm Lý - KNS',
			'class' => 'label label-primary'
		],
		5 => [
			'name' => 'Thiếu Nhi',
			'class' => 'label label-danger'
		],
		6 => [
			'name' => 'Tiểu Sử - Hồi Ký',
			'class' => 'label label-info'
        ],
        7 => [
			'name' => 'Sách Ngoại Ngữ',
			'class' => 'label label-info'
        ],
        8 => [
			'name' => 'Nhà Xuất Bản',
			'class' => 'label label-info'
        ],
    ];

    public function getType()
    {
        return Arr::get($this->type, $this->atb_type,"[N\A]");
    }

    public static function getListType()
	{
		$that = new self();
		return $that->type;
	}

    public function category()
    {
        return $this->belongsTo(Category::class,'atb_category_id');
    }
}
