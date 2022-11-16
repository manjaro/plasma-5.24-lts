
## Installing Plasma 5.24 LTS on Manjaro Linux

Insert the following lines right above [extra] in /etc/pacman.conf:

```
   [plasma-5.24-lts]
   SigLevel = Required DatabaseOptional
   Server = https://manjaro.github.io/plasma-5.24-lts/x86_64/
```

Install Plasma LTS on your system

```
   sudo sh -c "pacman -Syyuu"
```

Voila! You should now see Plasma LTS on your system.
