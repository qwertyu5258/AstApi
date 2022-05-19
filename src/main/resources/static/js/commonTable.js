
function pageNation(dataLength, listPerPage, startNum) {
    let HTML = '';

    HTML += `<li  class="page-item"> <a class="page-link" onclick="beforePage()"> < </a></li>`;
    for (let i = (startNum-1) * 10 ; i < ((dataLength / listPerPage < 9) ? dataLength / listPerPage : 9); i++) {
        HTML += `<li  class="page-item"> <a class="page-link" onclick="searchTbl(` + (i + 1) + `)">` +  (i + 1)  +  `</a></li>`;
    }
    HTML += `<li  class="page-item"> <a class="page-link" onclick="afterPage()"> > </a></li>`;
    $('.pagination').append(HTML);
}

function markPage(pageNum) {
    $('.page-link').css("background-color","white");
    $('.page-link')[pageNum].style.backgroundColor = '#dee2e6';
}
function beforePage() {
    console.log('beforePage');
    let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    if(indexNum == 1) {
        searchTbl(indexNum);
    } else {
        searchTbl(indexNum - 1);
    }
}
function afterPage() {
    console.log('beforePage');
    let indexNum = _.findIndex($('.page-link'), function(o) { return o.style.backgroundColor == 'rgb(222, 226, 230)'; });
    searchTbl(indexNum +1);
    if((indexNum + 1) % 10 == 0) {
        pageNation();
    }
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

