install:
    yarn install

rebuild-staging:
    git fetch
    git push origin --delete staging
    git branch -d -r origin/staging
    git checkout main
    git pull
    git fetch && git checkout -b staging origin/main

lint:
    yarn prettier . --write
