
(in-package :CL-USER)

(defpackage :lpr
  (:use common-lisp)
  (:export :print-op :print-system)
  (:documentation "This package defines an ASDF operation to create a printout of a system's source code in
                   compilation order.  This operation makes use of the open-source utility 'enscript' which,
                   if not already present on your system, should be easily installable using your favorite
                   package manager.  The configuration options that control the layout and formatting used
                   for printing are configurable slots of the 'print-op' argument and, as such, may be 
                   customized to individual taste, although the options supplied by default use a 2-up
                   landscape orientation that I have found to be quite readable, compact, and suitable for
                   printing hard copies of large libraries which, otherwise, might be unwieldy and inconvenient
                   to handle.  The location of the 'enscript' binary executable is assumed to be in the search
                   path of the shell environment of the running common-lisp instance. If it is located otherwise,
                   the fully qualified pathname may be specified in the source file 'print-op.lisp'"))
