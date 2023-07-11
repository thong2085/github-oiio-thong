<?php

namespace App\Admin\Repositories\Privacy;
use App\Admin\Repositories\EloquentRepository;
use App\Admin\Repositories\Privacy\PrivacyRepositoryInterface;
use App\Models\Privacy;

class PrivacyRepository extends EloquentRepository implements PrivacyRepositoryInterface
{

    protected $select = [];

    public function getModel(){
        return Privacy::class;
    }
    public function searchAllLimit($keySearch = '', $meta = [], $select = ['id', 'title', 'avatar', 'created_at'], $limit = 10){
        $this->instance = $this->model->select($select);
        $this->getQueryBuilderFindByKey($keySearch);

        foreach($meta as $key => $value){
            $this->instance = $this->instance->where($key, $value);
        }
        return $this->instance->limit($limit)->get();
    }

    protected function getQueryBuilderFindByKey($key){
        $this->instance = $this->instance->where(function($query) use ($key){
            return $query;
        });
    }

    public function getQueryBuilderOrderBy($column = 'id', $sort = 'DESC'){
        $this->getQueryBuilder();
        $this->instance = $this->instance->orderBy($column, $sort);
        return $this->instance;
    }
}
