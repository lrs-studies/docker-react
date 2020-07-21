## Docker And React

Simple example of how to use ReactJs with Docker containers.

## Run

Local
```
❯ yarn 
❯ yarn start
```

Build image
```
❯ docker build -t [new-image-name] -f cloud/Dockerfile . --no-cache                                        
```

Container local (interactive mode)
```
❯ docker run -v ${PWD}:/app -v /app/node_modules -p 3001:3000 --rm -it [image-name]
```

Docker compose (local)
```
❯ docker-compose -f cloud/docker-compose.yml up -d --build
```

Docker compose (prod)
```
❯ docker-compose -f cloud/docker-compose-prod.yml up -d --build                                          
```

bash file (dev)
```
❯ ./run-app-deploy.sh --dev
```

bash file (prod)
```
❯ ./run-app-deploy.sh --prod
```

References: 
https://blog.codeexpertslearning.com.br/dockerizando-uma-aplica%C3%A7%C3%A3o-react-js-f6a22e93bc5d