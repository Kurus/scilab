#
# Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
# Copyright (C) INRIA   - 2006 - Sylvestre Ledru
# Copyright (C) DIGITEO - 2009 - Pierre MARECHAL
#
# This file must be used under the terms of the CeCILL.
# This source file is licensed as described in the file COPYING, which
# you should have received as part of this distribution.  The terms
# are also available at
# http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
#


#### Target ####
modulename=jvm

#### jvm : Conf files ####
libscijvm_la_rootdir = $(mydatadir)
libscijvm_la_root_DATA =  license.txt

#### jvm : init scripts ####
libscijvm_la_etcdir = $(mydatadir)/etc
libscijvm_la_etc_DATA = etc/jvm.quit etc/jvm.start




libscijvm_la_CPPFLAGS = $(JAVA_JNI_INCLUDE) \
			-I$(top_srcdir)/modules/dynamic_link/includes/ \
			-I$(srcdir)/includes/ \
			-I$(srcdir)/src/c \
			$(XML_FLAGS) \
			-I$(top_srcdir)/modules/output_stream/includes/ \
			-I$(top_srcdir)/modules/localization/includes/ \
			-I$(top_srcdir)/modules/string/includes/ \
			-I$(top_srcdir)/modules/api_scilab/includes/ \
			-I$(top_srcdir)/modules/call_scilab/includes/ \
			-I$(top_srcdir)/modules/fileio/includes/ \
			-I$(top_srcdir)/modules/preferences/includes/ \
			$(AM_CPPFLAGS)

pkglib_LTLIBRARIES = libscijvm-disable.la

if GUI
USEANT=1
pkglib_LTLIBRARIES += libscijvm.la
noinst_LTLIBRARIES = libscijvm-algo.la
endif

libscijvm_la_LDFLAGS = -pthread $(AM_LDFLAGS)

# FIXME: This a platform specific flag, this should be done on configure.ac
if IS_MACOSX
libscijvm_la_LDFLAGS += -framework JavaVM
endif

libscijvm_la_LIBADD = libscijvm-algo.la $(XML_LIBS) $(JAVA_JNI_LIBS)

#### jvm : gateway declaration ####
libscijvm_la_sci_gatewaydir = $(mydatadir)/sci_gateway
libscijvm_la_sci_gateway_DATA = sci_gateway/jvm_gateway.xml

#### jvm :  dtd files ####
libscijvm_la_xmldir = $(mydatadir)/xml
libscijvm_la_xml_DATA = xml/classpath.dtd  xml/librarypath.dtd

#### jvm : include files ####
libscijvm_la_includedir=$(pkgincludedir)
libscijvm_la_include_HEADERS = includes/getScilabJavaVM.h \
includes/getScilabJNIEnv.h \
includes/addToClasspath.h \
includes/addToLibrarypath.h \
includes/getScilabObject.h

GATEWAY_C_SOURCES = sci_gateway/c/sci_system_getproperty.c \
sci_gateway/c/sci_system_setproperty.c \
sci_gateway/c/sci_javaclasspath.c \
sci_gateway/c/gw_jvm.c \
sci_gateway/c/sci_javalibrarypath.c


JVM_C_SOURCES = src/c/InitializeJVM.c \
src/c/TerminateJVM.c \
src/c/JVM_Unix.c \
src/c/JVM.c \
src/c/addToClasspath.c \
src/c/loadOnUseClassPath.c \
src/c/loadBackGroundClassPath.c \
src/c/getClasspath.c \
src/c/system_getproperty.c \
src/c/system_setproperty.c \
src/c/loadClasspath.c \
src/c/createMainScilabObject.c \
src/c/JVM_commons.c \
src/c/catchIfJavaException.c \
src/c/loadLibrarypath.c \
src/c/getLibrarypath.c \
src/c/addToLibrarypath.c \
src/c/getJvmOptions.c

libscijvm_disable_la_SOURCES = src/nojvm/nojvm.c
libscijvm_disable_la_CPPFLAGS = -I$(srcdir)/includes/ \
			-I$(top_srcdir)/modules/call_scilab/includes/ \
			-I$(srcdir)/src/c \
			-I$(top_srcdir)/modules/localization/includes/ \
			-I$(top_srcdir)/modules/api_scilab/includes/ \
			-I$(top_srcdir)/modules/output_stream/includes/ \
			-I$(top_srcdir)/modules/preferences/src/c \
			$(AM_CPPFLAGS)

libscijvm_algo_la_SOURCES = $(JVM_C_SOURCES)
libscijvm_la_SOURCES = $(GATEWAY_C_SOURCES)
libscijvm_algo_la_CPPFLAGS = $(libscijvm_la_CPPFLAGS)

# For the code check (splint)
CHECK_SRC= $(libscijvm_la_SOURCES)
INCLUDE_FLAGS = $(libscijvm_la_CPPFLAGS)

CLEANFILES = etc/jvm_options.xml

include $(top_srcdir)/Makefile.incl.am
