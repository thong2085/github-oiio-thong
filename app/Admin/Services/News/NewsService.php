<?php

namespace App\Admin\Services\News;

use App\Admin\Services\News\NewsServiceInterface;
use App\Admin\Repositories\News\NewsRepositoryInterface;
use Illuminate\Http\Request;
use App\Admin\Traits\Setup;

class NewsService implements NewsServiceInterface
{
    use Setup;
    
    protected $data;

    protected $repository;

    public function __construct(NewsRepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    public function store(Request $request)
    {
        $this->data = $request->validated();
        return $this->repository->create($this->data);
    }

    public function update(Request $request)
    {
        $this->data = $request->validated();
        return $this->repository->update($this->data['id'], $this->data);
    }

    public function delete($id)
    {
        return $this->repository->delete($id);
    }
}
