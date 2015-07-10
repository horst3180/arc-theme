themedir        = $(datadir)/themes/Arc
themedarkerdir  = $(datadir)/themes/Arc-Darker
themedarkdir    = $(datadir)/themes/Arc-Dark

ithemedir       = $(DESTDIR)$(themedir)
ithemedarkerdir   = $(DESTDIR)$(themedarkerdir)
ithemedarkdir  = $(DESTDIR)$(themedarkdir)

install-data-local:

if ENABLE_LIGHT
	$(MKDIR_P) $(ithemedir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_DARKER
	$(MKDIR_P) $(ithemedarkerdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-darker $(ithemedarkerdir)/index.theme
endif # ENABLE_LIGHT

if ENABLE_DARK
	$(MKDIR_P) $(ithemedarkdir)
	cp --no-preserve=mode,ownership $(srcdir)/index.theme-dark $(ithemedarkdir)/index.theme
endif # ENABLE_DARK


if ENABLE_GNOME_SHELL
	$(MKDIR_P) $(ithemedir)
	cp -rH --no-preserve=mode,ownership $(srcdir)/gnome-shell/$(GNOME_VERSION) $(ithemedir)/gnome-shell
endif # ENABLE_GNOME_SHELL


if ENABLE_GTK2

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemedir)

	cd $(ithemedir)/gtk-2.0 && rm -rf \
		assets-dark \
		gtkrc-darker \
		gtkrc-dark \
		*.sh \
		assets.svg \
		assets-dark.svg \
		assets.txt
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemedarkerdir)

	cd $(ithemedarkerdir)/gtk-2.0 && mv gtkrc-darker gtkrc

	cd $(ithemedarkerdir)/gtk-2.0 && rm -rf \
		assets-dark \
		gtkrc-dark \
		*.sh \
		assets.svg \
		assets-dark.svg \
		assets.txt
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/gtk-2.0 $(ithemedarkdir)

	cd $(ithemedarkdir)/gtk-2.0 && \
		mv gtkrc-dark gtkrc && \
		rm -rf assets && \
		mv assets-dark assets

	cd $(ithemedarkdir)/gtk-2.0 && rm -rf \
		gtkrc-darker \
		*.sh \
		assets.svg \
		assets-dark.svg \
		assets.txt
endif # ENABLE_DARK

endif # ENABLE_GTK2


if ENABLE_GTK3

if ENABLE_LIGHT
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedir)/gtk-3.0

	cd $(ithemedir)/gtk-3.0 && rm -f \
		assets.svg \
		README \
		*.scss \
		*.sh \
		*.txt \
		Gemfile* \
		gtk-contained-darker.css \
		gtk-contained-solid-darker.css

if ENABLE_TRANSPARENCY
	cd $(ithemedir)/gtk-3.0 && rm \
		gtk-contained-solid.css \
		gtk-contained-solid-dark.css
endif # ENABLE_TRANSPARENCY

endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedarkerdir)/gtk-3.0

	cd $(ithemedarkerdir)/gtk-3.0 && rm -f \
		assets.svg \
		README \
		*.scss \
		*.sh \
		*.txt \
		Gemfile* \
		gtk-contained-solid.css

if ENABLE_TRANSPARENCY
	cd $(ithemedarkerdir)/gtk-3.0 && rm \
		gtk-contained-solid-darker.css \
		gtk-contained-solid-dark.css
endif # ENABLE_TRANSPARENCY

	cd $(ithemedarkerdir)/gtk-3.0 && mv gtk-contained-darker.css gtk-contained.css
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -rH --no-preserve=mode,ownership $(srcdir)/gtk-3.0/$(GNOME_VERSION) $(ithemedarkdir)/gtk-3.0

	cd $(ithemedarkdir)/gtk-3.0 && rm -f \
		assets.svg \
		README \
		*.scss \
		*.sh \
		*.txt \
		Gemfile* \
		gtk-dark.css \
		gtk-contained-solid.css \
		gtk-contained-darker.css \
		gtk-contained-solid-darker.css

if ENABLE_TRANSPARENCY
	cd $(ithemedarkdir)/gtk-3.0 && rm \
		gtk-contained-solid-dark.css
endif # ENABLE_TRANSPARENCY

	cd $(ithemedarkdir)/gtk-3.0 && mv gtk-contained-dark.css gtk-contained.css
endif # ENABLE_DARK

if !ENABLE_TRANSPARENCY

if ENABLE_LIGHT
	cd $(ithemedir)/gtk-3.0 && \
		mv gtk-contained-solid.css gtk-contained.css && \
		mv gtk-contained-solid-dark.css gtk-contained-dark.css
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cd $(ithemedarkerdir)/gtk-3.0 && \
		mv gtk-contained-solid-darker.css gtk-contained.css && \
		mv gtk-contained-solid-dark.css gtk-contained-dark.css
endif # ENABLE_DARKER

if ENABLE_DARK
	cd $(ithemedarkdir)/gtk-3.0 && \
		mv gtk-contained-solid-dark.css gtk-contained.css
endif # ENABLE_DARK

endif #!ENABLE_TRANSPARENCY

endif # ENABLE_GTK3


if ENABLE_METACITY

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedir)

	cd $(ithemedir)/metacity-1 && rm metacity-theme-1-dark.xml metacity-theme-2-dark.xml
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedarkerdir)

	cd $(ithemedarkerdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/metacity-1 $(ithemedarkdir)

	cd $(ithemedarkdir)/metacity-1 && \
		mv metacity-theme-1-dark.xml metacity-theme-1.xml && \
		mv metacity-theme-2-dark.xml metacity-theme-2.xml
endif # ENABLE_DARK

endif # ENABLE_METACITY


if ENABLE_UNITY

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedir)

	cd $(ithemedir)/unity && rm -rf window-buttons-dark
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedarkerdir)

	cd $(ithemedarkerdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/unity $(ithemedarkdir)

	cd $(ithemedarkdir)/unity && \
	rm -rf window-buttons && \
	mv window-buttons-dark window-buttons
endif # ENABLE_DARK

endif # ENABLE_UNITY


if ENABLE_XFCE_NOTIFY
	$(MKDIR_P) $(ithemedir)
	cp -r --no-preserve=mode,ownership $(srcdir)/xfce-notify-4.0 $(ithemedir)
endif # ENABLE_XFCE_NOTIFY


if ENABLE_XFWM

if ENABLE_LIGHT
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4 $(ithemedir)
endif # ENABLE_LIGHT

if ENABLE_DARKER
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4-dark $(ithemedarkerdir)/xfwm4
endif # ENABLE_DARKER

if ENABLE_DARK
	cp -r --no-preserve=mode,ownership $(srcdir)/xfwm4-dark $(ithemedarkdir)/xfwm4
endif # ENABLE_DARK

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
		xfwm4-dark \
		index.theme \
		index.theme-darker \
		index.theme-dark \
		$(distdir)
