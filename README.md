# Youtube Music Application for Ubuntu

Youtube music application for ubuntu generated by [nativefier](https://github.com/jiahaog/nativefier). 

### Screenshot
![image](https://user-images.githubusercontent.com/16697306/68017872-1a40c300-fcdb-11e9-928a-0599b055c95c.png)

### Installation
```bash
$ git clone https://github.com/sungjunyoung/ytmusic-ubuntu.git
$ cd ./ytmusic-ubuntu
$ ./install.sh
Your installation directory (default: /home/sungjunyoung/Applications/ytmusic-ubuntu): 
Directory /home/sungjunyoung/Applications/ytmusic-ubuntu not exists. Do you want to create a directory? [y/n]: y
~/Applications/ytmusic-ubuntu ~/Sources/private/ytmusic-ubuntu
resources/
resources/electron.asar
resources/app/
resources/app/lib/
...
resources/app/node_modules/ms/license.md
resources/app/icon.png
resources/app/.eslintrc.yml
youtube-music
~/Sources/private/ytmusic-ubuntu

Select your desktop entry location
 1) /usr/share/applications/
 2) /home/sungjunyoung/.local/share/applications/
Which location do you prefer? [1/2]: 2
~/Applications/ytmusic-ubuntu ~/Sources/private/ytmusic-ubuntu
~/Sources/private/ytmusic-ubuntu
Done.
```
- Now you can execute `Youtube Music` in your dashboard

### Google Authentication
![image](https://user-images.githubusercontent.com/16697306/68017504-38f28a00-fcda-11e9-89cc-23c55ba722e0.png)

- Right click the `SIGN IN` button
- Choose `Open Link In New Window`
- Login with google account
- Close the browser `https://music.youtube.com` tab and login window
- Right click the `SIGN IN` button and choose `Open Link In New Window` again
- Now you can use application without login