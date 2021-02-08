resume: resume.pdf resume.html

resume.html: resume.json resume.ejs
	ejs resume.ejs -f resume.json -o resume.html

resume.pdf: resume.html resume.css
	relaxed resume.html resume.pdf --build-once
	make clean

clean:
	rm -f resume.html resume_temp.htm
