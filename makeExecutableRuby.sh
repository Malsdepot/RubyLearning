#!/bin/bash
touch $1
echo "#!/bin/ruby" >> $1
chmod +x $1
