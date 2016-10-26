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
    };


    $('#builder-basic').queryBuilder({
        plugins: [
            'sortable',
            'filter-description',
            'unique-filter',
            'bt-tooltip-errors',
            'bt-selectpicker',
            'bt-checkbox',
            'invert',
            'not-group'],

        filters: [{
            id: 'vsl_name',
            label: 'Vessel Name',
            type: 'string',
            operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
        },

            {
                id: 'vsl_owner',
                label: 'Vessel Owner',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'vsl_reg_port',
                label: 'Port of Registry',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'vsl_type_name',
                label: 'Vessel Category',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'vsl_max_rate_speed',
                label: 'Max rated speed of Vessel',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_min_rate_speed',
                label: 'Min rated speed of Vessel',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_cur_speed',
                label: 'Cruising speed of Vessel',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_boat_len',
                label: 'Vessel Length',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_boat_max_width',
                label: 'Vessel Max Width',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_boat_max_dep',
                label: 'Vessel Max Depth',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_boat_weight',
                label: 'Vessel Weight',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_eng_capacity',
                label: 'Engine Capacity',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_allow_fishing_state',
                label: 'Vessel Allowed Fishing Status',
                type: 'integer',
                input: 'radio',
                values: {
                    1: 'Allowed',
                    0: 'Not Allowed'
                },
                operators: ['equal']
            },

            {
                id: 'own_name',
                label: 'Owner Name',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'own_adress',
                label: 'Owner Address',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'own_phone',
                label: 'Owner Phone Number',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            {
                id: 'own_email',
                label: 'Owner E-mail',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            /* Auto transmiting data table Table */


            {
                id: 'vsl_has_vog_time',
                label: 'Voyaging Time',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_long',
                label: 'Voyage Long',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_lati',
                label: 'Voyage Latitude',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_wind_speed',
                label: 'Wind Speed',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_temp',
                label: 'Temperature',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },


            {
                id: 'vsl_has_vog_humidity',
                label: 'Humidity',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_pressure',
                label: 'Pressure',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_rain',
                label: 'Rain',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'vsl_has_vog_btry_status',
                label: 'Battery Status of Device',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },


            {
                id: 'vsl_has_vog_div_status',
                label: 'Power Status of Device',
                type: 'integer',
                input: 'radio',
                values: {
                    1: 'On',
                    0: 'Off'
                },
                operators: ['equal']
            },

            {
                id: 'fish_name',
                label: 'Fish Name',
                type: 'string',
                operators: ['equal', 'not_equal', 'contains', 'not_contains', 'is_null', 'is_not_null', 'begins_with', 'not_begins_with', 'ends_with', 'not_ends_with']
            },

            /* fishing  Table */


            {
                id: 'voge_fishing_fish_weight',
                label: 'Fish Quantity',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },


            {
                id: 'voge_fishing_fish_state',
                label: 'Fishing Status',
                type: 'integer',
                input: 'radio',
                values: {
                    1: 'Fishing',
                    0: 'Not Fishing'
                },
                operators: ['equal']
            },

            {
                id: 'voge_fishing_fish_isimergency',
                label: 'Restricted visibility status',
                type: 'integer',
                input: 'radio',
                values: {
                    1: 'Yes',
                    2: 'No'

                },
                operators: ['equal']
            },

            /* voyage */
            {
                id: 'voyage_dep_time',
                label: 'Voyage Departure Time',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            },

            {
                id: 'voyage_arv_time',
                label: 'Voyage Arrival Time',
                type: 'double',
                validation: {
                    min: 0,
                    step: 0.01
                },
                operators: ['equal', 'not_equal', 'less', 'less_or_equal', 'greater', 'greater_or_equal', 'between', 'not_between']
            }

        ]


    });


    var viewQuery = function () {
        console.log('aaaa');
        var logical_condition = $('#builder-basic').queryBuilder('getSQL');
        $('#genaratedQuery').html('<pre>'+logical_condition+'</pre>');
    };


    $('#registerRule').submit(function () {
        console.log('submit');
        var result = $('#builder-basic').queryBuilder('getRules');
        var logical_condition = $('#builder-basic').queryBuilder('getSQL');
        console.log(logical_condition);

        var rule_id = $('#rule_id').val();
        var rule_pri = $('#rule_pri').val();
        var rule_des = $('#rule_des').val();
        var rule_name = $('#rule_name').val();
        var rule_score = $('#rule_score').val();
        var view_name = $('#view_name').val();

        var data = {
            "rule_id": rule_id,
            "rule_pri": rule_pri,
            "rule_des": rule_des,
            "rule_name": rule_name,
            "rule_score": rule_score,
            "view_name": view_name,
            "logical_condition": logical_condition.sql
        };

        console.log(data);
        var baseURL = localStorage.getItem("baseURL");
        $.ajax({
            type: "POST",
            url: baseURL + "rule",
            dataType: "application/json",
            contentType: "application/json",
            data: JSON.stringify(data),
            success: function (resp) {
                console.log('aaaa');
                console.log(resp);
                swal("Success!", "Transaction is successfully done", "success" );
            },
            error: function (e) {
                swal("Success!", "Transaction is successfully done", "success" );
            }
        });
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