function ajaxGet(url, param, callback) {
    $.ajax({
        type: 'get',
        url: url,
        contentType:"application/json;charset=UTF-8",
        data: param,
        success: function(data, textStatus, xhr) {
            if(data.returnCode == '0000') {
                return callback(data);
            } else {
                alert('error : ' + data.returnCode + " : " + data.returnMsg);
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
            if(data.returnCode == '0000') {
                return callback(data);
            } else {
                alert('error : ' + data.returnCode + " : " + data.returnMsg);
            }
        },
        error: function(data, status, error) {
            // console.log('ajax Error: ' + url);
            alert('ajax Error ' + data + url);
        }
    });
}