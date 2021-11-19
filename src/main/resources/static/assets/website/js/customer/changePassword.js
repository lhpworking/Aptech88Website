function changePassword(obj) {
    return $.ajax({
        method: 'post',
        url: 'http://localhost:8080/AccountPassword',
        contentType: 'application/json',
        data: JSON.stringify(obj)
    })
}