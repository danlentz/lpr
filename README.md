print-op
========

This package defines an ASDF operation to create a printout of a system's source code in
compilation order.  This operation makes use of the open-source utility _enscript_ which,
if not already present on your system, should be easily installable using your favorite
package manager.  The configuration options that control the layout and formatting used
for printing are configurable slots of the `print-op` object and, as such, may be 
customized to individual taste, although the options supplied by default use a 2-up
landscape orientation that I have found to be quite readable, compact, and suitable for
printing hard copies of large libraries which, otherwise, might be unwieldy and inconvenient
to handle.  The location of the _enscript_ binary executable is assumed to be in the search
path of the shell environment of the running common-lisp instance. If it is located otherwise,
the fully qualified pathname may be specified in the source file 'print-op.lisp'

One may generate a hardcopy printout of an ASDF system by invocation similar to one of the
examples below:

```common-lisp
(lpr:print-system :cl-utilities)


(lpr:print-system :alexandria :program "enscript" :indent 0 :nup 1 :ncol 1 :media "Letter" 
                              :heading-fontspec "Helvetica-BoldOblique@10"
                              :body-fontspec "Courier-New@9")


(asdf:operate (make-instance 'lpr:print-op 
                 :program "/path/to/enscript"
                 :indent  0
                 :nup     2
                 :ncol    2
                 :media   "Letter"
                 :heading-fontspec "Helvetica-BoldOblique@10"
                 :body-fontspec    "Courier-New@9")
              (asdf:find-system :rucksack))
```
