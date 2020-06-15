/**
 * Created by david on 2016/9/26.
 */

// ============================================================================================  ajax列表
var outPutOrderDataTable = new DefaultDataTable('/order/ajaxListOutPutOrder.do', [
    {
        sTitle: '订单号',
        mData: 'orderCode'
    },
    {
        sTitle: '行号',
        mData: 'lineNumber'
    },
    {
        sTitle: '进销项合同标识',
        mData: 'typeContract'
    },
    {
        sTitle: '订货月份',
        mData: 'bookMonth'
    },
    {
        sTitle: '物料号',
        mData: 'materialCode'
    },
    {
        sTitle: '物料描述',
        mData: 'materialDesc'
    },
    {
        sTitle: '地址',
        mData: 'addressId'
    },
    {
        sTitle: '注释',
        mData: 'comment'
    },
    {
        sTitle: '供应商',
        mData: 'provider'
    },
    {
        sTitle: '原厂',
        mData: 'original'
    },
    {
        sTitle: '客户',
        mData: 'customer'
    },
    {
        sTitle: '价格单位',
        mData: 'priceUnit'
    },
    {
        sTitle: '单位',
        mData: 'unit'
    },
    {
        sTitle: '数量单位',
        mData: 'countUnit'
    },
    {
        sTitle: '下单数量',
        mData: 'placeCount'
    },
    {
        sTitle: '销售数量',
        mData: 'sellCount'
    },
    {
        sTitle: '付款金额',
        mData: 'paymentMoney'
    },
    {
        sTitle: '下单日期',
        mData: 'placeDate'
    },
    {
        sTitle: '要求交付日期',
        mData: 'requireDate'
    },
    {
        sTitle: '实际交付日期',
        mData: 'realityDate'
    },
    {
        sTitle: '发货单号',
        mData: 'freightOrderCode'
    },
    {
        sTitle: '运费',
        mData: 'freightMoney'
    },
    {
        sTitle: '运费',
        mData: 'freightMoneyNo'
    },
    {
        sTitle: '仓储费',
        mData: 'storageMoney'
    },
    {
        sTitle: '合同号',
        mData: 'contentNumber'
    },
    {
        sTitle: '是否付款',
        mData: 'isPayment'
    },
    {
        sTitle: '订单是否完结',
        mData: 'isOrderEnd'

    },
    {
        sTitle: '是否开具发票',
        mData: 'isInvoice'
    },
    {
        sTitle: '发票号',
        mData: 'invoiceCode'
    },
    {
        sTitle: '发票金额',
        mData: 'amount'
    },
    {
        sTitle: '备注',
        mData: 'note'
    },
    {
        sTitle: '状态',
        mData: 'status',
        render: function (status, type, row) {
            return status === 1 ? '有效' : '无效';
        }
    },
    {
        sTitle: '操作',
        render: function (data, type, row) {
            return '<a class="btn btn-mini btn-info" onclick="editOutPutOrder(\'' + row.id + '\');">修改' +
                '<i class="icon-edit"></i>' +
                '</a>' +
                '<a class="btn btn-mini btn-info" title="取消订单" onclick="deleteOutPutOrder(\'' + row.id + '\');">取消订单' +
                '<i class="icon-adjust"></i>' +
                '</a>';
        }
    }
], '#out_put_order_table_id', $('#outPutOrderForm'));
// ============================================================================================  页面初始化处理
top.hangge();
$('#bookMonth').datepicker();
$('#placeDate').datepicker();
$('#realityDate').datepicker();

//新增
function addOutPutOrder() {
    openDialog('add_out_order_id', '下单', '/order/goAddOutPutOrder.do', {width: 1000, height: 600});
}

//修改
function editOutPutOrder(id) {
    openDialog('edit_out_order_id', '修改', '/order/goEditOutPutOrder.do?id=' + id, {width: 1000, height: 600});
}

function editOutPutOrder(id) {
    openDialog('edit_out_order_id', '修改', '/order/goEditOutPutOrder.do?id=' + id, {width: 1000, height: 600});
}

