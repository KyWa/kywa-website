# Examples

## Build
oc process -f buildconfig.yaml --param-file build.env | oc apply -f -

## Deploy
oc process -f deployconfig.yaml --param-file deploy.env | oc apply -f -
