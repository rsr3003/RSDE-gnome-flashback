INSTALL := install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D RSDE.desktop $(PREFIX)/usr/share/xsessions/RSDE.desktop
	$(INSTALL) -m0644 -D logout.desktop $(PREFIX)/usr/share/applications/logout.desktop
	$(INSTALL) -m0644 -D reboot.desktop $(PREFIX)/usr/share/applications/reboot.desktop
	$(INSTALL) -m0644 -D shutdown.desktop $(PREFIX)/usr/share/applications/shutdown.desktop

	# Adapted from https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.session $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m0755 -D i3-gnome-flashback-session $(PREFIX)/usr/bin/i3-gnome-flashback-session
	$(INSTALL) -m0755 -D i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback
	$(INSTALL) -m0644 -D i3-gnome-flashback.desktop $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop

uninstall:
	rm -f $(PREFIX)/usr/share/xsessions/RSDE.desktop \
			$(PREFIX)/usr/bin/i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback-session \
			$(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session \
			$(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop \
			$(PREFIX)/usr/share/applications/logout.desktop \
			$(PREFIX)/usr/share/applications/reboot.desktop \
			$(PREFIX)/usr/share/applications/shutdown.desktop

.PHONY: all install uninstall
