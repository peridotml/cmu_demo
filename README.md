# CMU Demo

## Local Setup
- Install R on macosx [directions](https://www.chrisjmendez.com/2017/01/19/installing-r-using-homebrew/)
- Install VSCode [directions](https://code.visualstudio.com/)
- Install Docker [directions](https://docs.docker.com/desktop/install/mac-install/)


## Git
```sh
# clone repo
git clone https://github.com/peridotml/cmu_demo.git
cd cmu_demo

# checkout a branch
git checkout -b second-branch
```

## Docker
```sh
# build image
docker build -t ghcr.io/peridotml/r_demo .

# run
docker run --rm ghcr.io/peridotml/r_demo:latest
docker run --rm ghcr.io/peridotml/r_demo:latest 10 10

# interactively use container
docker run -it --entrypoint /bin/bash ghcr.io/peridotml/r_demo:latest
```


## Push changes

```sh
# push image
docker push ghcr.io/peridotml/r_demo:latest

# save changes
git commit -m "adding x, y, and z"
git push
```

