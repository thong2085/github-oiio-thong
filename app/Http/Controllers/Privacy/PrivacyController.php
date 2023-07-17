<?php

namespace App\Http\Controllers\Privacy;

use App\Http\Controllers\Controller;
use App\Repositories\Privacy\PrivacyRepositoryInterface;

class PrivacyController extends Controller
{
    public function __construct(
        PrivacyRepositoryInterface $repository,
    ) {
        parent::__construct();

        $this->repository = $repository;

    }

    public function getView()
    {
        return [
            'index' => 'privacy.user.pages.index',
            'detail' => 'privacy.user.pages.detail',
        ];
    }

    public function index()
    {
        return view($this->view['index'], [
            'privacy' => $this->repository->searchAllLimit(),
        ]);
    }

    public function detail($slug)
    {
        return view($this->view['detail'], [
            'privacy' => \App\Models\Privacy::where('slug', $slug)->first(),
        ]);
    }
}
