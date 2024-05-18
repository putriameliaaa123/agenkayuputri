<?php

namespace App\Http\Controllers;

use App\Models\Kayu;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class KayuController extends Controller
{
    public function index()
    {
        $kayu=Kayu::all();
        return view('kayu.index',[
            "title"=>"Kayu",
            "data"=>$kayu
        ]);
    }


    public function create():View
    {
        return view('kayu.create')->with([
            "title"=>"Tambah Data Kayu",
        ]);
    }

    public function show():View
    {
        $kayu=Kayu::all();
        return view('kayu.show')->with([
            "title"=>"Tampil Data Kayu",
            "data"=>$kayu
        ]);
    }

    public function store(Request $request):RedirectResponse
    {
        $request->validate([
            "nama"=>"required",
            "harga"=>"required",
            "deskripsi"=>"required"
        ]);

        Kayu::create($request->all());
        return redirect()->route("kayu.index")->with('success','Data Kayu Berhasil Ditambahkan');
    
    }

    public function edit(Kayu $kayu):View
    {
        return view('kayu.edit',compact('kayu'))->with([
            "title"=>"Ubah Data Kayu",
        ]);
    }

    public function destroy($id):RedirectResponse
    {
        Kayu::where('id',$id)->delete();
        return redirect()->route('kayu.index')->with('deleted','Data Kayu Berhasil Dihapus');
    }
    //
}
