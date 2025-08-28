let cartItems = [];

function addToCart(name, price) {
  cartItems.push({ name, price });
  displayCart();
}

function displayCart() {
  if (cartItems.length === 0) {
    document.getElementById("cart").innerHTML = "Cart is empty";
    return;
  }

  let html = "<ul>";
  let total = 0;
  cartItems.forEach(item => {
    html += `<li>${item.name} - ₹${item.price}</li>`;
    total += item.price;
  });
  html += "</ul><b>Total: ₹" + total + "</b>";

  document.getElementById("cart").innerHTML = html;
}

  document.querySelector("#butt").addEventListener("click", function () {
    window.location.href = "shoppingpage2.html";
  });
  
  document.querySelector(".myhome").addEventListener("click", function () {
      window.location.href = "shoppingpage.html";
    });
	
  document.querySelector("#but").addEventListener("click", function () {
	  window.location.href = "tnk.html";
	 });
