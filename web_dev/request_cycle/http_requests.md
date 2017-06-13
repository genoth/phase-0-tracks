## 9.1 Release 0

1. What are some common HTTP status codes?

* 200 - Successful response.
* 404 - Not Found.
* 403 - Forbidden. Often this is because the server maintaining the page has a whitelist of machines that are allowed to access it, and your machine isn't on the list. Sometimes this will also happen if the client's certificate is missing or no longer valid. Or, there could be faulty permissions on the files.
* 500 - Internal Server Error. This is a catchall for server-side errors.
* 503 - Service Unavailable. Means that the web server isn't available, could be a temporary problem, could be down for maintenance, could be overloaded with requests, etc.
* 504 - Gateway Timeout. Access to a required server timed out. Can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable.

2. What is the difference between a GET request and a POST request? When might each be used?

* a POST request supplies additional data from the client (browser) to the server in the body of the HTTP request. In contrast GET requests include all required info within the URL, as string queries.
* Forms in HTML can use either method by specifying method="POST" or method="GET" (default) in the <form> element.
* POST method should always be used for sensitive information like passwords or credit cards.
* GET method may be useful if the user has entered in some data, and they want to bookmark it and come back to it later. (i.e. they chose a travel date and want to return to search later)

### POST
* CAN'T be bookmarked
* if you click 'back,' the browser typically alerts the user that the data will need to be re-submitted
* can send parameters, including uploading files, to the server
* more difficult to hack
* no restrictions on data type
* a little safer bc parameters aren't stored in the browser history or in web server logs
* no restriction on data/ URL length
* method variables NOT displayed in URL
* must use POST for sensitive data like passwords

### GET
* can be bookmarked
* if you press 'back', the requests are re-executed but might not be re-submitted to the server if the HTML is stored in the browser cache
* can send parameter data but only within the URL (request line). safest to use <2k parameters
* less secure than POST bc data is sent within the URL
* URL length is typically restricted to 2048 characters (but this can vary by browser and server)
* highly visible! don't use for sensitive information

* source: http://www.diffen.com/difference/GET-vs-POST-HTTP-Requests

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

* an HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the browser
* designed as a reliable mechanism for websites to remember "stateful" information, like items in a shopping cart
* authentication cookies help a web server know wehtehr the user is logged in or not, and with which account
* cookie headers are sent by the server in response to an HTTP request