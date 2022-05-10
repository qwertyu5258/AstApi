
function categoryInit(classType){
    let url = '';
    if(classType == 'lclass' || classType == undefined) {
        url = '/dp/cm/category';
    } else if(classType == 'mclass') {
        url = '/dp/cm/category=clsf_id=AABBCC';
    } else if(classType == 'sclass') {
        url = '/dp/cm/category=clsf_id=test03';
    }
    $.ajax({
        type: 'get',
        url: url,
        contentType:"application/json;charset=UTF-8",
        //data: param,
        success: function(data, textStatus, xhr) {
            let obj = data.contents;
            console.log("LargeCategory Data ::", obj);
            $("#LargeCategory").empty();
            let categoryHTML = "";
            categoryHTML += "<option value=''>대분류</option>";
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

//  수집방식
function dp_cm_codes_clct_mthd() {
    ajaxGet('/dp/cm/codes/clct_mthd?group_code=D34', "", function (data) {
        let obj = data.contents;

        $("#clct_mthd1").empty();

        let optionHtml = "";
        for(let i=0; i < obj.length; i++){
            optionHtml += `<option value="`+obj[i].etc_code+`">`+obj[i].dtl_code_nm+`</option>`;
        }
        $("#clct_mthd1").append(optionHtml);
    });
}
function dp_cm_codes_clct_ty() {
    ajaxGet('/dp/cm/codes/clct_ty?group_code=D35', "", function (data) {
        let obj = data.contents;
        $("#clct_ty1").empty();

        let optionHtml = "";
        for(let i=0; i < obj.length; i++){
            optionHtml += `<option value="`+obj[i].etc_code+`">`+obj[i].dtl_code_nm+`</option>`;
        }
        $("#clct_ty1").append(optionHtml);
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
                console.log("LargeCategory Data ::", obj);
                $("#MiddleCategory").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>중분류</option>";
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
                console.log("LargeCategory Data ::", obj);
                $("#SmallCategory").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>소분류</option>";
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