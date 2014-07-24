<?php

class GraffController extends BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
        return View::make('graffs');
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
        return View::make('graffs.create');
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
        return View::make('graffs.show');
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
        return View::make('graffs.edit');
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function devuelveCategoria($id)
	{
		return json_encode(Empresa::find($id)->categorias);
	}

	public function devuelvePivote($idEmpresa)
	{
		$arreglo = array();
	    $datos = Empresa::find($idEmpresa)->categorias;
	    $cont = 0;
	    foreach ($datos as $value) {
	        $arreglo[$cont] = $value->pivot->id;
	        $cont++;
	    }
	    return json_encode($arreglo);
	}

	public function devuelveMeses($idCliente)
	{
		try
		{
			$arreglo = array();
			$datos = Cliente::find($idCliente)->meses;
		    foreach ($datos as $value) {
		        $arreglo[] = $value->mes;
		    }
		    return $arreglo; 
		}
		catch(Exception $e)
		{
			return $e->getMessage();
		}
	}

	public function devuelveProductos($idCliente)
	{
		try
		{
     		$producto  = array();
			$valor     = array();
			$resultado = array();
			$arreglo   = array();
			$datos     = Cliente::find($idCliente)->productos;
			//Mes::find(7)->mes; 
			$numero = 0;
		    foreach ($datos as $value) 
		    {
		        //var_dump($arreglo[0]." - ".Mes::find($value->pivot->id_mes)->mes);
		        
		        
		        // if($resultado != null){
		        // 	//var_dump(Mes::find($value->pivot->id_mes)->mes);
		        // 	$numero = array_search('JUNIO'/*Mes::find($value->pivot->id_mes)->mes*/, $resultado[0]);
		        // 	var_dump($numero);
		        // }

		        

		        // if($numero == false)
		        // {
			        $arreglo[0][] = Mes::find($value->pivot->id_mes)->mes;
			        $arreglo[1][] = $value->pivot->numero_telefonico;
			        $arreglo[2][] = $value->pivot->monto;
			        //array_push($resultado, $arreglo);
			    // }
			    // else
			    // {
			    // 	$insertar = array();
			    // 	$insertar[0] = $value->pivot->numero_telefonico;
			    //     $insertar[1] = $value->pivot->monto;
			    // 	$idArreglo = array_search(Mes::find($value->pivot->id_mes)->mes, $resultado);

			    // 	array_push($resultado[$idArreglo], $insertar);
			    // }
			    ;


		    }
		    return $arreglo[0];
		}
		catch(Exception $e)
		{
			return $e->getMessage();
		}
	}

}
