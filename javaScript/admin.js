// ADD and UPADTE CAR FORM SWAP
var table_rows = document.querySelectorAll('.cars tr');
var update_tab = document.querySelector('.update-cars');
var add_tab = document.querySelector('.edit-cars');

function update(x){
	var array = new Array();
	table_rows.forEach((row) => {
		if(row.id == x){
			update_tab.style.display = "block";
			update_tab.style.height = "550px";
			document.querySelector('.update-cars h1').style.fontSize = "20px";
			document.querySelector('.update-cars h1').style.marginTop = "10px";
			add_tab.style.display = "none";
			var td = row.childNodes;
			for(var i=1; i<td.length; i+=2){
				array.push(td[i].innerHTML);
			}
			var inputs = document.querySelectorAll('.cars .update-cars .add input');
			var j=3;
			for(var i=0; i<inputs.length - 1; i++){
				var str = array[j].replace("$", "");
				inputs[i].value = str;
				j++;
			}
			document.querySelector('.cars .update-cars .add textarea').value = array[3];
			document.querySelector('.cars .id_holder').value = array[array.length-1];
		}
	});
}
function decline(){
	update_tab.style.display = "none";
	add_tab.style.display = "block";
}

// ADMIN OPTION TABS
var options = document.querySelectorAll('h3'),
	tabs = document.querySelectorAll('#tab');
console.log(options, tabs);

function hide_all_tab(){
	tabs.forEach((tab, i) => {
		tab.style.display = 'none';
		options[i].classList.remove('active');
	});

}
hide_all_tab();
tabs[0].style.display = "block";
options[0].classList.add('active');

options.forEach((item, i) => {
	item.addEventListener('click', function(){
		hide_all_tab();
		tabs[i].style.display = 'block';
		item.classList.add('active');
		item.style.transition = '.5s';
	});
});


// ADD or UPADTE PRODUCTS FORM swapvar table_rows = document.querySelectorAll('tr');
var table_rows_products = document.querySelectorAll('.products tr');
var update_tab_products = document.querySelector('.products .update-products');
var add_tab_products = document.querySelector('.edit-products');

function update_product(x_products){
	var array_products = new Array();
	table_rows_products.forEach((row_products) => {
		if(row_products.id == x_products){
			update_tab_products.style.display = "block";
			update_tab_products.style.height = "390px";
			document.querySelector('.update-products h1').style.fontSize = "20px";
			document.querySelector('.update-products h1').style.marginTop = "10px";
			add_tab_products.style.display = "none";
			var td_products = row_products.childNodes;
			for(var i=1; i<td_products.length; i+=2){
				array_products.push(td_products[i].innerHTML);
			}
			var inputs_products = document.querySelectorAll('.products .update-products .add input');
			var j_products=3;
			for(var i=0; i<inputs_products.length - 1; i++){
				var str_products = array_products[j_products].replace("$", "");
				inputs_products[i].value = str_products;
				j_products++;
			}
			document.querySelector('.products .update-products .add textarea').value = array_products[3];
			document.querySelector('.products .id_holder').value = array_products[array_products.length-1];
		}
	});
}
function decline_product(){
	update_tab_products.style.display = "none";
	add_tab_products.style.display = "block";
}
