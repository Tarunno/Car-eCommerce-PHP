// REGULAR CARS
var search_from = document.querySelector('.search-regular-car-form'),
	search_input = search_from.querySelector('input'),
	search_button = search_from.querySelector('.voice-regular-search i');

const recognition = window.SpeechRecognition || window.webkitSpeechRecognition;

voice_search(search_from, search_input, search_button);
function voice_search(search_from, search_input, search_button){
	if(recognition){
		const tool = new webkitSpeechRecognition();
		search_button.addEventListener('click', function(){
			if(search_button.classList.contains('fa-microphone')){
				search_button.classList.remove('fa-microphone');
				search_button.classList.add('fa-microphone-slash');
				tool.start();
			}
			else{
				search_button.classList.add('fa-microphone');
				search_button.classList.remove('fa-microphone-slash');
				tool.stop();
			}
			tool.addEventListener("start", startSpeechRecognition);
			  function startSpeechRecognition() {
			    search_button.classList.remove("fa-microphone");
			    search_button.classList.add("fa-microphone-slash");
			    search_input.focus();
			    console.log("Voice activated, SPEAK");
			  }

			  tool.addEventListener("end", endSpeechRecognition);
			  function endSpeechRecognition() {
			    search_button.classList.remove("fa-microphone-slash");
			    search_button.classList.add("fa-microphone");
			    search_input.focus();
			    console.log("Speech recognition service disconnected");
			  }

			  tool.addEventListener("result", resultOfSpeechRecognition);
			  function resultOfSpeechRecognition(event) {
			    const current = event.resultIndex;
			    const transcript = event.results[current][0].transcript;
				search_input.focus();
				search_input.value = transcript;
			    search_from.submit();
			  }
			 });
	}
}
