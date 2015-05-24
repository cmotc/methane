## Process this file with automake to produce Makefile.in

## Created by Anjuta


uidir = $(pkgdatadir)/ui
ui_DATA = methane.ui


AM_CPPFLAGS = \
	-DPACKAGE_LOCALE_DIR=\""$(localedir)"\" \
	-DPACKAGE_SRC_DIR=\""$(srcdir)"\" \
	-DPACKAGE_DATA_DIR=\""$(pkgdatadir)"\" \
	$(METHANE_CFLAGS)

AM_CFLAGS =\
	 -Wall\
	 -g

bin_PROGRAMS = methane

methane_SOURCES = \
	methane.vala config.vapi

methane_VALAFLAGS =  \
	--pkg gtk+-3.0


methane_LDFLAGS =

methane_LDADD = $(METHANE_LIBS)


if PLATFORM_WIN32
methane_LDFLAGS += -Wl,--export-all-symbols
else
methane_LDFLAGS += -Wl,--export-dynamic
endif

if NATIVE_WIN32
methane_LDFLAGS += -mwindows
endif


EXTRA_DIST = $(ui_DATA)

# Remove ui directory on uninstall
uninstall-local:
	-rm -r $(uidir)
	-rm -r $(pkgdatadir)

