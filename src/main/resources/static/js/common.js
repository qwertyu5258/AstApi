function ajaxGet(url, param, callback) {
    $.ajax({
        type: 'get',
        url: url,
        contentType:"application/json;charset=UTF-8",
        data: param,
        success: function(data, textStatus, xhr) {
            if(data.returnCode == '0000' || data.return_code == '200') {
                return callback(data);
            } else {
                alert('error get: ' + data.returnCode + " : " + data.returnMsg + ":" + url);
            }
        },
        error: function(data, status, error) {
            alert('ajax Error: ' + data + url);
            // console.log('ajax Error: ' + url);
        }
    });
}
function ajaxPost(url, param, callback) {
    $.ajax({
        type: 'post',
        url: url,
        // contentsType: "application/json",
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(param),
        // data: param,
        success: function(data, textStatus, xhr) {
            if(data.returnCode == '0000' || data.return_code == '200' || data.returnCode == '2001' || data.returnCode == '200' || data.return_code == '200') {
                return callback(data);
            } else {
                if(data.returnCode == undefined || data.return_code == undefined){
                    alert('API 응답없음');
                } else {
                    alert('error,  returnCode : ' + data.returnCode + " : " + data.returnMsg + " : " + url);
                }
            }
        },
        error: function(data, status, error) {
            // console.log('ajax Error: ' + url);
            alert('ajax Error ' + data + url);
        }
    });
}