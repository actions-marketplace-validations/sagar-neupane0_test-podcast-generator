#!/bin/bash

echo "Starting the application"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update feed" 
git push --set-upstream origin main







echo "End of the application"
```

```bash