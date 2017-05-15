if [ -n "`env yaourt 2>&1 | grep 'No such file or directory'`" ]; then
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
fi

yaourt -S ttf-ms-fonts --noconfirm

