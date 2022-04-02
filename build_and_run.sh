docker build -t basic_native_app:dev .

docker run -it --rm -v ${PWD}/App:/app -v /app/node_modules -p 3000:3000 -e CHOKIDAR_USEPOLLING=true basic_native_app:dev
