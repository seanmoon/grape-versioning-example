Version two works

    $ curl -v -H 'Accept: application/vnd.example-v2+json' http://0.0.0.0:3000/api/posts/2.json
    * About to connect() to 0.0.0.0 port 3000 (#0)
    *   Trying 0.0.0.0... connected
    > GET /api/posts/2.json HTTP/1.1
    > User-Agent: curl/7.23.1 (x86_64-apple-darwin11.2.0) libcurl/7.23.1
    > OpenSSL/1.0.0g zlib/1.2.5 libidn/1.22
    > Host: 0.0.0.0:3000
    > Accept: application/vnd.example-v2+json
    >
    < HTTP/1.1 200 OK
    < Content-Type: application/json
    < Content-Length: 12
    < X-Ua-Compatible: IE=Edge
    < Etag: "592c1cfd8a5244eb9e22155e891a928c"
    < Cache-Control: max-age=0, private, must-revalidate
    < X-Request-Id: 6274d33d18bf05af395a041cd32c5462
    < X-Runtime: 0.002903
    < Server: WEBrick/1.3.1 (Ruby/1.9.3/2012-04-20)
    < Date: Thu, 20 Dec 2012 04:31:08 GMT
    < Connection: Keep-Alive
    <
    * Connection #0 to host 0.0.0.0 left intact
    Version two!* Closing connection #0

Version 1 not found

    $ curl -v -H 'Accept: application/vnd.example-v1+json'
    http://0.0.0.0:3000/api/posts/2.json
    * About to connect() to 0.0.0.0 port 3000 (#0)
    *   Trying 0.0.0.0... connected
    > GET /api/posts/2.json HTTP/1.1
    > User-Agent: curl/7.23.1 (x86_64-apple-darwin11.2.0) libcurl/7.23.1
    > OpenSSL/1.0.0g zlib/1.2.5 libidn/1.22
    > Host: 0.0.0.0:3000
    > Accept: application/vnd.example-v1+json
    >
    < HTTP/1.1 404 Not Found
    < Content-Type: text/html; charset=utf-8
    < Content-Length: 776
    < X-Request-Id: 36e4a51171ee5f0a83d362bf99a41cd6
    < X-Runtime: 0.006305
    < Server: WEBrick/1.3.1 (Ruby/1.9.3/2012-04-20)
    < Date: Thu, 20 Dec 2012 04:30:31 GMT
    < Connection: Keep-Alive
    <
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="utf-8" />
      <title>Action Controller: Exception caught</title>
      <style>
        body { background-color: #fff; color: #333; }

        body, p, ol, ul, td {
          font-family: helvetica, verdana, arial, sans-serif;
          font-size:   13px;
          line-height: 18px;
        }

        pre {
          background-color: #eee;
          padding: 10px;
          font-size: 11px;
          white-space: pre-wrap;
        }

        a { color: #000; }
        a:visited { color: #666; }
        a:hover { color: #fff; background-color:#000; }
      </style>
    </head>
    <body>

    <h1>Routing Error</h1>
    <p><pre>No route matches [GET] &quot;/api/posts/2.json&quot;</pre></p>
    <p>
      Try running <code>rake routes</code> for more information on available
    routes.
    </p>

    </body>
    </html>
    * Connection #0 to host 0.0.0.0 left intact
    * Closing connection #0
