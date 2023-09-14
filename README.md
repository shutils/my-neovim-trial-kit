# My neovim environment

## Usage

1. Clone this repository to any directory.

   ```bash
   git clone https://github.com/shutils/my-neovim-trial-kit.git
   cd my-neovim-trial-kit
   ```

2. Build the Dockerfile.

   ```bash
   docker build -t myvim:latest --build-arg USERNAME=$(id -un) --build-arg GROUPNAME=$(id -gn) --build-arg UID=$(id -u) --build-arg GID=$(id -g) .
   ```

3. Run the Docker Image.  

   ```bash
   docker run --name myvim -itd myvim:latest
   docker exec -it myvim bash
   ```

4. Run nvim.  
   Start nvim with the following command.  
   After startup, the lang server will be installed, so please wait for a while.

   ```bash
   nvim
   ```

## Other

You can use this environment in any project by setting the volume during docker run.

### Example

```bash
docker run --name myvim -itd -v ~/go/src:/home/shutils/go/src myvim:latest
```
