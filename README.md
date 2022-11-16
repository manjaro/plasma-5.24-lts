
## Installing Plasma 5.24 LTS on Manjaro Linux

Insert the following lines right above [extra] in /etc/pacman.conf:

   [plasma-5.24-lts]
   SigLevel = Required DatabaseOptional
   https://manjaro.github.io/plasma-5.24-lts/x86_64/

Install Plasma LTS on your system

   sudo sh -c "pacman -Syyuu"

Voila! You should now see Unity in the session list, and be able to log into it.
