
function categoryInit(classType){
    let data = {
        "user_id":"~~id",
        "menu_id":""
    };
    $.ajax({
        type: 'post',
        url: '/dp/cm/category/list',
        contentType:"application/json;charset=UTF-8",
        data: JSON.stringify(data),
        success: function(data, textStatus, xhr) {
            let obj = data.contents;
            obj = _.filter(obj, { level:1 });
            console.log("LargeCategory Data ::", obj);
            $("#LargeCategory").empty();
            $("#dset_lclas1").empty();
            let categoryHTML = "";
            categoryHTML += "<option value=''>대분류</option>";
            for(let i=0; i < obj.length; i++){
                categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
            }
            $("#LargeCategory").append(categoryHTML);
            $("#dset_lclas1").append(categoryHTML);

            $("#MiddleCategory").empty();
            $("#MiddleCategory").append("<option value=''>중분류</option>");

            $("#dset_mclas1").empty();
            $("#dset_mclas1").append("<option value=''>중분류</option>");

            $("#SmallCategory").empty();
            $("#SmallCategory").append("<option value=''>소분류</option>");

            $("#dset_sclas1").empty();
            $("#dset_sclas1").append("<option value=''>소분류</option>");
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

        $(".clct_mthd1").empty();

        let optionHtml = "";
        for(let i=0; i < obj.length; i++){
            optionHtml += `<option value="`+obj[i].dtl_code+`">`+obj[i].dtl_code_nm+`</option>`;
        }
        $(".clct_mthd1").append(optionHtml);

    });
}
function dp_cm_codes_clct_ty() {
    ajaxGet('/dp/cm/codes/clct_ty?group_code=D35', "", function (data) {
        let obj = data.contents;
        $(".clct_ty1").empty();

        let optionHtml = "";
        for(let i=0; i < obj.length; i++){
            optionHtml += `<option value="`+obj[i].dtl_code+`">`+obj[i].dtl_code_nm+`</option>`;
        }
        $(".clct_ty1").append(optionHtml);
    });
}


$("#LargeCategory").change( function() {
    let clsf_id = $("#LargeCategory option:selected").val();

    // 중분류 소분류 초기화
    $("#MiddleCategory").empty();
    $("#MiddleCategory").append("<option value=''>중분류</option>");
    $("#SmallCategory").empty();
    $("#SmallCategory").append("<option value=''>소분류</option>");
    
    if(clsf_id === ""){
        $("#MiddleCategory").empty();
        $("#MiddleCategory").append("<option value=''>중분류</option>");

        $("#SmallCategory").empty();
        $("#SmallCategory").append("<option value=''>소분류</option>");
    }else{
        let data = {
            "user_id":"~~id",
            "menu_id":""
        };
        $.ajax({
            type: 'post',
            url: "/dp/cm/category/list",
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(data),
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                obj = _.filter(obj, { up_clsf_id: clsf_id });;
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
        let data = {
            "user_id":"~~id",
            "menu_id":""
        };
        $.ajax({
            type: 'post',
            url: "/dp/cm/category/list",
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(data),
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                obj = _.filter(obj, { up_clsf_id: clsf_id });;
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

// dset_mclas1
// dset_sclas1
$("#dset_lclas1").change( function() {
    let clsf_id = $("#dset_lclas1 option:selected").val();

    // 중분류 소분류 초기화
    $("#dset_mclas1").empty();
    $("#dset_mclas1").append("<option value=''>중분류</option>");
    $("#dset_sclas1").empty();
    $("#dset_sclas1").append("<option value=''>소분류</option>");

    if(clsf_id === ""){
        $("#dset_mclas1").empty();
        $("#dset_mclas1").append("<option value=''>중분류</option>");

        $("#dset_sclas1").empty();
        $("#dset_sclas1").append("<option value=''>소분류</option>");
    }else{
        let data = {
            "user_id":"~~id",
            "menu_id":""
        };
        $.ajax({
            type: 'post',
            url: "/dp/cm/category/list",
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(data),
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                obj = _.filter(obj, { up_clsf_id: clsf_id });;
                $("#dset_mclas1").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>중분류</option>";
                for(let i=0; i < obj.length; i++){
                    categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
                }
                $("#dset_mclas1").append(categoryHTML);
            },
            error: function(data, status, error) {
                console.log('ajax /dp/cm/category Error: ' + data);
            }
        });
    }
});

$("#dset_mclas1").change( function() {
    let clsf_id = $("#dset_mclas1 option:selected").val();
    if(clsf_id === ""){
        $("#dset_sclas1").empty();
        $("#dset_sclas1").append("<option value=''>소분류</option>");
    }else{
        let data = {
            "user_id":"~~id",
            "menu_id":""
        };
        $.ajax({
            type: 'post',
            url: "/dp/cm/category/list",
            contentType:"application/json;charset=UTF-8",
            data: JSON.stringify(data),
            success: function(data, textStatus, xhr) {
                let obj = data.contents;
                obj = _.filter(obj, { up_clsf_id: clsf_id });;
                console.log("LargeCategory Data ::", obj);
                $("#dset_sclas1").empty();
                let categoryHTML = "";
                categoryHTML += "<option value=''>소분류</option>";
                for(let i=0; i < obj.length; i++){
                    categoryHTML += `<option value="`+obj[i].clsf_id+`">`+obj[i].clsf_nm+`</option>`;
                }
                $("#dset_sclas1").append(categoryHTML);
            },
            error: function(data, status, error) {
                console.log('ajax /dp/cm/category Error: ' + data);
            }
        });
    }
});


function initGetCategory(parentCategory, childCategory ) {
        let clsf_id = $(`#${parentCategory} option:selected`).val();

        $(`#${childCategory}`).empty();
        $(`#${childCategory}`).append("<option value=''></option>");

        if (clsf_id === "") {
            if( childCategory == 'dset_mclas1'){
                $(`#${childCategory}`).empty();
                $(`#${childCategory}`).append("<option value=''>중분류</option>");
            } else if( childCategory == 'dset_sclas1'){
                $(`#${childCategory}`).empty();
                $(`#${childCategory}`).append("<option value=''>소분류</option>");
            }
            
        } else {
            let data = {
                "user_id": "~~id",
                "menu_id": ""
            };
            $.ajax({
                type: 'post',
                url: "/dp/cm/category/list",
                contentType: "application/json;charset=UTF-8",
                async: false,
                data: JSON.stringify(data),
                success: function (data, textStatus, xhr) {
                    let obj = data.contents;
                    obj = _.filter(obj, {up_clsf_id: clsf_id});

                    console.log("LargeCategory Data ::", obj);
                    $(`#${childCategory}`).empty();
                    let categoryHTML = "";
                    if(childCategory == 'dset_sclas1' ){
                        categoryHTML += "<option value=''>소분류</option>";
                    } else {
                        categoryHTML += "<option value=''>중분류</option>";
                    }
                    for (let i = 0; i < obj.length; i++) {
                        categoryHTML += `<option value="` + obj[i].clsf_id + `">` + obj[i].clsf_nm + `</option>`;
                    }
                    $(`#${childCategory}`).append(categoryHTML);
                },
                error: function (data, status, error) {
                    console.log('ajax /dp/cm/category Error: ' + data);
                }
            });
        }
}
