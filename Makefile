.PHONY: build run docker-build clean

build:
	npm install && npm run build

run:
	npm run dev

docker-build:
			docker build -t baladevops10.azurecr.io/roboshop-frontend .
			docker push  baladevops10.azurecr.io/roboshop-frontend

clean:
	rm -rf node_modules .next
