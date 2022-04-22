
function categoryInit(){
    $.ajax({
        type: 'get',
        url: "/dp/cm/category",
        contentType:"application/json;charset=UTF-8",
        //data: param,
        success: function(data, textStatus, xhr) {
            let obj = data.contents;
            console.log("LargeCategory Data ::", obj)
            $("#LargeCategory").empty();
            let categoryHTML = "";
            categoryHTML += "<option value=''>대분류</option>"
            for(let i=0; i < obj.length; i++){
                categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
            }
            $("#LargeCategory").append(categoryHTML);

            $("#MiddleCategory").empty();
            $("#MiddleCategory").append("<option value=''>중분류</option>");

            $("#SmallCategory").empty();
            $("#SmallCategory").append("<option value=''>소분류</option>");
        },
        error: function(data, status, error) {
            console.log('ajax /dp/cm/category Error: ' + data);
        }
    });
}

$("#LargeCategory").change( function() {
    let clsf_id = $("#LargeCategory option:selected").val();
    if(clsf_id === ""){
        $("#MiddleCategory").empty();
        $("#MiddleCategory").append("<option value=''>중분류</option>");

        $("#SmallCategory").empty();
        $("#SmallCategory").append("<option value=''>소분류</option>");
    }else{
        $.ajax({
            type: 'get',
            url: "/dp/cm/category?clsf_id="+clsf_id,
            contentType:"application/json;charset=UTF-8",
            //data: param,
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                console.log("LargeCategory Data ::", obj)
                $("#MiddleCategory").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>중분류</option>"
                for(let i=0; i < obj.length; i++){
                    categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
                }
                $("#MiddleCategory").append(categoryHTML);
            },
            error: function(data, status, error) {
                console.log('ajax /dp/cm/category Error: ' + data);
            }
        });
    }
});

$("#MiddleCategory").change( function() {
    let clsf_id = $("#MiddleCategory option:selected").val();
    if(clsf_id === ""){
        $("#SmallCategory").empty();
        $("#SmallCategory").append("<option value=''>소분류</option>");
    }else{
        $.ajax({
            type: 'get',
            url: "/dp/cm/category?clsf_id="+clsf_id,
            contentType:"application/json;charset=UTF-8",
            //data: param,
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                console.log("LargeCategory Data ::", obj)
                $("#SmallCategory").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>소분류</option>"
                for(let i=0; i < obj.length; i++){
                    categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
                }
                $("#SmallCategory").append(categoryHTML);
            },
            error: function(data, status, error) {
                console.log('ajax /dp/cm/category Error: ' + data);
            }
        });
    }
});

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