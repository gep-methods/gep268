#!/bin/sh

# Update date in YAML frontmatter in a hacky way to always get updated times in
# deployment. This file is meant to be run only on the main page, which in our
# webpage is the README.md file. We won't set any defaults here to keep it more
# flexible.
#
# Arguemnts:
#  - target_markdown: File with a last_modified_date key to modify


new_date=$(date) 

echo "Updating date in main page"
echo "--------------------\n"

# Displaying old value for reference
echo "Last deployment date \n"
grep 'last_modified_date:' ${1}

echo "Updated deployment date"
echo "--------------------\n"

echo "Deploy date using date: $new_date"
#sed -i "" "s/^\s+last_modified_date: .*$/ last_modified_date: \"${new_date}\"/" ${1}
#sed -i "" "s/^[[:space:]]*last_modified_date: .*$/  last_modified_date: \"${new_date}\"/" "${1}"
sed -i "" "s/^\([[:space:]]*\)last_modified_date: .*$/\1last_modified_date: \"${new_date}\"/" ${1}

echo "\nDone.\n"
