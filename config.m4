dnl $Id$
dnl config.m4 for extension rust_fib

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(rust_fib, for rust_fib support,
Make sure that the comment is aligned:
[  --with-rust_fib             Include rust_fib support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(rust_fib, whether to enable rust_fib support,
dnl Make sure that the comment is aligned:
dnl [  --enable-rust_fib           Enable rust_fib support])

if test "$PHP_RUST_FIB" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-rust_fib -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/rust_fib.h"  # you most likely want to change this
  dnl if test -r $PHP_RUST_FIB/$SEARCH_FOR; then # path given as parameter
  dnl   RUST_FIB_DIR=$PHP_RUST_FIB
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for rust_fib files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       RUST_FIB_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$RUST_FIB_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the rust_fib distribution])
  dnl fi

  dnl # --with-rust_fib -> add include path
  dnl PHP_ADD_INCLUDE($RUST_FIB_DIR/include)

  dnl # --with-rust_fib -> check for lib and symbol presence
  dnl LIBNAME=rust_fib # you may want to change this
  dnl LIBSYMBOL=rust_fib # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $RUST_FIB_DIR/$PHP_LIBDIR, RUST_FIB_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_RUST_FIBLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong rust_fib lib version or lib not found])
  dnl ],[
  dnl   -L$RUST_FIB_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  PHP_SUBST(RUST_FIB_SHARED_LIBADD)

  PHP_ADD_LIBRARY_WITH_PATH(rust_fib, ., RUST_FIB_SHARED_LIBADD)

  PHP_NEW_EXTENSION(rust_fib, rust_fib.c, $ext_shared)
fi
