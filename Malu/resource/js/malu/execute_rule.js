$(document).ready(function () {
    var sessionid = localStorage.getItem("usr_name");
    if (sessionid == null) {
        swal({
            title: "You are not logged in",
            text: "Pleace loggin to the system.",
            timer: 3000,
            showConfirmButton: false
        });
        setTimeout(function () {
            window.location.href = "../../";
        }, 3000);
    }


    var baseURL = localStorage.getItem("baseURL");
    console.log('working');

    $('#datetimepicker6').datetimepicker();
    $('#datetimepicker7').datetimepicker({
        useCurrent: false //Important! See issue #1075
    });
    $("#datetimepicker6").on("dp.change", function (e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    $("#datetimepicker7").on("dp.change", function (e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });

    var obj = {};
    var x = "";
    $.ajax({
        type: "GET",
        url: baseURL + "rule",
        dataType: "json",
        success: function (resp) {
            var dropDown = "";
            var i = 0;
            for (i = 0; i < resp.length; i++) {
                var rulename = resp[i].rule_name;
                obj[i] = rulename;
            }
            var neObj = {
                id: "Rule",
                label: "Rule",
                type: "integer",
                input: "select",
                values:  obj,
                operators: ['equal', 'not_equal']
            };
            var filterArray = [];
            filterArray.push(neObj);
            $('#builder-basic').queryBuilder({
                plugins: ['bt-tooltip-errors'],

                filters: filterArray,
            });

            $('#runRule').submit(function() {
                var result = $('#builder-basic').queryBuilder('getRules');
                console.log(result);
            });
        },
        error: function (e) {
            sweetAlert("Oops...", "Something went wrong!" + e, "error");
        }
    });




});

function logout() {
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