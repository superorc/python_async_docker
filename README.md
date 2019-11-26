# python_async_docker
demo with production ready Gunicorn (support ASGI) Dockerfile

# Build docker img
    $ docker build -t python_async:prod_v.0.5 .
    
# Run 
    $ docker run -d -p 8000:8000 python_async:prod_v.0.5
    
# Test
    $ curl 0.0.0.0:8000
    Hello, world![
