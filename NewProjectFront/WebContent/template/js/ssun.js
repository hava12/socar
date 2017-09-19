function makeTimeFormat(time) {
    var yy = time.getFullYear();
    var mm = time.getMonth()+1;
    var dd = time.getDate();
    var h = time.getHours();
    var m = time.getMinutes();

    return    yy + '-' + mm.zeroPad(10) + '-' + dd.zeroPad(10) + 'T'
            + h.zeroPad(10) + ':' + m.zeroPad(10) + ':' + '00' + '+09:00';
}

function number_format(yourNumber) {
    var n= yourNumber.toString().split(".");
    n[0] = n[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return n.join(".");
}

//need jquery.cookie.js
function set_cookie(name, value) {
	$.cookie(name, value, {expires: 1, path: '/'});
}
function get_cookie(name) {
	return $.cookie(name);
}

function is_email(a){return /^([\w!.%+\-])+@([\w\-])+(?:\.[\w\-]+)+$/.test(a);}

//need jqeury
(function($) {
    $.extend({
        doGet: function(url, params) {
            document.location = url + '?' + $.param(params);
        },
        doPost: function(url, params) {
            var form = document.createElement('form');
            $(form).attr('action', url)
                   .attr('method', 'POST');
            $.each(params, function(name, value) {
                var form_input = document.createElement('input');
                $(form_input).attr('type', 'hidden')
                             .attr('name', name)
                             .attr('value', value)
                             .appendTo(form);
            });
            document.body.appendChild(form);
            form.submit();
            document.body.removeChild(form);
        }
    });
})(jQuery);