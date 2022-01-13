# don't do chunked transfer to s3 (because it fails)
# Excon.defaults[:nonblock] = false