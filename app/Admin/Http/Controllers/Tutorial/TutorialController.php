<?php

namespace App\Admin\Http\Controllers\Tutorial;

use App\Admin\Http\Controllers\Controller;
use App\Admin\Http\Requests\Tutorial\TutorialRequest;
use App\Admin\Repositories\Tutorial\TutorialRepositoryInterface;
use App\Admin\Services\Tutorial\TutorialServiceInterface;
use App\Admin\DataTables\Tutorial\TutorialDataTable;

class TutorialController extends Controller
{
    protected $repositoryAdmin;

    public function __construct(
        TutorialRepositoryInterface $repository,
        TutorialServiceInterface $service
    ){

        parent::__construct();

        $this->repository = $repository;

        $this->service = $service;

    }

    public function getView(){
        return [
            'index' => 'admin.tutorial.index',
            'create' => 'admin.tutorial.create',
            'edit' => 'admin.tutorial.edit'
        ];
    }

    public function index(TutorialDataTable $dataTable){
        return $dataTable->render($this->view['index']);
    }

    public function create() {
        return view($this->view['create']);
    }

    public function edit($id) {
        $instance = $this->repository->findOrFail($id);
        return view($this->view['edit'], [
            'tutorial' => $instance,
        ]);
    }

    public function store(TutorialRequest $request){
        $instance = $this->service->store($request);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }

    public function update(TutorialRequest $request){
        $this->service->update($request);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }

    public function delete($id){
        $this->service->delete($id);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }
}
