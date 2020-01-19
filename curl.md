# cURL options

-k, --insecure

(TLS) By default, every SSL connection curl makes is verified to be secure. This option allows curl to proceed and operate even for server connections otherwise considered insecure.
The server connection is verified by making sure the server's certificate contains the right name and verifies successfully using the cert store.

-i, --include

Include the HTTP response headers in the output. The HTTP response headers can include things like server name, cookies, date of the document, HTTP version and more...

-X, --request

(HTTP) Specifies a custom request method to use when communicating with the HTTP server. The specified request method will be used instead of the method otherwise used (which defaults to GET). Read the HTTP 1.1 specification for details and explanations. Common additional HTTP requests include PUT and DELETE, but related technologies like WebDAV offers PROPFIND, COPY, MOVE and more.

Normally you don't need this option. All sorts of GET, HEAD, POST and PUT requests are rather invoked by using dedicated command line options.

This option only changes the actual word used in the HTTP request, it does not alter the way curl behaves. So for example if you want to make a proper HEAD request, using -X HEAD will not suffice. You need to use the -I, --head option.

The method string you set with -X, --request will be used for all requests, which if you for example use -L, --location may cause unintended side-effects when curl doesn't change request method according to the HTTP 30x response codes - and similar.

--data-urlencode

This posts data, similar to the other --data options with the exception that this performs URL-encoding. To be CGI-compliant, the <data> part should begin with a name followed by a separator and a content specification.
