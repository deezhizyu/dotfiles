git clone https://github.com/phocus/gtk.git phocus
ln -sf phocus phocus_refresh

cp patch/* phocus/ -r

cd phocus

make
sudo make install

ln -sf ~/.themes/phocus/gtk-4.0/gtk.css ~/.config/gtk-4.0/gtk.css
ln -sf ~/.themes/phocus/gtk-4.0/assets ~/.config/gtk-4.0/assets
