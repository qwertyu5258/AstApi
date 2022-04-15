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