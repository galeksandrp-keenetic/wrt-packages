#!/bin/bash

Fix_packages_list() {
  awk  'BEGIN{RS="\n\n"} /^Package: */ { print ;print ""}' < "$1/Packages" | gzip > "$1/Packages.gz"
  zcat "$1/Packages.gz" > "$1/Packages"
}

Fix_packages_list $1
