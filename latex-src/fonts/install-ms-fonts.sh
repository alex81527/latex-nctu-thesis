mkdir AUR && cd AUR
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -cis --noconfirm
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -cis --noconfirm
cd ../../
rm -rf AUR

yaourt -S ttf-ms-fonts --noconfirm

