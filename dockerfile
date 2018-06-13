FROM rustlang/rust:nightly
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

EXPOSE 8080
RUN rustc --version && cargo build
# CMD [ "cargo", "run" ]
# CMD cargo run 

CMD ROCKET_ENV=development cargo run