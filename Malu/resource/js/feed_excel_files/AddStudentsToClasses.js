$(document).ready(function() {
	var sessionid = localStorage.getItem("usr_name");
	var usr_api_key = localStorage.getItem("usr_api_key");
    var baseURL = localStorage.getItem("baseURL");
	
	//excel to jason
	var excel_input = null;
	var excel_output = null;
	
	if(sessionid == null){
		swal({   title: "You are not logged in",   text: "Please log in to the System.",   timer: 3000,   showConfirmButton: false });
		setTimeout(function(){     window.location.href = "../../";   }, 3000);
	}

	
	//tool tips
	$( "#tool_tip_1" ).tooltip({
        content: "<h3>Thi is the explanation</h3><p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>",
        track:true
    });
	$( "#tool_tip_2" ).tooltip({
        content: "<h3>aaaa</h3><p>xgggxxxxxxxxxxxxxxx</p>",
        track:true
    });
	
	//loard Schools types in to dropdown
    $.ajax({
        type: "GET",
        url: baseURL + "students_class_managment/ClassService.php/classes",
        dataType: "json",
        beforeSend: function (xhr) {
            xhr.setRequestHeader('Authorization', usr_api_key);
        },
        success: function (resp) {
            for (i = 0; i < resp.classes.length; i++) {
                $("#exm_para2").append("<option value=\"" + resp.classes[i].clz_id + "\" >" + resp.classes[i].clz_grade+" - "+resp.classes[i].clz_class + "</option>");
            }
        },
        error: function (e) {
            sweetAlert("Oops...", "Something went wrong!" + e, "error");
        }
    });

	
	$("#studentBehaviorAddingForm").validate({
        rules: {
			ignore: ".ignore",
			//students validations
			exm_para1: {
                required: true,
                minlength: 4,
				maxlength: 4,
				number: true,
				range: [1970, 2050]
            }
			
        },
        messages: {
			//student validations
			exm_para1: {
                required: "Exam Year  is Required",
                minlength: "You entered less than four characters",
				maxlength: "You entered more than four characters",
				number: "This can only contain numbers",
				range: "This should be within the range 1970-2050"
            }
        },
		ignore: "input[type='file']",
		
        submitHandler: function (form) {
			
			//get form values
			var exm_para1 = $('#exm_para1').val();
			var exm_para2 = $('#exm_para2').val();

			var allRec = 0;
			var successRec = 0;
			var errRec = 0;
			
			var excelsheets;
			for(var key in excel_input) {
				if(excel_input.hasOwnProperty(key)) {
					excelsheets = excel_input[key];
					
					for(i=0;i<excelsheets.length;i++){
						allRec = allRec + 1;
						var inputsheet = excelsheets[i];
						
						
						var outputdata = {};

						outputdata.stu_adm =  inputsheet.Student_Admision_Number;
						outputdata.clz_id = exm_para2;
						outputdata.year = exm_para1;
						
						$.ajax({
							type: "POST",
							url: baseURL + "students_class_managment/StudentClassService.php/student_class_register_byADM",
							dataType: "json",
							data : outputdata,
							beforeSend: function (xhr) {
								xhr.setRequestHeader('Authorization', usr_api_key);
							},
							success: function (resp) {
								successRec = successRec + 1;
								console.log(resp);
							},
							error: function (e) {
								errRec = errRec + 1;
								console.log(e);
							}
						});
						
						
						


						
					}
				}
			}
			
			sweetAlert("Success", "Successfuly Added!", "success");
						
		}
	
			
			
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	



	
	//Excel file reader begin...	
	var X = XLSX;
	var XW = {
		/* worker message */
		msg: 'xlsx',
		/* worker scripts */
		rABS: './xlsxworker2.js',
		norABS: './xlsxworker1.js',
		noxfer: './xlsxworker.js'
	};

	var rABS = typeof FileReader !== "undefined" && typeof FileReader.prototype !== "undefined" && typeof FileReader.prototype.readAsBinaryString !== "undefined";


	var wtf_mode = false;

	function fixdata(data) {
		var o = "", l = 0, w = 10240;
		for(; l<data.byteLength/w; ++l) o+=String.fromCharCode.apply(null,new Uint8Array(data.slice(l*w,l*w+w)));
		o+=String.fromCharCode.apply(null, new Uint8Array(data.slice(l*w)));
		return o;
	}

	function ab2str(data) {
		var o = "", l = 0, w = 10240;
		for(; l<data.byteLength/w; ++l) o+=String.fromCharCode.apply(null,new Uint16Array(data.slice(l*w,l*w+w)));
		o+=String.fromCharCode.apply(null, new Uint16Array(data.slice(l*w)));
		return o;
	}

	function s2ab(s) {
		var b = new ArrayBuffer(s.length*2), v = new Uint16Array(b);
		for (var i=0; i != s.length; ++i) v[i] = s.charCodeAt(i);
		return [v, b];
	}

	function xw_noxfer(data, cb) {
		var worker = new Worker(XW.noxfer);
		worker.onmessage = function(e) {
			switch(e.data.t) {
				case 'ready': break;
				case 'e': console.error(e.data.d); break;
				case XW.msg: cb(JSON.parse(e.data.d)); break;
			}
		};
		var arr = rABS ? data : btoa(fixdata(data));
		worker.postMessage({d:arr,b:rABS});
	}

	function xw_xfer(data, cb) {
		var worker = new Worker(rABS ? XW.rABS : XW.norABS);
		worker.onmessage = function(e) {
			switch(e.data.t) {
				case 'ready': break;
				case 'e': console.error(e.data.d); break;
				default: xx=ab2str(e.data).replace(/\n/g,"\\n").replace(/\r/g,"\\r");  cb(JSON.parse(xx)); break;
			}
		};
		if(rABS) {
			var val = s2ab(data);
			worker.postMessage(val[1], [val[1]]);
		} else {
			worker.postMessage(data, [data]);
		}
	}

	function xw(data, cb) {
		transferable = true;
		if(transferable) xw_xfer(data, cb);
		else xw_noxfer(data, cb);
	}

	function get_radio_value( radioName ) {
		var radios = document.getElementsByName( radioName );
		for( var i = 0; i < radios.length; i++ ) {
			if( radios[i].checked || radios.length === 1 ) {
				return radios[i].value;
			}
		}
	}

	function to_json(workbook) {
		var result = {};
		workbook.SheetNames.forEach(function(sheetName) {
			var roa = X.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
			if(roa.length > 0){
				result[sheetName] = roa;
			}
		});
		return result;
	}

	var tarea = document.getElementById('b64data');
	function b64it() {
		if(typeof console !== 'undefined') console.log("onload", new Date());
		var wb = X.read(tarea.value, {type: 'base64',WTF:wtf_mode});
		process_wb(wb);
	}

	function process_wb(wb) {
		var excel = JSON.stringify(to_json(wb), 2, 2);
		excel_input = JSON.parse(excel);
		//console.log(JSON.parse(excel));
	}

	var drop = document.getElementById('drop');
	function handleDrop(e) {
		e.stopPropagation();
		e.preventDefault();
		rABS = true;
		use_worker = true;
		var files = e.dataTransfer.files;
		var f = files[0];
		{
			var reader = new FileReader();
			var name = f.name;
			reader.onload = function(e) {
				if(typeof console !== 'undefined') console.log("onload", new Date(), rABS, use_worker);
				var data = e.target.result;
				if(use_worker) {
					xw(data, process_wb);
				} else {
					var wb;
					if(rABS) {
						wb = X.read(data, {type: 'binary'});
					} else {
					var arr = fixdata(data);
						wb = X.read(btoa(arr), {type: 'base64'});
					}
					process_wb(wb);
				}
			};
			if(rABS) reader.readAsBinaryString(f);
			else reader.readAsArrayBuffer(f);
		}
	}

	function handleDragover(e) {
		e.stopPropagation();
		e.preventDefault();
		e.dataTransfer.dropEffect = 'copy';
	}

	if(drop.addEventListener) {
		drop.addEventListener('dragenter', handleDragover, false);
		drop.addEventListener('dragover', handleDragover, false);
		drop.addEventListener('drop', handleDrop, false);
	}


	var xlf = document.getElementById('result_xlf');
	function handleFile(e) {
		rABS = true;
		use_worker = true;
		var files = e.target.files;
		var f = files[0];
		{
			var reader = new FileReader();
			var name = f.name;
			reader.onload = function(e) {
				if(typeof console !== 'undefined') console.log("onload", new Date(), rABS, use_worker);
				var data = e.target.result;
				if(use_worker) {
					xw(data, process_wb);
				} else {
					var wb;
					if(rABS) {
						wb = X.read(data, {type: 'binary'});
					} else {
					var arr = fixdata(data);
						wb = X.read(btoa(arr), {type: 'base64'});
					}
					process_wb(wb);
				}
			};
			if(rABS) reader.readAsBinaryString(f);
			else reader.readAsArrayBuffer(f);
		}
	}

	if(xlf.addEventListener) xlf.addEventListener('change', handleFile, false);
	//Excel file reader end...	
	
	
	
	
});

function logout(){
			localStorage.setItem("usr_name", null);
			localStorage.setItem("usr_full_name", null);
			localStorage.setItem("usr_email", null);
			localStorage.setItem("usr_phone_number", null);
			localStorage.setItem("usr_api_key", null);
			localStorage.setItem("ucat_name", null);
			localStorage.setItem("ucat_description", null);
			localStorage.setItem("ou_recode_added_at", null);
			
			var UIbaseURL = localStorage.getItem("UIbaseURL");
			window.location.href = UIbaseURL;

}