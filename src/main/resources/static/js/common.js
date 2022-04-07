function ajax(type, url, param, callback) {
    $.ajax({
        type: type,
        url: url,
        // contentsType: "application/json",
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(param),
        // data: param,
        success: function(data, textStatus, xhr) {
            return callback(data);
        },
        error: function(xhr, status, error) {
            console.log('ajax Error: ' + url);
        }
    });
}