<?php

namespace App\Repositories\User;
use App\Admin\Repositories\EloquentRepository;
use App\Repositories\User\UserRepositoryInterface;
use App\Models\User;

class UserRepository extends EloquentRepository implements UserRepositoryInterface
{
    protected $select = [];

    public function getModel(){
        return User::class;
    }
    public function getTopJob(int $limit = 5){
        $this->instance = $this->model->roleShop()
        ->withCount('jobCreateds')
        ->orderBy('job_createds_count', 'desc')
        ->limit($limit)
        ->get();
        return $this->instance;
    }

    public function countAll(){
        $this->instance = $this->model->selectRaw('roles, COUNT(*) as total')
            ->groupBy('roles')
            ->get();
        return $this->instance;
    }

    public function searchAllLimit($keySearch = '', $meta = [], $select = ['id', 'fullname', 'phone', 'roles','slug', 'status'], $limit = 10){
        $this->instance = $this->model->select($select);
        $this->getQueryBuilderFindByKey($keySearch);
        
        foreach($meta as $key => $value){
            $this->instance = $this->instance->where($key, $value);
        }
        return $this->instance->limit($limit)->get();
    }
    
    protected function getQueryBuilderFindByKey($key){
        $this->instance = $this->instance->where(function($query) use ($key){
            return $query->where('username', 'LIKE', '%'.$key.'%')
            ->orWhere('phone', 'LIKE', '%'.$key.'%')
            ->orWhere('email', 'LIKE', '%'.$key.'%')
            ->orWhere('fullname', 'LIKE', '%'.$key.'%');
        });
    }

    public function getQueryBuilderOrderBy($column = 'id', $sort = 'DESC'){
        $this->getQueryBuilder();
        $this->instance = $this->instance->orderBy($column, $sort);
        return $this->instance;
    }
}