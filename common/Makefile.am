themedir       = $(datadir)/themes/Arc
ithemedir      = $(DESTDIR)$(themedir)

install-data-local:
	$(MKDIR_P) $(ithemedir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme $(ithemedir)


if ENABLE_GNOME_SHELL
	cp -rH --no-preserve=mode,ownership $(srcdir)/gnome-shell/$(GNOME_VERSION) $(ithemedir)/gnome-shell
endif # ENABLE_GNOME_SHELL


if ENABLE_GTK2
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemedir)
endif # ENABLE_GTK2


if ENABLE_GTK3
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedir)/gtk-3.0

	cd $(ithemedir)/gtk-3.0 && rm -f \
		assets.svg \
		README \
		*.scss \
		*.sh \
		*.txt \
		Gemfile*

if !ENABLE_TRANSPARENCY
	cd $(ithemedir)/gtk-3.0 && mv gtk-contained-solid.css gtk-contained.css
endif #!ENABLE_TRANSPARENCY

endif # ENABLE_GTK3


if ENABLE_METACITY
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedir)
endif # ENABLE_METACITY


if ENABLE_UNITY
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedir)
endif # ENABLE_UNITY


if ENABLE_XFWM
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4 $(ithemedir)
endif # ENABLE_XFWM


uninstall-local:
	rm -rf $(ithemedir)

	-rmdir -p $(DESTDIR)$(datadir)/themes 2>/dev/null


dist-hook:
	cp -r \
		gnome-shell \
		gtk-2.0 \
		gtk-3.0 \
		metacity-1 \
		unity \
		xfwm4 \
		index.theme \
		$(distdir)
