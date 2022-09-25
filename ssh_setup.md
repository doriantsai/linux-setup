# setup ssh with new computer/pi

Following SSH instructions, https://docs.github.com/en/authentication/connecting-to-github-with-ssh:

    ssh-keygen -t ed25519 -C "dorian.tsai@gmail.com"
    
Enter file name (or just press enter for default), enter passphrase:

    eval "$(ssh-agent -s)"
    
Add ID to ssh agent based on file name from first step

    ssh-add ~/.ssh/id_ed25519
    cat ~/.ssh/id_ed25519.pub

Copy and paste key into ssh settings on Github.
