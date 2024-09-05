structure

package-name
|-buildme <dest>

a package can build multiple versions
for example ```linux-stb-cbq+-6.9.9-1_arm64.deb and linux-stb-cbq+-6.6.23-1_arm64.deb```

!!! remember it is _ not - in ```..._<architecture>.deb``` !!1

```
<package-name>_<version>-<release-number>_<architecture>


    package-name is the name of our package

    release-number is used to track different releases of the same software 
    
    version; it’s usually set to 1, but hypothetically if there was an error in the packaging (e.g. a file was missed, or the description had an error in it, or a post-install script was wrong), this number would be increased to track the change, and
    
    architecture is the target architecture of the platform, amd64 in this example; however if your package is architecture-independent (e.g. a python script), then you can set this to all.

```

likely should be encorporated
based on https://earthly.dev/blog/creating-and-hosting-your-own-deb-packages-and-apt-repo/

also one meta package for the latest kernel
