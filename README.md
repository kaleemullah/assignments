**Ruby:** ruby 2.1.2p95 (2014-05-08 revision 45877)

**Assignment#1:**

 - **Directory:** web_crawler
 - **Code description:**
	 - I've used *Nokogiri* for parsing HTML and *Typhoeus* for making requests fast.
	 - I've deployed http://testcrawler.herokuapp.com which contains several input fields per page and also links to other pages.
	 - To see output of the crawler please run below command within *web_crawler* directory:
		 > ruby lib/output.rb 
		 
		 which will give below output:

    		http://testcrawler.herokuapp.com: 6 inputs

		    http://testcrawler.herokuapp.com/products: 3 inputs
		    
		    http://testcrawler.herokuapp.com/contactus: 7 inputs
		    
		    http://testcrawler.herokuapp.com/customers: 15 inputs 

	 - Test Cases: Test cases can be run via below commands
	 
		> ruby test/crawler_test.rb

		> ruby test/web_page_test.rb

**Assignment#2:**

 - **Directory:** fizzbuzz
 - **Code Description:**
	 - Please run below command to see output.
	
	 > ruby lib/fizz_buzz.rb 
	 	 

**Assignment#3:**

 - **Directory:** conversion
 - **URL:**  Please see https://unitconversion.herokuapp.com which I've deployed for testing purposes. If user just type in the url https://unitconversion.herokuapp.com/convert/temperature/celsius/1/fahrenheit it will just convert 1 celsius into fahrenheit and similarly if user wants to convert fahrenheit to Celsius then he can change the url to https://unitconversion.herokuapp.com/convert/temperature/fahrenheit/1/celsius without browsing website. Its just little bit magic which i implemented so that user can enter url in the format of ***'convert/unit/from/value/to'*** and see results quickly.
 
 - **Code Description:**
	 - **models/temperature.rb:** This class is responsible for converting temperature and similarly we can add more classes for *length*, *volume* etc to extend the application easily.
	 - **Test Cases:** I've added controller and models test cases in respective directories.

	
