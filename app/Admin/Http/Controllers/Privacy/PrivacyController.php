<?php

namespace App\Admin\Http\Controllers\Privacy;

use App\Admin\Http\Controllers\Controller;
use App\Admin\Http\Requests\Privacy\PrivacyRequest;
use App\Admin\Repositories\Privacy\PrivacyRepositoryInterface;
use App\Admin\Services\Privacy\PrivacyServiceInterface;
use App\Admin\DataTables\Privacy\PrivacyDataTable;

class PrivacyController extends Controller
{
    protected $repositoryAdmin;

    public function __construct(
        PrivacyRepositoryInterface $repository,
        PrivacyServiceInterface $service
    ){

        parent::__construct();

        $this->repository = $repository;

        $this->service = $service;

    }

    public function getView(){
        return [
            'index' => 'admin.privacy.index',
            'create' => 'admin.privacy.create',
            'edit' => 'admin.privacy.edit'
        ];
    }

    public function index(PrivacyDataTable $dataTable){
        return $dataTable->render($this->view['index']);
    }

    public function create() {
        return view($this->view['create']);
    }

    public function edit($id) {
        $instance = $this->repository->findOrFail($id);
        return view($this->view['edit'], [
            'privacy' => $instance,
        ]);
    }

    public function store(PrivacyRequest $request){
        $instance = $this->service->store($request);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }

    public function update(PrivacyRequest $request){
        $this->service->update($request);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }

    public function delete($id){
        $this->service->delete($id);
        return redirect()->route($this->view['index'])->with('success', __('notifySuccess'));
    }
}
