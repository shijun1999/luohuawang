$(document).ready(function() {
	$('[data-rel=tooltip]').tooltip();

	$('#fuelux-wizard-container')
	.ace_wizard({
	})
	.on('actionclicked.fu.wizard' , function(e, info){
		
		// $("#tourLocation ").get(0).selectedIndex = 0;  
		var flg = true;
		if(info.step == 1) {
			for (var n = 0; n < $("div[data-step='1']").find("[name]").length; n++ ) {
				var target = $("div[data-step='1']").find("[name]").get(n);
				if (!$(target).hasClass("ignore")) {
					if (!$(target).valid()) {
						flg = false;
					}
				}
			}
			return flg;
		}
		else if (info.step == 2) {
			$("#overview").val($('#editor1').summernote('code'));
			$("#itinerary").val($('#editor2').summernote('code'));
			for (var n = 0; n < $("div[data-step='2']").find("[name]").length; n++ ) {
				var target = $("div[data-step='2']").find("[name]").get(n);
				if (!$(target).hasClass("ignore")) {
					if (!$(target).valid()) {
						flg = false;
					}
				}
			}
			return flg;
		}
		else if (info.step == 3) {
			for (var n = 0; n < $("div[data-step='3']").find("[name]").length; n++ ) {
				var target = $("div[data-step='3']").find("[name]").get(n);
				if (!$(target).hasClass("ignore")) {
					if (!$(target).valid()) {
						flg = false;
					}
				}
			}
			return flg;
		}
		else if (info.step == 4) {
			for (var n = 0; n < $("div[data-step='4']").find("[name]").length; n++ ) {
				var target = $("div[data-step='4']").find("[name]").get(n);
				if (!$(target).hasClass("ignore")) {
					if (!$(target).valid()) {
						flg = false;
					}
				}
			}
			return flg;
		}
		else if (info.step == 5) {
		    $("#prevDuration").html($('input[name=duration]').val());
		
		var select1 = $("#durationunit-select");
		var sel=document.getElementById("durationunit-select");
		$("#prevDurationUnit").html(sel.options[sel.selectedIndex].innerHTML);
		
		$("#prevMinTouristNum").html($('input[name=minTouristNum]').val());
		$("#prevMaxTouristNum").html($('input[name=maxTouristNum]').val());
		// $("#prevTourLocation").html($('input[name=tourLocation]').val());
		$("#prevTourLocation").html($("#tourLocation").val());
		// $("#prevUseLangId").html( $("#provideLanguages").val().join(";"));
		// $("#prevFullName").html($('input[name=fullName]').val());
		$("#prevFullName").children().remove();
		var fullNameHtml = $('input[name=fullName]').val() + '&nbsp;<small>($<s:label id="prevRetailPrice"/> per person/group)</small>';
		$("#prevFullName").append(fullNameHtml);
		
		//var prevCommision = $("#commision0").val()
		//var prevV = ($("#retailprice0").val() * (1 - prevCommision/100)).toFixed(2);
		//$("#netprice0").html(prevV);
		$("#prevRetailPrice").html($("#retailprice0").val());
		
		var useLang = '';
		var prevI = 0 ;
		 $("#provideLanguages :selected").each(function(){
			 if ( prevI == 0 ) {
				 useLang = useLang + $(this).text();
				 prevI = prevI + 1 ;
			 } else {
				 useLang = useLang + '&' + $(this).text();
			 }
		 });
		 $("#prevUseLangId").html(useLang);
		
		 
		 $("#prevCourseContent").html($('#editor1').summernote('code'));
		 $("#prevAdditionalInfo").html($('#editor2').summernote('code'));
		 
		 // $("#prevTourLocation2").html($('input[name=tourLocation]').val());
		 $("#prevTourLocation2").html($("#tourLocation").val());
		 $("#prevDuration2").html($('input[name=duration]').val());
		 $("#prevDurationUnit2").html(sel.options[sel.selectedIndex].innerHTML);
		 $("#prevMeetupLocation").html($('input[name=meetupLocation]').val());
		 
		 $("#prevInclusions").children().remove();
		 $("#prevExclusions").children().remove();
		 for (var x in $("input[name=inclusions]")) {
			var v = $("input[name=inclusions]").eq(x).val();
			if (v != null && v != "") {
				var trHtml='<li>' + v + '</li>';
				$("#prevInclusions").append(trHtml);
			}
		 }
		 for (var x in $("input[name=exclusions]")) {
			var v = $("input[name=exclusions]").eq(x).val();
			if (v != null && v != "") {
				var trHtml='<li>' + v + '</li>';
				$("#prevExclusions").append(trHtml);
			}
		 }
		 
		 $("#prevCustomized").children().remove();
		 for (var i = 0; i < $("[name=extraNames]").size(); i++) {
			if ($("[name=extraNames]").eq(i).val() != "" && $("[name=extraPrices]").eq(i).val() != "" && $("[name=extraTimes]").eq(i).val() != "") {
				var extraOptionName = $("[name=extraNames]").eq(i).val();
				var extraPrice = $("[name=extraPrices]").eq(i).val();
				var extraTime = $("[name=extraTimes]").eq(i).val();
				var divHtml = '<div class="option-label"><label for="chb' + (i+1)  + '">' + extraOptionName
							 + '</div><div class="option-price"><span>$' + extraPrice
							 + '</span><span class="hours"><i>' + extraTime + ' Hr(s)</i></span></div>' ;
				
				$("#prevCustomized").append(divHtml);
				
			} else {
				continue;
			}
		 }
		 
		 
		 
		 $.ajax({
				url: 'localhostCourseCreateAjax/addCoursePicturesPrev',
				type: 'post',
				async: false,
				dataType: 'json',
				// data:{
				//	courseIdentiNo:getUrlParam('courseIdentiNo')
		        //},
				success: function(json) {
					var obj = JSON.parse(json);
					if (obj.result == 'success') {
						
						var picturePathList = obj.data;
						
						var prevHtml1 = '';
						var prevHtml2= '';
						
						var uploadPath ="../upload/images/";
						//var uploadPath ="./localImages/";
						if (picturePathList != null && picturePathList.length > 0) {
							// $("#prev-carousel-kootour").children().remove();
							// $("#prev-carousel-inner").children().remove();
							for (var n in picturePathList) {
								
								//　var prevHtml1= '' ;
								if (n == 0) {
									prevHtml1 = prevHtml1 +
										'<li data-target="#carousel-kootour" data-slide-to="' + n + '" class="active"></li>'; 
								} else {
									prevHtml1 = prevHtml1 +
										'<li data-target="#carousel-kootour" data-slide-to="' + n + '"></li>';
								}
								// $("#prev-carousel-kootour").append(prevHtml1);
								
								
								// var prevHtml2= '' ;
								if (n == 0) {
									prevHtml2 = prevHtml2 +
										'<div class="item active">'; 
								} else {
									prevHtml2 = prevHtml2 +
										'<div class="item">';
								}
								prevHtml2 = prevHtml2 + '<img width="100%" src="'+ uploadPath + picturePathList[n] +'" style="display: inline;">'+
										'</div>';
								// $("#prev-carousel-inner").append(prevHtml2);
							}
						}
						
						var htmm = 
					         '<!-- carousel -->' + 
					         '<div class="carousel slide" id="carousel-kootour" data-ride="carousel">' + 
					             '<!-- Indicators -->' + 
					             '<ol class="carousel-indicators" id="prev-carousel-kootour">' + 
					                 '<!-- <li data-target="#carousel-kootour" data-slide-to="0" class="active"></li>' + 
					                 '<li data-target="#carousel-kootour" data-slide-to="1"></li>' + 
					                 '<li data-target="#carousel-kootour" data-slide-to="2"></li> -->' + 
					                  
					                 prevHtml1 + '</ol>' + 
					                	 '<!-- Wrapper for slides -->' + 
					             '<div class="carousel-inner" id="prev-carousel-inner" role="listbox">' + 
					               	    
					             prevHtml2 + '</div>' + 
					         '</div>' + 
					         
					         '<!-- Controls -->' + 
					            '<a class="left carousel-control" role="button" href="#carousel-kootour" data-slide="prev">' + 
					                 '<span class="icon icon-prev" aria-hidden="true"></span>' + 
					                 '<span class="sr-only">Previous</span>' + 
					             '</a>' + 
					             '<a class="right carousel-control" role="button" href="#carousel-kootour" data-slide="next">' + 
					                 '<span class="icon icon-next" aria-hidden="true"></span>' + 
					                 '<span class="sr-only">Next</span>' + 
					             '</a>';
								 
						 $("#prev-carousel-kootour-section").children().remove();
						 $("#prev-carousel-kootour-section").append(htmm);

					} else {
						BootstrapDialog.show({
							title: 'Error',
						    message: obj.message,
						    buttons: [{
						   		label: 'Close',
						        action: function(dialog) {
						        	dialog.close();
						        }
						    }]
						});
					}
				},
				error: function(json) {
					var obj = JSON.parse(json);
					BootstrapDialog.show({
						title: 'Error',
					    message: obj.message,
					    buttons: [{
					   		label: 'Close',
					        action: function(dialog) {
					        	dialog.close();
					        }
					    }]
					});
				}
			});
		}

	})
	.on('finished.fu.wizard', function(e) {
		if ($(".progress-bar-success").size() == 0) {
			BootstrapDialog.show({
				title: 'Error',
			    message: "Please upload image first.",
			    buttons: [{
			   		label: 'Close',
			        action: function(dialog) {
			        	dialog.close();
			        	return false;
			        }
			    }]
			});
		} else {
			HoldOn.open({message:"Createing...",theme:"sk-dot"});
			var obj = new Object();
			obj.fullName = $("#fullName").val();
			obj.historical = $("#historical").get(0).checked;
			obj.adventure = $("#adventure").get(0).checked;
			obj.leisureSports = $("#leisureSports").get(0).checked;
			obj.cultureArts = $("#cultureArts").get(0).checked;
			obj.natureRural = $("#natureRural").get(0).checked;
			obj.festivalEvents = $("#festivalEvents").get(0).checked;
			obj.nightlifeParty = $("#nightlifeParty").get(0).checked;
			obj.foodDrink = $("#foodDrink").get(0).checked;
			obj.shoppingMarket = $("#shoppingMarket").get(0).checked;
			if ($("#provideLanguages").val() != null) {
				obj.useLangId = $("#provideLanguages").val().join(";");
			} else {
				obj.useLangId = "";
			}
			obj.courseContent = $('#editor1').summernote('code');
			obj.additionalInfo = $('#editor2').summernote('code');
			obj.duration = $("#duration").val();
			obj.durationUnit = $("#durationunit-select").val();
			obj.tourLocation = $("#tourLocation").val();
			obj.meetupLocation = $("#meetupLocation").val();
			var inArray = new Array();
			for (var x in $("input[name=inclusions]")) {
				var v = $("input[name=inclusions]").eq(x).val();
				if (v != null && v != "") inArray.push(v);
			}
			obj.inclusions = inArray;
			var exArray = new Array();
			for (var x in $("input[name=exclusions]")) {
				var v = $("input[name=exclusions]").eq(x).val();
				if (v != null && v != "") exArray.push(v);
			}
			obj.exclusions = exArray;
			obj.minTouristNum = $("#minTouristNum").val();
			obj.maxTouristNum = $("#maxTouristNum").val();
			obj.personOrGroup = $('input[type="radio"][name="personOrGroup"]:checked').val();
			obj.minHourAdvance = $("#minHourAdvance").val();




			obj.courseScheduleName = $("#courseScheduleName").val();
			obj.bgnDate = $("#bgnDate").val();
			obj.endDate = $("#endDate").val();
			var workDayArray = new Array();
			if ($('input[type="checkbox"][name="workDay"]:checked').size() > 0) {
				for (var x = 0; x < $('input[type="checkbox"][name="workDay"]:checked').size(); x++) {
					var v = $('input[type="checkbox"][name="workDay"]:checked').eq(x).val();
					workDayArray.push(v);
				}
			}
			obj.workDay = workDayArray.join(";");

			var extraArray = new Array();
			for (var i = 0; i < $("[name=extraNames]").size(); i++) {
				if ($("[name=extraNames]").eq(i).val() != "" && $("[name=extraPrices]").eq(i).val() != ""
					&& $("[name=extraTimes]").eq(i).val() != "") {
					var extraObj = new Object();
					extraObj.extraOptionName = $("[name=extraNames]").eq(i).val();
					extraObj.extraPrice = $("[name=extraPrices]").eq(i).val();
					extraObj.extraTime = $("[name=extraTimes]").eq(i).val();
					extraArray.push(extraObj);
				} else {
					continue;
				}

			}
			obj.extra = extraArray;

			if (($("#discountTourists").val() != "" && $("#discountValue").val() != "") ||
					($("#discountTourists").val() != "" && $("#discountPercent").val() != "")) {
				obj.largeGroupLimit = $("#discountTourists").val();
				obj.largeDiscountValue = $("#discountValue").val();
				obj.largeDiscountPercent = $("#discountPercent").val();
			}

			obj.startHour = $("#earliestStartHour0").val();
			obj.latestStartHour = $("#lastestStartHour0").val();
			obj.retailPrice = $("#retailprice0").val();
			obj.price = $("#netprice0").html();
			obj.commision = $("#commision0").val();

//			var schedulesArray = new Array();
//			for (var z = 0; z < $("#schedulelist").children().size(); z ++) {
//				var schedulesObj = new Object();
//				var scheduleDom = $("#schedulelist").children().eq(z);
//				schedulesObj.courseScheduleName = $(scheduleDom).find("[name=courseScheduleNameItem]").data("courseschedulename");
//				schedulesObj.bgnDate = $(scheduleDom).find("[name=bgnDate]").data("bgndate");
//				schedulesObj.endDate = $(scheduleDom).find("[name=endDate]").data("enddate");
//				schedulesObj.workDay = $(scheduleDom).find("[name=workDayItem]").data("workday");
	//
//				var extraArray = new Array();
//				for (var i = 0; i < $(scheduleDom).find("[name=extraOptionName]").size(); i++) {
//					var extraObj = new Object();
//					extraObj.extraOptionName = $(scheduleDom).find("[name=extraOptionName]").eq(i).data("extraoptionname");
//					extraObj.extraPrice = $(scheduleDom).find("[name=extraPrice]").eq(i).data("extraprice");
//					extraObj.extraTime = $(scheduleDom).find("[name=extraTime]").eq(i).data("extratime");
//					extraArray.push(extraObj);
//				}
//				schedulesObj.extra = extraArray;
	//
//				if ($(scheduleDom).find("[name=largeGroupLimit]").size() > 0 && ($(scheduleDom).find("[name=largeDiscountValue]").size() >0 || $(scheduleDom).find("[name=largeDiscountPercent]").size() > 0)) {
//					schedulesObj.largeGroupLimit = $(scheduleDom).find("[name=largeGroupLimit]").data("largegrouplimit");
//					schedulesObj.largeDiscountValue = $(scheduleDom).find("[name=largeDiscountValue]").data("largediscountvalue");
//					schedulesObj.largeGroupPercent = $(scheduleDom).find("[name=largeDiscountPercent]").data("largediscountpercent");
//				}
	//
//				var timeArray = new Array();
//				for (var i = 0; i < $(scheduleDom).find("[name=startHour]").size(); i++) {
//					var timeObj = new Object();
//					timeObj.startHour = $(scheduleDom).find("[name=startHour]").eq(i).data("starthour");
//					timeObj.latestStartHour = $(scheduleDom).find("[name=latestStartHour]").eq(i).data("lateststarthour");
//					timeObj.retailPrice = $(scheduleDom).find("[name=retailPrice]").eq(i).data("retailprice");
//					timeObj.price = $(scheduleDom).find("[name=price]").eq(i).data("price");
//					timeObj.commision = $(scheduleDom).find("[name=commision]").eq(i).data("commision");
//					timeArray.push(timeObj);
//				}
//				schedulesObj.time = timeArray;
//				schedulesArray.push(schedulesObj);
//			}
//			obj.schedules = schedulesArray;

			$.ajax({
				url: 'localhostCourseCreateAjax/createCourse',
				type: 'post',
				dataType: 'json',
				data: {"jsonFromWeb": JSON.stringify(obj)},
				success: function(json) {
					var obj = JSON.parse(json);
					if (obj.result == 'success') {
						HoldOn.close();
						window.location.href="localhostCourseList!load";
					} else {
						BootstrapDialog.show({
							title: 'Error',
						    message: obj.message,
						    buttons: [{
						   		label: 'Close',
						        action: function(dialog) {
						        	dialog.close();
						        }
						    }]
						});
					}
				},
				error: function(json) {
					var obj = JSON.parse(json);
					BootstrapDialog.show({
						title: 'Error',
					    message: obj.message,
					    buttons: [{
					   		label: 'Close',
					        action: function(dialog) {
					        	dialog.close();
					        }
					    }]
					});
				}
			});
		}

	}).on('stepclick.fu.wizard', function(e){
	//e.preventDefault();//this will prevent clicking and selecting steps
	});
//	$(".chosen-select").on('change', function(){
//		$(this).closest('.form-validator').validate().element($(this));
//	});

	jQuery.validator.addMethod("maxmincheck", function(value, element, params) {
		var destVal = $(params).val();
		return this.optional(element) || parseInt(destVal) <= parseInt(value);
	}, "Maximum People must be greater than min minimum people.");


	$('#course_form').validate({
		errorElement: 'div',
		ignore: ".ignore",
		errorClass: 'help-block',
		focusInvalid: true,
		rules: {
			fullName: {
				required: true
			},
			tourType: {
				required: true,
				maxlength:3
			},
			useLangId: {
				required: true
			},
			overview: {
				required: true
			},
			itinerary: {
				required: true
			},
			duration: {
				required: true,
				digits: true
			},
			tourLocation: {
				required: true
			},
			meetupLocation: {
				required: true
			},
			minTouristNum: {
				required: true,
				digits: true
			},
			maxTouristNum: {
				required: true,
				digits: true,
				maxmincheck: "#minTouristNum"
			},
			personOrGroup: {
				required: true
			},
			minHourAdvance: {
				required: true,
				digits: true
			},
			courseScheduleName: {
				required: true
			},
			daterange: {
				required: true
			},
			workDay: {
				required: true
			},
			earliestStartHours: {
				required: true,
			},
			retailPrices: {
				required: true,
				digits: true
			},
			extraPrices: {
				number: true
			},
			extraTimes: {
				digits: true
			},
			discountTourists: {
				digits: true
			},
			discountValue: {
				digits: true
			},
			discountPercent: {
				digits: true
			},
		},

		messages: {
		},

		highlight: function (e) {
			$(e).closest('.form-validator').removeClass('has-info').addClass('has-error');
		},

		success: function (e) {
			$(e).closest('.form-validator').removeClass('has-error');//.addClass('has-info');
			$(e).remove();
		},

		errorPlacement: function (error, element) {
			if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
				var controls = element.closest('div[class*="control-"]');
				if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
				else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
			}

			else if(element.is('.select2')) {
				error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
			}
			else if(element.is('.chosen-select')) {
				error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
			}
			else if (element.is("input[name=extraTimes]") || element.is("input[name=extraPrices]") ) {
				error.insertAfter(element);
			}
			else error.insertAfter(element.parent());
		},

		submitHandler: function (form) {
			form.submit();
		},

		invalidHandler: function (form) {
			BootstrapDialog.show({
				title: 'Error',
			    message: 'You missed some fields. They have been highlighted below.',
			    buttons: [{
			   		label: 'Close',
			        action: function(dialog) {
			        	dialog.close();
			        }
			    }]
			});
		}
	});

	$('#modal-wizard-container').ace_wizard();
	$('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');

	if(!ace.vars['touch']) {

//        $("#alltype").click(function() {
//        	 $('input[data="tourtype"]').prop("checked",this.checked);
//         });
//         var $subBox = $("input[data='tourtype']");
//         $subBox.click(function(){
//             $("#alltype").prop("checked",$subBox.length == $("input[data='tourtype']:checked").length ? true : false);
//         });


		$('.chosen-select').chosen({allow_single_deselect:true});
		//resize the chosen on window resize

		$(window)
		.off('resize.chosen')
		.on('resize.chosen', function() {
			$('.chosen-select').each(function() {
				 var $this = $(this);
				 $this.next().css({'width': $this.parent().width()});
			})
		}).trigger('resize.chosen');
		//resize chosen on sidebar collapse/expand
		$(document).on('settings.ace.chosen', function(e, event_name, event_val) {
			if(event_name != 'sidebar_collapsed') return;
			$('.chosen-select').each(function() {
				 var $this = $(this);
				 $this.next().css({'width': $this.parent().width()});
			})
		});


		$('#chosen-multiple-style .btn').on('click', function(e){
			var target = $(this).find('input[type=radio]');
			var which = parseInt(target.val());
			if(which == 2) $('#provideLanguages').addClass('tag-input-style');
			 else $('#provideLanguages').removeClass('tag-input-style');
		});
	}

		$('#editor1').summernote({
			 height: 200,
			  toolbar: [
			            ['style', ['bold', 'italic', 'underline', 'clear']],
			            ['font', ['strikethrough', 'superscript', 'subscript']],
			            ['fontsize', ['fontsize']],
			            ['para', ['ul', 'ol', 'paragraph']],
			            ['height', ['height']]
			          ]
		});

		$('#editor2').summernote({
			 height: 200,
			  toolbar: [
			            ['style', ['bold', 'italic', 'underline', 'clear']],
			            ['font', ['strikethrough', 'superscript', 'subscript']],
			            ['fontsize', ['fontsize']],
			            ['para', ['ul', 'ol', 'paragraph']],
			            ['height', ['height']]
			          ]
		});

		//or change it into a date range picker
	    $('#daterange').daterangepicker({
	        locale: {
	            format: 'YYYYMMDD'
	        },
	        minDate: new Date(),
	        "showDropdowns": true,
	        "autoApply": true,
	        startDate: moment().format('YYYYMMDD'),
	        endDate: moment().add(1, 'd').format('YYYYMMDD')
	    });
    	$('#bgnDate').val(moment().format('YYYYMMDD'));
    	$('#endDate').val(moment().add(1, 'd').format('YYYYMMDD'));
	    $('#daterange').on('apply.daterangepicker', function(ev, picker) {
	    	$('#bgnDate').val(picker.startDate.format('YYYYMMDD'));
	    	$('#endDate').val(picker.endDate.format('YYYYMMDD'));
	    });

		$('input[name=date-range-picker]').daterangepicker({
			'applyClass' : 'btn-sm btn-success',
			'cancelClass' : 'btn-sm btn-default',
			locale: {
				applyLabel: 'Apply',
				cancelLabel: 'Cancel',
			}
		})
		.prev().on(ace.click_event, function(){
			$(this).next().focus();
		});

		$('#pairtimepicker0 .time').timepicker({'show2400' : true, 'timeFormat' : "H:i", 'showDuration': true});
		$('#pairtimepicker0').datepair();

		$("#add_in").click(function(){
			var tableSize = $("#inclusions-table tr").size();
			for (var i = 0; i <= 4; i++) {
				var trHtml='<tr><td><input type="text" name="inclusions" class="form-control" ></td></tr>';
				$("#inclusions-table tr:last").after(trHtml);
			}
		});

		$("#add_ex").click(function(){
			var tableSize = $("#exclusions-table tr").size();
			for (var i = 0; i <= 4; i++) {
				var trHtml='<tr><td><input type="text" name="exclusions" class="form-control" ></td></tr>';
				$("#exclusions-table tr:last").after(trHtml);
			}
		});

		$('input:radio[name="personOrGroup"]').change(function(){
			if ($(this).is(':checked') && $(this).val() == 'G') {
				$("#discount").hide();
			} else {
				$("#discount").show();
			}
		});

//		$("#add_extra").click(function(){
//			var tableSize = $("#extra-table tr").size();
//			var trHtml='<tr data-extra="true"><td><input class="form-control ignore" type="text" placeholder="e.g. Snorking" name="extraNames"></td><td><input class="form-control ignore" type="text" placeholder="20" name="extraPrices"></td><td><input class="form-control ignore" type="text" placeholder="2hrs" name="extraTimes"></td></tr>';
//			$("#extra-table tr:last").after(trHtml);
//		});

//		$("#add_start_time").click(function(){
//			var divSize = $(".start_time_child").size();
//			if (divSize == 1) {
//				var divHtml = '<div id="start_time2" class="col-xs-4 start_time_child">' +
//				'<div class="form-validator"><div class="clearfix">'+
//				'<div class="input-group" id="pairtimepicker1">'+
//				'<span class="input-group-addon">'+
//				'<i class="fa fa-clock-o"></i>'+
//				'</span>'+
//				'<input id="earliestStartHour1" class="time start" type="text" name="earliestStartHours"> to'+
//				'<input id="lastestStartHour1" class="time end" type="text" name="lastestStartHours">'+
//				'</div>'+
//				'</div></div>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Suggested Retail Price:</h5>'+
//				'<div class="form-validator"><div class="clearfix">'+
//				'<input type="number" id="retailprice1" name="retailPrices">'+
//				'</div></div>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Commision pay to Kootour:</h5>'+
//				'<select id="commision1" name="commisions">'+
//				'<option value="8">8</option>'+
//				'<option value="9">9</option>'+
//				'<option value="10">10</option>'+
//				'<option value="11">11</option>'+
//				'<option value="12" selected="selected">12</option>'+
//				'<option value="13">13</option>'+
//				'<option value="14">14</option>'+
//				'<option value="15" >15</option>'+
//				'<option value="16">16</option>'+
//				'<option value="17">17</option>'+
//				'<option value="18">18</option>'+
//				'<option value="19">19</option>'+
//				'<option value="20">20</option>'+
//				'<option value="21">21</option>'+
//				'<option value="22">22</option>'+
//				'<option value="23">23</option>'+
//				'<option value="24">24</option>'+
//				'<option value="25">25</option>'+
//				'</select>'+
//				'<label>%(Percentage)</label>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Net Price:</h5>'+
//				'<h5 class="block netprices" id="netprice1" >0</h5>'+
//				'<button id="delete_start_time2" type="button" class="btn btn-white kootour-btn-main"><i class="fa fa-minus-circle" aria-hidden="true"></i>&nbsp;Delete this time</button>' +
//				'</div>';
//				$(".start_time_more:last").append(divHtml);
//				$('#pairtimepicker1 .time').timepicker({'show2400' : true, 'timeFormat' : "H:i", 'showDuration': true});
//				$('#pairtimepicker1').datepair();
//				$("#retailprice1").on('input', function(){
//					var commision = $("#commision1").val()
//					var v = ($(this).val() / (1 + commision/100)).toFixed(2);
//					$("#netprice1").html(v);
//				});
//				$("#commision1").on('change', function(){
//					var commision = $(this).val()
//					var v = ($("#retailprice1").val() / (1 + commision/100)).toFixed(2);
//					$("#netprice1").html(v);
//				});
//				$("#delete_start_time2").on('click', function() {
//					$("#start_time2").remove();
//				});
//			} else if (divSize == 2) {
//				$("#add_start_time").attr("disabled", true);
//				var divHtml = '<div id="start_time3" class="col-xs-4 start_time_child">' +
//				'<div class="form-validator"><div class="clearfix">'+
//				'<div class="input-group" id="pairtimepicker2">'+
//				'<span class="input-group-addon">'+
//				'<i class="fa fa-clock-o"></i>'+
//				'</span>'+
//				'<input id="earliestStartHour2" class="time start" type="text" name="earliestStartHours"> to'+
//				'<input id="lastestStartHour2" class="time end" type="text" name="lastestStartHours">'+
//				'</div>'+
//				'</div></div>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Suggested Retail Price:</h5>'+
//				'<div class="form-validator"><div class="clearfix">'+
//				'<input type="number" id="retailprice2" name="retailPrices">'+
//				'</div></div>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Commision pay to Kootour:</h5>'+
//				'<select id="commision2" name="commisions">'+
//				'<option value="8">8</option>'+
//				'<option value="9">9</option>'+
//				'<option value="10">10</option>'+
//				'<option value="11">11</option>'+
//				'<option value="12" selected="selected">12</option>'+
//				'<option value="13">13</option>'+
//				'<option value="14">14</option>'+
//				'<option value="15" >15</option>'+
//				'<option value="16">16</option>'+
//				'<option value="17">17</option>'+
//				'<option value="18">18</option>'+
//				'<option value="19">19</option>'+
//				'<option value="20">20</option>'+
//				'<option value="21">21</option>'+
//				'<option value="22">22</option>'+
//				'<option value="23">23</option>'+
//				'<option value="24">24</option>'+
//				'<option value="25">25</option>'+
//				'</select>'+
//				'<label>%(Percentage)</label>'+
//				'<div class="space-8"></div>'+
//				'<h5 class="block">Net Price:</h5>'+
//				'<h5 class="block netprices" id="netprice2">0</h5>'+
//				'<button id="delete_start_time3" type="button" class="btn btn-white kootour-btn-main"><i class="fa fa-minus-circle" aria-hidden="true"></i>&nbsp;Delete this time</button>' +
//				'</div>';
//				$(".start_time_more:last").append(divHtml);
//				$('#pairtimepicker2 .time').timepicker({'show2400' : true, 'timeFormat' : "H:i", 'showDuration': true});
//				$('#pairtimepicker2').datepair();
//				$("#retailprice2").on('input', function(){
//					var commision = $("#commision2").val()
//					var v = ($(this).val() / (1 + commision/100)).toFixed(2);
//					$("#netprice2").html(v);
//				});
//				$("#commision2").on('change', function(){
//					var commision = $(this).val()
//					var v = ($("#retailprice2").val() / (1 + commision/100)).toFixed(2);
//					$("#netprice2").html(v);
//				});
//				$("#delete_start_time3").on('click', function() {
//					$("#start_time3").remove();
//				});
//			}
//		});

		$("#retailprice0").on('input', function(){
			var commision = $("#commision0").val()
			var v = ($("#retailprice0").val() * (1 - commision/100)).toFixed(2);
			$("#netprice0").html(v);
		});

		$("#commision0").on('change', function(){
			var commision = $(this).val()
			var v = ($("#retailprice0").val() * (1 - commision/100)).toFixed(2);
			$("#netprice0").html(v);
		});

		$("#discountValue").on('input', function(){
			$("#discountPercent").val('');
		});

		$("#discountPercent").on('input', function(){
			$("#discountValue").val('');
		});

	    $("#input-dim-1").fileinput({
	    	language: 'en', //设置语言
	    	showCaption: false,//是否显示标题
	    	browseClass: "btn btn-primary", //按钮样式
	    	maxFileCount: 5,
	        uploadUrl: "localhostCourseUpload/uploadImage",
	        allowedFileExtensions: ["jpg", "png", "jpeg"],
	        maxFileSize: 5000,
	    });

//	    var panelListSize = 0;
//	    $("#addscheduleoption").click(function(){
//	    	var flg = true;
//	    	var f1 = $("[name='courseScheduleName']").valid();
//	    	var f2 = $("[name='daterange']").valid();
//	    	var f3 = $("[name='workDay']").valid();
//
//	    	var f4 = true;
//	    	for (var x = 0; x < $(".start_time_child").size(); x++) {
//	    		var f5 = $("[name='earliestStartHours']").eq(x).valid();
//	    		var f7 = $("[name='retailPrices']").eq(x).valid();
//	    		if (f4) {
//	    			f4 = f5&&f7;
//	    		}
//	    	}
//
//	    	if (f1&&f2&&f3&&f4) {
//	    		flg = true;
//	    	} else {
//	    		flg = false;
//	    	}
//
//			if (flg) {
//				panelListSize ++;
//		    	var scheduleName = $("#courseScheduleName").val();
//		    	var bgnDate = $("#bgnDate").val();
//		    	var endDate = $("#endDate").val();
//				var workDayArray = new Array();
//				if ($('input[type="checkbox"][name="workDay"]:checked').size() > 0) {
//					for (var x = 0; x < $('input[type="checkbox"][name="workDay"]:checked').size(); x++) {
//						var v = $('input[type="checkbox"][name="workDay"]:checked').eq(x).val();
//						workDayArray.push(v);
//					}
//				}
//				var workDay = workDayArray.join(";");
//
//				var extraNames = new Array();
//				for (var x = 0; x < $("input[name=extraNames]").size(); x++) {
//					var v = $("input[name=extraNames]").eq(x).val();
//					extraNames.push(v);
//				}
//
//				var extraPrices = new Array();
//				for (var x = 0; x < $("input[name=extraPrices]").size(); x++) {
//					var v = $("input[name=extraPrices]").eq(x).val();
//					extraPrices.push(v);
//				}
//
//				var extraTimes = new Array();
//				for (var x = 0; x < $("input[name=extraTimes]").size(); x++) {
//					var v = $("input[name=extraTimes]").eq(x).val();
//					extraTimes.push(v);
//				}
//
//				var discountTourists = $("#discountTourists").val();
//				var discountValue = $("#discountValue").val();
//				var discountPercent = $("#discountPercent").val();
//
//				var earliestStartHours = new Array();
//				for (var x = 0; x < $("input[name=earliestStartHours]").size(); x++) {
//					var v = $("input[name=earliestStartHours]").eq(x).val();
//					if (v != null && v != "") earliestStartHours.push(v);
//				}
//
//				var lastestStartHours = new Array();
//				for (var x = 0; x < $("input[name=lastestStartHours]").size(); x++) {
//					var v = $("input[name=lastestStartHours]").eq(x).val();
//					lastestStartHours.push(v);
//				}
//
//				var retailPrices = new Array();
//				for (var x = 0; x < $("input[name=retailPrices]").size(); x++) {
//					var v = $("input[name=retailPrices]").eq(x).val();
//					retailPrices.push(v);
//				}
//
//				var commisions = new Array();
//				for (var x = 0; x < $("select[name=commisions]").size(); x++) {
//					var v = $("select[name=commisions]").eq(x).val();
//					commisions.push(v);
//				}
//
//				var netprices = new Array();
//				for (var x = 0; x < $(".netprices").size(); x++) {
//					var v = $(".netprices").eq(x).html();
//					netprices.push(v);
//				}
//
//		    	var html= '' +
//		    	'<!-- list start -->'+
//		    	'<div class="widget-box widget-color-blue collapsed"  data="schedule">'+
//		    	'<div class="widget-header widget-header-small">'+
//		    	'<h6 class="widget-title">'+
//		    	'&nbsp;Schedule Option #'+ panelListSize +
//		    	'</h6>'+
//		    	'<div class="widget-toolbar">'+
//		    	'<a href="#" data-action="collapse">'+
//		    	'<i class="ace-icon fa fa-plus" data-icon-show="fa-plus" data-icon-hide="fa-minus"></i>'+
//		    	'</a>'+
//		    	'<a href="#" data-action="close">'+
//		    	'<i class="ace-icon fa fa-trash-o"></i>'+
//		    	'</a>'+
//		    	'</div>'+
//		    	'</div>'+
//		    	'<div class="widget-body" style="display: none;">'+
//		    	'<div class="widget-main">'+
//		    	'<!-- nelist start -->'+
//		    	'<div class="nestable nestable-'+ panelListSize +'">'+
//		    	'<ol class="dd-list">'+
//		    	'<li name="courseScheduleNameItem" class="dd-item" data-courseScheduleName="'+ scheduleName +'">'+
//		    	'<div class="dd-handle">'+
//		    	'<span>Schedule Name:</span>'+
//		    	'<span class="lighter grey">'+
//		    	'&nbsp; '+ scheduleName +
//		    	'</span>'+
//		    	'</div>'+
//		    	'</li>'+
//		    	'<li name="bgnDate" class="dd-item" data-bgnDate="'+ bgnDate +'">'+
//		    	'<div class="dd-handle">'+
//		    	'<span>Begin Date:</span>'+
//		    	'<span class="lighter grey">'+
//		    	'&nbsp; '+ bgnDate +
//		    	'</span>'+
//		    	'</div>'+
//		    	'</li>'+
//		    	'<li name="endDate" class="dd-item" data-endDate="'+ endDate +'">'+
//		    	'<div class="dd-handle">'+
//		    	'<span>End Date:</span>'+
//		    	'<span class="lighter grey">'+
//		    	'&nbsp; '+ endDate +
//		    	'</span>'+
//		    	'</div>'+
//		    	'</li>'+
//		    	'<li name="workDayItem" class="dd-item" data-workDay="'+ workDay +'">'+
//		    	'<div class="dd-handle">'+
//		    	'<span>Available Tour Days:</span>'+
//		    	'<span class="lighter grey">'+
//		    	'&nbsp; '+ workDay +
//		    	'</span>'+
//		    	'</div>'+
//		    	'</li>' +
//		    	'<li class="dd-item">'+
//		    	'<div class="dd-handle">Extra values of this schedule:</div>';
//		    	if ($("#extra-table").find('tr[data-extra="true"]').size() > 0) {
//			    	for (var x = 1; x <= $("#extra-table").find('tr[data-extra="true"]').size(); x++ ) {
//
//			    		var extraName = extraNames[x - 1];
//			    		var extraPrice = extraPrices[x - 1];
//			    		var extraTime = extraTimes[x - 1];
//			    		if (extraName == "" || extraPrice == "" || extraTime == "") {
//			    			continue;
//			    		}
//
//			    		html = html +
//				    	'<ol class="dd-list">'+
//				    	'<li class="dd-item" data-id="extravalues'+ x +'">'+
//				    	'<div class="dd-handle">'+
//				    	'Extra value of this schedule #'+ x +':'+
//				    	'</div>'+
//				    	'<ol class="dd-list">'+
//				    	'<li class="dd-item">'+
//				    	'<div name="extraOptionName" class="dd-handle" data-extraOptionName='+ extraName +'>'+
//				    	'<span>Extra Tour Option Name #'+ x +':</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ extraName +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>'+
//				    	''+
//				    	'<li name="extraPrice" class="dd-item" data-extraPrice='+ extraPrice +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Price #'+ x +':</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ extraPrice +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>'+
//				    	''+
//				    	'<li name="extraTime" class="dd-item" data-extraTime='+ extraTime +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Extra Time #'+ x +':</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ extraTime +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>'+
//				    	'</ol>'+
//				    	'</li>'+
//				    	'</ol>';
//			    	}
//		    	}
//		    	if (discountTourists != "") {
//		    		if (discountValue != "") {
//		    			html = html +
//				    	'<li style="display:none;" class="dd-item" data-discountFlg="1">'+
//				    	'<div class="dd-handle">'+
//				    	'</div>'+
//				    	'</li>'+
//				    	'<li name="largeGroupLimit" class="dd-item" data-largeGroupLimit='+ discountTourists +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Discount for limit tourists:</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ discountTourists +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>'+
//				    	'<li name="largeDiscountValue" class="dd-item" data-largeDiscountValue='+ discountValue +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Discount Value:</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ discountValue +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>';
//		    		} else if (discountPercent != "") {
//		    			html = html +
//				    	'<li style="display:none;" class="dd-item" data-discountFlg="2">'+
//				    	'<div class="dd-handle">'+
//				    	'</div>'+
//				    	'</li>'+
//				    	'<li name="largeGroupLimit" class="dd-item" data-largeGroupLimit='+ discountTourists +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Discount for limit tourists:</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ discountTourists +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>'+
//				    	'<li name="largeDiscountPercent" class="dd-item" data-largeDiscountPercent='+ discountPercent +'>'+
//				    	'<div class="dd-handle">'+
//				    	'<span>Discount Percent:</span>'+
//				    	'<span class="lighter grey">'+
//				    	'&nbsp; '+ discountPercent + '%' +
//				    	'</span>'+
//				    	'</div>'+
//				    	'</li>';
//		    		}
//		    	}
//
//	    		html = html +
//		    	'<li class="dd-item" data-id="times">'+
//		    	'<div class="dd-handle">Times:</div>';
//		    	for (var x = 1; x <= $(".start_time_child").size(); x++) {
//		    		var earliestStartHour = earliestStartHours[x - 1];
//		    		var lastestStartHour = lastestStartHours[x - 1];
//		    		var retailPrice = retailPrices[x - 1];
//		    		var commision = commisions[x - 1];
//		    		var netprice = netprices[x - 1];
//		    		html = html +
//			    	'<ol class="dd-list">'+
//			    	'<li class="dd-item" data-id="time'+ x +'">'+
//			    	'<div class="dd-handle">'+
//			    	'Time #'+ x +':'+
//			    	'</div>'+
//			    	'<ol class="dd-list">'+
//			    	'<li name="startHour" class="dd-item" data-startHour='+ earliestStartHour +'>'+
//			    	'<div class="dd-handle">'+
//			    	'<span>Earliest Start Time #'+ x +':</span>'+
//			    	'<span class="lighter grey">'+
//			    	'&nbsp; '+ earliestStartHour +
//			    	'</span>'+
//			    	'</div>'+
//			    	'</li>'+
//			    	'<li name="latestStartHour" class="dd-item" data-latestStartHour='+ lastestStartHour +'>'+
//			    	'<div class="dd-handle">'+
//			    	'<span>Lastest Start Time #'+ x +':</span>'+
//			    	'<span class="lighter grey">'+
//			    	'&nbsp; '+ lastestStartHour +
//			    	'</span>'+
//			    	'</div>'+
//			    	'</li>'+
//			    	'<li name="retailPrice" class="dd-item" data-retailPrice='+ retailPrice +'>'+
//			    	'<div class="dd-handle">'+
//			    	'<span>Suggested Retail Price #'+ x +':</span>'+
//			    	'<span class="lighter grey">'+
//			    	'&nbsp; '+ retailPrice +
//			    	'</span>'+
//			    	'</div>'+
//			    	'</li>'+
//			    	'<li name="commision" class="dd-item" data-commision='+ commision +'>'+
//			    	'<div class="dd-handle">'+
//			    	'<span>Commision pay to Kootour #'+ x +':</span>'+
//			    	'<span class="lighter grey">'+
//			    	'&nbsp; '+ commision +
//			    	'</span>'+
//			    	'</div>'+
//			    	'</li>'+
//			    	'<li name="price"  class="dd-item" data-price='+ netprice +'>'+
//			    	'<div class="dd-handle">'+
//			    	'<span>Net Price #'+ x +':</span>'+
//			    	'<span class="lighter grey">'+
//			    	'&nbsp; '+ netprice +
//			    	'</span>'+
//			    	'</div>'+
//			    	'</li>'+
//			    	'</ol>'+
//			    	'</li>'+
//			    	'</ol>';
//		    	}
//		    	html = html +
//		    	'</li>'+
//		    	'</ol>'+
//		    	'</div>'+
//		    	'<!-- nelist end -->'+
//		    	'</div>'+
//		    	'</div>'+
//		    	'</div>'+
//		    	'<!-- list end -->';
//		    	$("#schedulelist").append(html);
//		    	$('.nestable-' + panelListSize).nestable();
//			} else {
//				return false;
//			}
//	    });
});


