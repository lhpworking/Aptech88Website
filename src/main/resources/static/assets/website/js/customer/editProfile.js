function editProfile(newProfile) {
    return $.ajax({
        method: 'post',
        url: 'http://localhost:8080/AccountEdit',
        contentType: 'application/json',
        data: JSON.stringify(newProfile)
    })
}