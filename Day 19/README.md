Day 16 – Task Documentation  

**Task:** Move the HTML file and verify web server content on port 6001  

**Commands and Outputs:**  

1️⃣ Move the index.html file to the correct web directory:  
sudo mv index.html /var/www/html/demo  

2️⃣ Verify that the web server is correctly serving the beta page:  
curl http://localhost:6001/beta/  
<h1>KodeKloud</h1>  
<p>This is a sample page for our beta website</p>  

3️⃣ Verify that the web server is correctly serving the demo page:  
curl http://localhost:6001/demo/  
<h1>KodeKloud</h1>  
<p>This is a sample page for our demo website</p>  

**Explanation:**  
The `sudo mv` command moves the `index.html` file into `/var/www/html/demo`, which is the directory from which the demo website serves its files.  
The `curl` commands are used to test whether both the beta and demo pages are accessible through HTTP requests on port 6001.  
The expected HTML outputs confirm that the web pages are correctly configured and accessible from the server.
