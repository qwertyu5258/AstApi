let totalPage1;
function pageNation(totalPage, listPerPage, startNum) {

    totalPage1 = totalPage;
    $('.pagination').empty();

    let HTML = '';

    let lastCheck = false;

    HTML += `<li  class="page-item"> <a class="page-link" id="beforeMostPage" onclick="beforeMostPage()"> << </a></li>`;
    HTML += `<li  class="page-item"> <a class="page-link" id="beforePage" onclick="beforePage()"> < </a></li>`;
    for (let i = startNum- 1 ; i <  ((totalPage < (startNum + 10)) ?  totalPage:  (startNum + 9)) ; i++) {
        HTML += `<li  class="page-item"> <a class="page-link" onclick="searchTbl(` + (i + 1) + `, 'pageSelect')">` +  (i + 1)  +  `</a></li>`;
        if((i + 1) == totalPage){
            lastCheck = true;
        }
    }
    if(lastCheck == true){
        HTML += `<li  class="page-item"> <a class="page-link" id="afterPage" onclick="afterPage()"> > </a></li>`;
        // HTML += `<li  class="page-item"> <a class="page-link" id="afterMostPage" onclick="searchTbl(${totalPage}, 'pageSelect')"> >> </a></li>`;
        HTML += `<li  class="page-item"> <a class="page-link" id="afterMostPage" onclick="afterMostPage()"> >> </a></li>`;
    } else {
        HTML += `<li  class="page-item"> <a class="page-link" id="afterPage" onclick="afterPage()"> > </a></li>`;
        HTML += `<li  class="page-item"> <a class="page-link" id="afterMostPage" onclick="afterMostPage()"> >> </a></li>`;
    }
    $('.pagination').append(HTML);
}

function markPage(pageNum) {
    if(pageNum % 10 == 0){
        pageNum = pageNum;
    } else {
        pageNum = pageNum % 10;
    }
    $('.page-link').css("background-color","white");
    $('.page-link')[pageNum + 1].style.backgroundColor = '#dee2e6';
    if(pageNum == totalPage1){
        $('#afterPage').attr('onclick','');
    }
}
function beforePage() {
    console.log('beforePage');
    // let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    let indexNum = _.filter($('.page-link'),function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; })[0].innerText;
    indexNum = parseInt(indexNum);
    if(indexNum == 1) {
        searchTbl(indexNum, 'pageSelect');
    } else {
        searchTbl(indexNum - 1, 'pageSelect');
    }
}
function beforeMostPage() {
    console.log('beforePage');
    // let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    let indexNum = _.filter($('.page-link'),function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; })[0].innerText;
    indexNum = parseInt(indexNum);
    searchTbl(1, 'pageSelect');
}
function afterPage() {
    console.log('beforePage');
    // let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    let indexNum = _.filter($('.page-link'),function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; })[0].innerText;
    if(indexNum != totalPage1) {
        indexNum = parseInt(indexNum);
        searchTbl(indexNum + 1, 'pageSelect');
        if ((indexNum) % 10 == 0) {
            pageNation(totalPage1, 10, indexNum + 1);
        }
        markPage(indexNum + 1);
    } else {

    }
}
function afterMostPage() {
    console.log('beforePage');

    let indexNum = parseInt(totalPage1 / 10 ) * 10 + 1;

    // let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    // let indexNum = _.filter($('.page-link'),function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; })[0].innerText;
    searchTbl(totalPage1, 'pageSelect');
    if(totalPage1 >= indexNum) {
        pageNation(totalPage1, 10, indexNum);
    }

    markPage(totalPage1);
}

function checkBoxAll(TblName) {

    var ISCheckedAll = $(`.${TblName}All`)[0].checked;
    // var IsChecked = this.IsChecked(TblName);

    $('.tableInfo').each(function(index,el) {

        if(ISCheckedAll == false){
            el.checked = false;
        } else {
            el.checked = true;
        }
    });
}

function IsChecked(TblName) {
    var resultChk = false;
    $(`.${TblName}`).each(function(index,el) {
      if (el.checked == true){
        resultChk = true;
      }
    });
    return resultChk;
}

