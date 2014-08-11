@extends('layouts.basic')

@section('content')
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<h4>Title</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, mollitia incidunt ipsa unde alias assumenda laboriosam delectus qui eos iure.</p>
				<div id="chartdiv" style="min-height: 500px;"></div>
			</div>
		</div>
	</div>
</div>
@stop


@section('aside')
@parent
@stop


@section('script')
<script type="text/javascript">
	var id = {{ Session::has('ses_user_id') ? Session::get('ses_user_id') : '111-1' }};
	$.loadChart('chartdiv', '/getSerialChartEnt/'+id, 'stackbar', '', 'POST');
</script>

@stop

@section('style')
<style type="text/css" media="screen">
</style>
@stop