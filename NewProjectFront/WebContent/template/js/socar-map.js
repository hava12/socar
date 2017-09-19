$(function() {
    var places = new daum.maps.services.Places();

    function getAddr(ele, input, timeSet, timerId){
        var result = Array();
        var q = $.trim($('#' + input).val());
        $.ajax({
            type: 'GET',
            url: "{#API_SERVER_SSL#}user/askzone_zipcode",
            crossDomain: true,
            data: { search: q },
            dataType: 'jsonp',
            success: function(json){
                var retCode = json['retCode'];
                if(retCode){
                    for(var i in json['result']){
                        region = json['result'][i];
                        result.push({addr:region.addr, lat:'', lng:''});
                    }
                }
                places.keywordSearch(q,
                    function(status, poi) {
                        if (status === daum.maps.services.Status.OK) {
                            for(var i in poi.places){
                                place = poi.places[i];
                                result.push({title: place.title, addr:place.address, lat:place.latitude, lng:place.longitude});
                            }
                        }

                        if(result.length == 0){
                            $('#' + ele).hide();
                            $('#search_none_' + ele).show();
                            return false;
                        }

                        $('.ret').remove();
                        $('#' + ele).show();
                        $('#search_none_' + ele).hide();

                        for(var i in result){
                            if( result[i]['title'] == undefined ) {
                                poi_info = result[i]['addr'];
                            } else {
                                poi_info = result[i]['title'] + ' (' + result[i]['addr'] +')';
                            }
                            addr = result[i]['addr'];
                            title = result[i]['title'];
                            $('#' + ele + ' ul.result').append('<li class="ret"><a class="ask_addr" href="#" data-lat="' + result[i].lat + '" data-lng="' + result[i].lng + '" data-addr="'+addr+'" data-title="'+title+'">' + poi_info + '</a></li>');
                        }

                        $('.ask_addr').bind('click', function () {
                            if(timeSet == true){
                                clearInterval(timerId);
                            }

                            $('#' + ele).hide();
                            $('#search_none_' + ele).hide();
                            $('#' + input).val($(this).text());

                            $('#search_lat').val($(this).attr('data-lat'));
                            $('#search_lng').val($(this).attr('data-lng'));
                            return false;
                        });
                    }
                    , null);
            },
            error: function(){
//			alert('일시적인 오류입니다. 잠시 후 다시 시도해주세요.');
            }
        });
    }
});
