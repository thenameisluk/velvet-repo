# Moved 18-09-2024

moved to gitlab : https://gitlab.com/velvet-os/velvet-repo
due to pages limit (github 1gb -> gitlab 10gb) usually doesn't matter that much but hosting a few versions of kernel might have cause and issue

the address (https://repo.velvet-os.org/repo) and public key stay the same, no need to update existing apt configuration

this repo will not be updated anymore

# velvet-repo

this isn't an offical (velvet os) repo (yet) just my side project

repo containing packages usefull for running debian on chromebook :3

- kelner
- velvet tools
- misc

content of the repo [all](https://repo.velvet-os.org/repo/dists/stable/main/binary-all/Packages) and [arm64](https://repo.velvet-os.org/repo/dists/stable/main/binary-arm64/Packages)

# adding repo

```
#add public key
curl -sS https://repo.velvet-os.org/repo/velvet_repo.asc | sudo tee -a /etc/apt/trusted.gpg.d/velvet_repo.asc
#add source
echo "deb [arch=arm64,all] https://repo.velvet-os.org/repo stable main" | sudo tee /etc/apt/sources.list.d/velvet_repo.list
```

# testing repo

build repo ./buildme

add ```deb file:/.../repo stable main``` to ```/etc/apt/sources.list``` or similar

then update repos
```
sudo apt-get update --allow-insecure-repositories
```
_Note. ```--allow-insecure-repositories``` is required for fetching unsigned repo_
and try to install new package

notes for the future https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/
