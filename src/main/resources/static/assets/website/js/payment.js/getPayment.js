function getPayment(paymentInfor) {
    return $.ajax({
        method: 'get',
        url: '/web/recharge/getPayment',
        data: {
            paymentId: paymentInfor.paymentId,
            payerId: paymentInfor.payerId
        }
    })
}