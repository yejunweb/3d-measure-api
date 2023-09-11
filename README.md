# 3d-measure-api

## Start

```
$ npm install
$ npm install nodemon
$ node .\bin\www or nodemon .\bin\www
```

## View service

http://localhost:8880


## Deploy

```
# Start servive and rename
$ pm2 start ./bin/www --name 3d-measure-api

# Freeze your process list across server restart
$ pm2 list
```

## Self starting

```
# Generate Startup Script
$ pm2 startup

# Freeze your process list across server restart
$ pm2 save

# Remove Startup Script
$ pm2 unstartup
```

## Online service

http://10.123.234.25:8880