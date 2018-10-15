//最后用js控制
$(document).ready(function(e) {
    var unslider04 = $('#b04').unslider({
            dots: true
        }),
        data04 = unslider04.data('unslider');

    $('.unslider-arrow04').click(function() {
        var fn = this.className.split(' ')[1];
        data04[fn]();
    });
});

var vm = new Vue({
  el: '#rrapp',
  data: {
    showList:1,
    showList2:0,
  }
})

function changeTab(numb){
	vm.showList = numb;
};
function changeTab1(numb){
	vm.showList1 = numb;
};