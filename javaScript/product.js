AOS.init({
		offset: 0,
		delay: 0,
		duration: 1500,
		once: true
});

// STAR HOVER RATING
var starts = document.querySelectorAll('.rating_index i');
console.log(starts);
var to = Math.floor(document.querySelector('.rating_holder').value);
for(var j=0; j<to; j++){
    starts[j].className = starts[j].className.replace('far', 'fas');
}
for(var i=0; i<starts.length; i++){
    starts[i].addEventListener("mouseover", (e)=>{
        e.target.className = e.target.className.replace('far', 'fas');
        to = e.target.id;
        for(var j=0; j<to; j++){
            starts[j].className = starts[j].className.replace('far', 'fas');
        }
        for(var j=to; j<starts.length; j++){
            starts[j].className = starts[j].className.replace('fas', 'far');
        }
        document.querySelector('.rating_holder').value = to;
    });
}
