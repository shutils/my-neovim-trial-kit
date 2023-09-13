# My neovim environment

## Usage

1. Clone this repository to any directory.
2. Build the Dockerfile.

   ```bash
   docker build . -t myvim:latest
   ```

3. Run the Docker Image.  

   ```bash
   docker run --rm -it myvim:latest
   ```

4. Run nvim.

   ```bash
   nvim
   ```

## Other

You can use this environment in any project by setting the volume during docker run.
