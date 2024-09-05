# velvet-repo

repo containing packages usefull for running debian on chromebook :3

- kelner
- velvet tools
- misc

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
_Note. ```--allow-insecure-repositories``` is required for fetching unsigned repo
and try to install new package

notes for the future https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/