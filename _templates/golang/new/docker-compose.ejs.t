---
to: <%= name %>/docker-compose.yml
---
version: "3"

services:
  dev:
    build:
      context: .
      dockerfile: goproxy.dockerfile
    image: goproxy:1.15
    container_name: <%= name %>
    working_dir: /app
    volumes:
      - ./app:/app
      - golang:/root
      - golang:/go
    # ports:
    #   - 8080:8080
    tty: true

volumes:
  golang:
    name: golang
