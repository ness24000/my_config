
The structure of the directory is the following. 
.
├── bashrc
├── bin 
│   ├── firefox_translate
│   └── print_path
├── emacs.d
│   ├── init.el
├── .gitignore
├── make_links
└── readme.txt


This repository contains configuration files for Emacs and Bash, as
well as a repository to include personal scripts and programs that
should be available from the shell. The purpose is to have a
synchronized configuration in all laptops and servers one uses. If an
update is made in one machine, one simply needs to push it to the
remote and it will be available in all other machines.

This directory can be placed anywhere in the computer, run make_links
and a symbolic link to the configuration files and the personal
scripts directory will be created in the appropriated locations
(i.e. the locations where the configured programs look for their
configuration files). If there already exists files or directories
with the same name in the target locations, a back up is created.

The .gitignore file is used to make sure that only relevant files are
tracked and pushed by git. This is crucial as many files are created
by Emacs packages that are not worth tracking and may, in fact,
overload git. This, nevertheless, implies that some extra steps are
may be needed in order to create this ignored yet necessary
files. These are generally made clear by Emacs. 

       
