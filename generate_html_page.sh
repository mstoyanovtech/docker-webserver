#!/bin/bash

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<body>
  <h1>Hello, this is my web server!</h1>
  <p>Hostname: $(hostname)</p>
  <p>Date: $(date)</p>
</body>
</html>
EOF

exec nginx -g "daemon off;"
