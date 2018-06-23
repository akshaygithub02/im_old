<!DOCTYPE html>
<?php
  include('config.php');
  include('checksession.php');
  $fy=$_SESSION['fy'];
  $company=$_SESSION['cname'];
?>

<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Tables - Ace Admin</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

	
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

	
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/jquery-confirm.css" />	
		<script src="assets/js/ace-extra.min.js"></script>
		<script src="assets/js/jquery.min.js"></script>

	</head>

	<body class="no-skin">
		<?php include('navbar.php') ?>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<?php include('menubar.php') ?>

			<div class="main-content">
				<div class="main-content-inner">
					

					<div class="page-content">
						
								<div class="row">
									<div class="col-xs-12">

										<h3 class="header smaller lighter blue">Condition</h3>
										<h5 class="header blue lighter bigger" align="center">
												<b>Company:&nbsp; <?php echo $company ?>  &nbsp;
												Financial Year:&nbsp; <?php echo $fy ?> </b>
								
											</h5>
										
										<div class="clearfix">
											<div class="pull-right tableTools-container">
												<div class="btn btn-white btn-primary btn-bold">
													<a class="blue" href="#" data-toggle="tooltip" title="Add" id="myBtn" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
														<i class="ace-icon fa fa-plus-circle bigger-120 green"></i>
													</a>
												</div>

												<div class="btn btn-white btn-primary btn-bold">
												
													<a class="blue" href="" data-toggle="tooltip" title="Delete">
														<i class="ace-icon fa fa-trash-o bigger-120 red"></i>
													</a>
												</div>
											</div>
										</div>
										<script>
											$(document).ready(function(){
											    $('[data-toggle="tooltip"]').tooltip();   
											    document.getElementById("master").className = "active open";
											    document.getElementById("condition").className = "active";
											    $("#myBtn").click(function(){
											         	$('#myModal').modal('show');
											   		 });
											});
											</script>
										<div class="table-header">
											Results for "Condition"
										</div>
										
										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label class="pos-rel">
																<input type="checkbox" name="checkboxAll" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
														<th>Sr No</th>
														<th>Condition</th>
														<th>Action</th>
													</tr>
												</thead>

												<tbody>
													<?php
									            		$query=mysqli_query($conn,"select * from m_condition");
															$count=0;
															while($row=mysqli_fetch_array($query))
															{
																$count++;
																$id=$row['id'];
																$condition_text=$row['condition_text'];
																
															?>
													<tr>
														<td class="center">
															<label class="pos-rel">
																<input type="checkbox"  class="ace" name="checkbox[]" value="<?php echo $id; ?>" />
																<span class="lbl"></span>
															</label>
														</td>

														<td><?php echo $count;?></td>

														<td class="editableColumns" id="<?php echo $id;?>">
															<?php echo $condition_text;?>
														</td>
														
														<td>
															<div class="hidden-sm hidden-xs action-buttons">
																

																<button class="green" style="background-color: Transparent; border: none;outline:none;" data-toggle="tooltip" title="Edit">
																	<i class="ace-icon fa fa-pencil bigger-130"></i>
																</button>

																<a class="red" data-toggle="tooltip" title="Delete" href="deletecondition.php?id=<?php echo $id;?>">
																	<i class="ace-icon fa fa-trash-o bigger-130"></i>
																</a>
																
															</div>

															
														</td>
													</tr>
													<?php
													}
												?>
													</tbody>
												</table>
											</div>

										</div><!-- /.modal-content -->
									</div>
								
							

							</div>
						</div>
					</div>

					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					    <div class="modal-dialog">
					        <div class="modal-content">
					            <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                 <h4 class="modal-title" id="myModalLabel">Add New Condition Details</h4>

					            </div>
					            <div class="modal-body">
					            	<label class="col-sm-1 control-label no-padding-left" style="width: 175px;"> Condition <span style="color:red">*</span> </label>
					            	<input type="text" id="ConditionNew" class="form-control" style="width: 230px;height: 32px;" />
					            </div>
					            <div class="modal-footer">
					                <button type="button" id="AddCondition" class="btn btn-primary">Add</button>
					            </div>
					        </div>
					    </div>
					</div>

				<script type="text/javascript">
						$('.green').click(function () {
						  	$(this).parents('tr').find('td.editableColumns').each(function() {		
						    var $this = $(this);
						    var $id = this.id;
						    var $input = $('<input>', {
						        value: $this.text().replace(/\s/g, ""),
						        type: 'text',
						        blur: function() {
						           $this.text(this.value);
						           $valueN=this.value;
						           if($valueN!="")
						           {
						           		window.location="editcondition.php?id="+$id+"&"+"txtvalue="+$valueN;
						           }
						           else
						          	{
										$.confirm({
										    title: 'Message!',
										    content: 'Field Should not be Empty!',
										    buttons: {
										        OK: function () {
										            location.reload();
										        },
										       
										    }
										});

						    		} 	
						           
						        }
						   
						   	}).appendTo($this.empty()).focus();
						    });

						});

						$('#AddCondition').click(function () {

							var condition=document.getElementById('ConditionNew').value;
							if(condition!="")
							{
								window.location="addcondition.php?condition="+condition;
							}
							else
				          	{
								$.confirm({
								    title: 'Message!',
								    content: 'Field Should not be Empty!',
								    buttons: {
								        OK: function () {
								            $('#myModal').modal('show');
								        },
								       
								    }
								});

				    		} 
						});

					</script>
					
					

			 

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/buttons.flash.min.js"></script>
		<script src="assets/js/buttons.html5.min.js"></script>
		<script src="assets/js/buttons.print.min.js"></script>
		<script src="assets/js/buttons.colVis.min.js"></script>
		<script src="assets/js/dataTables.select.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script src="assets/js/jquery-confirm.js"></script>
		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
			
			
			})
		</script>
	</body>
</html>
