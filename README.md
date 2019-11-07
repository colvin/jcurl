# jcurl

A simple shell wrapper for calling JSON APIs from the command line.

`jcurl` calls `curl` with the `Content-Type` header set to `application/json`,
passes the rest of the command line through as arguments to `curl`, and pipes
the response through `jq`.

The `$JCURL_HOST` variable, if set, is prepended to the arguments passed to `curl`:

```
# This
jcurl http://localhost:3000/foo
jcurl http://localhost:3000/bar?baz=1

# Is now
export JCURL_HOST=http://localhost:3000
jcurl /foo
jcurl /bar?baz=1
```

The `$JCURL_OPTS` variable, if set, is passed to `curl`. This allows one-time
setting of common options such as proxies. The `$JCURL_JQ_OPTS` variable, if
set, is passed in a similar manner to `jq`.

## Installation

Install `jcurl` using `make`. You can control where the script is installed
using `PREFIX` or `DESTDIR`:

```
# Install to /usr/local/bin/jcurl
make

# Install to $HOME/bin/jcurl
make PREFIX=$HOME

# Install to /some/other/place/jcurl
make DESTDIR=/some/other/place
```
