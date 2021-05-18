README

A baby network set up with a ACL based haproxy that routes to one of two servers based on context root. 

Haproxy: port 80. Has custom error page configured for 404. 404 ONLY! more tbd. Redirects users to different nginx instances based on context root.
nginx1: port 91. Contains foo context.
nginx2: port 92. Contains bar context. 
nginxsplash: port 90. Contains splash page. 

For more details on custom haproxy pages, see https://www.haproxy.com/blog/serve-dynamic-custom-error-pages-with-haproxy/.