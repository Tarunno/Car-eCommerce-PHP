var items = document.querySelectorAll('.stories .item'),
	titles = document.querySelectorAll('.stories h2'),
	images = document.querySelectorAll('.stories .story-image'),
	bodies = document.querySelectorAll('.stories .story-body');

console.log(images);
items.forEach((item, i) => {
	item.onclick = function(){
		var imageUrl = 'assets/Story_images/'+ images[i].innerHTML +'.jpg';

		var container = document.body;
		var imageWindow = document.createElement('div');

		container.appendChild(imageWindow);
		imageWindow.setAttribute('class', 'full-story');
		imageWindow.setAttribute('onclick', 'closeStory()');

		var heading = document.createElement('h1');
		var fullImg = document.createElement('img');
		var title = document.createElement('h1');
		var body = document.createElement('h5');

		imageWindow.appendChild(heading);
		imageWindow.appendChild(fullImg);
		imageWindow.appendChild(title);
		imageWindow.appendChild(body);

		heading.innerHTML ="Story";
		fullImg.setAttribute('src', imageUrl);
		title.innerHTML = titles[i].innerHTML;
		body.innerHTML = bodies[i].innerHTML;
	}
});
function closeStory(){
	document.querySelector('.full-story').remove();
}
