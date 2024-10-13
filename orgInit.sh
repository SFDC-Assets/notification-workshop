sf demoutil org create scratch -f config/project-scratch-def.json -d 2 -s -p notification -e build.workshop
sf project deploy start
sf org assign permset -n Notifications
sf demoutil user password set -p salesforce1 -g User -l User
sf automig load -d data --deletebeforeload --concise
sf org open
