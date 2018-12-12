var cart; //Vue对象
function createVue(list) {
    cart = new Vue({
        el: '#cart',
        data() {
            return {
                list: list,
                checkeds: new Array(list.length)
            }
        },
        computed: {
            sum: function () {
                let sum = 0;
                for (let i in this.list) {
                    if (this.checkeds[i])
                        sum += this.list[i].unitPrice * this.list[i].purchaseQuantity;
                }
                return sum;
            },
            checkNum: function () {
                let num = 0;
                for (let i in this.checkeds) {
                    if (this.checkeds[i]) {
                        num++;
                    }
                }
                return num;
            }
        },
        methods: {
            del: function (index) {
                this.list.splice(index, 1);
                this.checkeds.splice(index,1); //同时删除对应的选中状态标识
            },
            add: function (index) {
                this.list[index].purchaseQuantity++;
            },
            minius: function (index) {
                if (this.list[index].purchaseQuantity > 1) {
                    this.list[index].purchaseQuantity--;
                }
            },
            checkAll: function (event) {
                if (event.checked) {
                    for (let i = 0; i < this.checkeds.length; i++) {
                        Vue.set(this.checkeds, i, true);
                    }
                } else {
                    for (let i = 0; i < this.checkeds.length; i++) {
                        Vue.set(this.checkeds, i, false);
                    }
                }
            }
        }
    });
}
window.onload =	function () {
        //请求后台代码   。。。。
        //请求成功后将获得的list赋值给cart的list
        /*let list = [
            {
                goodsTitle: "卫龙辣条",							//商品名
                specifications: "大包",							//商品规格
                unitPrice: "5",									//商品单价
                subimage1Filename :"20180317eeftyd.jpg",		//商品图片名
                purchaseQuantity: 6								//商品数量
            },
            {
                goodsTitle: "雕牌洗衣粉",
                specifications: "大包",
                unitPrice: "13",
                subimage1Filename: "20180317ggptfg.jpg",
                purchaseQuantity: 1
            },
            {
                goodsTitle: "旺仔牛奶",
                specifications: "20盒装",
                unitPrice: "45",
                subimage1Filename: "20180317feftyp.jpg",
                purchaseQuantity: 1
            }
        ]*/

        createVue(list);
    }