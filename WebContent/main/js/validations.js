	$(document).ready(function() {
	    $("textarea[name='protect']").on('keyup', function() {
	        var words = this.value.match(/\S+/g).length;
	        if (words > 30) {
	            // Split the string on first 30 words and rejoin on spaces
	            var trimmed = $(this).val().split(/\s+/, 30).join(" ");
	            // Add a space at the end to keep new typing making new words
	            $(this).val(trimmed + " ");
	        }
	        else {
	           /* $('#display_count').text(words);
	            $('#word_left').text(200-words);*/
	        }
	    });
	 });
	


	function count(j) {
		var total = 0;
		for (var i = 0; i < document.form1.what.length; i++) {
			if (document.form1.what[i].checked) {
				total = total + 1;
			}
			if (total > 5) {
				alert("Please Select only five")
				document.form1.what[j].checked = false;
				return false;
			}
		}
	}


	function validateForm() {
		var x = document.forms["form1"]["ins_name"].value;
		if (x == null || x == "") {
			alert("Institution Name is required!");
			return false;
		}
	}
