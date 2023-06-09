function getCookie(name) {
    let cookieValue = null;
    if (document.cookie && document.cookie !== '') {
        const cookies = document.cookie.split(';');
        for (let i = 0; i < cookies.length; i++) {
            const cookie = cookies[i].trim();
            if (cookie.substring(0, name.length + 1) === (name + '=')) {
                cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                break;
            }
        }
    }
    return cookieValue;
}
const csrftoken = getCookie('csrftoken');

let btns = document.querySelectorAll(".productContainer button")

btns.forEach(btn=>{
    btn.addEventListener("click", addToCart)
})

function addToCart(e) {
    let product_id = e.target.value
    let url = "/add_to_basket"
    let data = {id:product_id}
    console.log(product_id)
    fetch(url, {
        method: "POST",
        headers: {"Content-Type":"application/json", 'X-CSRFToken': csrftoken},
        body: JSON.stringify(data)
    })
        .then(res=>res.json())
        .then(data=>{
            console.log(data)
        })
        .catch(error=>{
            console.log(error)
        })
}
//
// function addToCart(e){
//     let product_id = e.target.value
//     let url = "/add_to_cart"
//
//     let data = {id:product_id}
//

//         .then(res=>res.json())
//         .then(data=>{
//             document.getElementById("num_of_items").innerHTML = data
//             console.log(data)
//         })
//