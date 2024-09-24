# Create the backup
1. find sd card `diskutil list`
2. unmount sd card `diskutil unmountDisk /dev/disk5`
3. copy sd card to image `sudo dd if=/dev/rdisk5 of=input.img bs=4m`


# Shrink the image
Source [Drewsif/PiShrink](https://github.com/Drewsif/PiShrink)

1. image in input folder
2. rename image to input.img
3. `docker build -t pishrink-image .`
4. `docker run --privileged=true -v ./input:/usr/src/app pishrink-image`
