FROM rector/rector:latest

LABEL "com.github.actions.name"="rector-action"
LABEL "com.github.actions.description"="Run Rector agains Your repository"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/prgTW/rector-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Tomasz Wójcik <tomasz.prgtw.wojcik@gmail.com>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
