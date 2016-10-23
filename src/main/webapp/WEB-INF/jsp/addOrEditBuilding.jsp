<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta charset="utf-8">
	<title>Edit Course | Kootour</title>

	<meta name="description" content="overview &amp; stats">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-dialog.min.css"/>
	<link rel="stylesheet" href="summernote/summernote.css"/>

	<!-- text fonts -->

	<!-- ace styles -->
	<link rel="stylesheet" href="css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style">



</head>

<body class="no-skin">
<div class="main-container container" id="main-container">

	<div class="main-content">
		<div class="main-content-inner">


			<div class="page-content">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="widget-box kootour-widget-color-main light-border">



							<div class="widget-body">
								<div class="widget-main">
									<div id="fuelux-wizard-container">
										<div>
											<ul class="steps">
												<li data-step="1" class="active">
													<span class="step">1</span>
													<span class="title">项目首页</span>
												</li>

												<li data-step="2">
													<span class="step">2</span>
													<span class="title">项目详情</span>
												</li>

												<li data-step="3">
													<span class="step">3</span>
													<span class="title">楼层计划</span>
												</li>

												<li data-step="4">
													<span class="step kootour-main-color">4</span>
													<span class="title kootour-main-color">预览</span>
												</li>
											</ul>
										</div>

										<hr>
										<form class="form-horizontal" id="course_form" method="post">

											<div class="step-content pos-rel">

												<div class="step-pane" data-step="1">
													<h4 class="lighter block kootour-main-color">1.名称</h4>
													<div class="form-validator"><div class="clearfix">
														<input id="name" type="text" name="name" class="form-control" name="name"/>
													</div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">2.坐标</h4>
													<div class="form-validator"><div class="clearfix">
														<input id="LAT" type="text" name="LAT" class="form-control" name="LAT"/>
													</div></div>
													<div class="form-validator"><div class="clearfix">
														<input id="LNG" type="text" name="LNG" class="form-control" name="LNG"/>
													</div></div>

													<hr>
													<h4 class="lighter block kootour-main-color">3.地址</h4>
													<div class="form-validator"><div class="clearfix">
														<input id="Address" type="text" name="Address" class="form-control" name="Address"/>
													</div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">4.简述</h4>
													<div class="form-validator"><div class="clearfix">
														<div id="editor1"></div>
													</div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">5.详细描述</h4>
													<div class="form-validator"><div class="clearfix">
														<div id="editor2"></div>
													</div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">6.CITY</h4>
													<div class="form-validator"><div class="clearfix">
														<select multiple="" class="chosen-select form-control" id="city" data-placeholder="Choose a city..." name="city">
															<option value="Vancouver">Vancouver</option>
															<option value="WestVancouver">West Vancouver</option>
															<option value="Richmond">Richmond</option>
															<option value="Surrey">Surrey</option>
															<option value="Delta">Delta</option>
															<option value="NewWestminster">New Westminster</option>
															<option value="Burnaby">Burnaby</option>
															<option value="NorthVancouver">North Vancouver</option>
															<option value="Coquitlam">Coquitlam</option>
															<option value="WhiteRock">White Rock</option>
															<option value="Langley">Langley</option>
															<option value="MapleRidge">Maple Ridge</option>
														</select>
													</div></div>
												</div>
												<div class="step-pane" data-step="2">
													<h4 class="lighter block kootour-main-color">7.楼层</h4>
													<div class="form-validator"><div class="clearfix"><input type="text" id="overview" name="overview" style="display:none"></div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">8.建商</h4>

													<div class="form-validator"><div class="clearfix"><input type="text" id="itinerary" name="itinerary" style="display:none"></div></div>
													<hr>
													<h4 class="lighter block kootour-main-color">9.公共交通</h4>

												</div>
												<div class="step-pane" data-step="3">
													<h4 class="lighter block kootour-main-color">10.楼层平面图</h4>
													<table id="extra-table" class="table table-striped table-bordered table-hover">
														<thead>
														<tr>
															<th>Level</th>
															<th>Interior Area</th>
															<th>Exterior Area</th>
															<th>Total Area</th>
														</tr>
														</thead>
														<tbody >
														<tr data-extra="true">
															<td><input class="form-control" type="text" placeholder="e.g. Snorking" name="level">k</td>
															<td><input class="form-control" type="text" placeholder="20" name="interiorArea">kk</td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="exteriorArea">kkk</td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="totalArea">kkkk</td>
														</tr>
														<tr data-extra="true">
															<td><input class="form-control" type="text" placeholder="e.g. Snorking" name="level"></td>
															<td><input class="form-control" type="text" placeholder="20" name="interiorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="exteriorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="totalArea"></td>
														</tr>
														<tr data-extra="true">
															<td><input class="form-control" type="text" placeholder="e.g. Snorking" name="level"></td>
															<td><input class="form-control" type="text" placeholder="20" name="interiorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="exteriorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="totalArea"></td>
														</tr>
														<tr data-extra="true">
															<td><input class="form-control" type="text" placeholder="e.g. Snorking" name="level"></td>
															<td><input class="form-control" type="text" placeholder="20" name="interiorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="exteriorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="totalArea"></td>
														</tr>
														<tr data-extra="true">
															<td><input class="form-control" type="text" placeholder="e.g. Snorking" name="level"></td>
															<td><input class="form-control" type="text" placeholder="20" name="interiorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="exteriorArea"></td>
															<td><input class="form-control" type="text" placeholder="2hrs" name="totalArea"></td>
														</tr>
														</tbody>
													</table>

												</div>
												<div class="step-pane" data-step="4">

												</div>


											</div>
										</form>
									</div>
									<hr>
									<div class="wizard-actions">
										<button class="btn btn-prev" disabled="disabled">
											<i class="ace-icon fa fa-arrow-left"></i>
											Prev
										</button>

										<button class="btn btn-success btn-next" data-last="Finish">
											Next
											<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
										</button>
									</div>
								</div><!-- /.widget-main -->
							</div><!-- /.widget-body -->
						</div><!-- /.widget-box -->
					</div><!-- /.col -->
				</div>
			</div><!-- /.page-content -->
		</div>
	</div><!-- /.main-content -->

</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="js/jquery-2.2.0.min.js"></script>

<!-- <![endif]-->

<script src="js/bootstrap.min.js"></script>

<!-- ace scripts -->
<script src="js/ace-elements.min.js"></script>
<script src="js/ace.min.js"></script>

<script src="summernote/summernote.min.js"></script>
<script src="js/fuelux.wizard.min.js"></script>
<script src="js/localhostCourseEdit.js"></script>

</body>
</html>
