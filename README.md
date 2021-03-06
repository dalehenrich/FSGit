#FileSystem-Git

*Note: Since both `FileSystem` and `FileSystem-Git` are under active development, a lot of things may brake / be broken, when you load the packages.*

FileSystem-Git is a [Git](http://www.git-scm.com) implementation for [Pharo](http://www.pharo-project.org) Smalltalk. The focus of this project is to bring the power of version management that Git provides to the Pharo environment without forcing users to use a command line (at least for day-to-day workflows).

This repository is part proof of concept and part backup for the development of FileSystem-Git and [FileTree](https://github.com/dalehenrich/filetree).

##Installation instructions
###Pharo 1.4 and Pharo 2.0
<ol>
<li>Get the latest `FileSystem` packages:</li>

```smalltalk
  Gofer new
    squeaksource3: 'Pharo20';
    package: 'FileSystem-Core';
    package: 'FileSystem-Disk';
    package: 'FileSystem-Memory';
    package: 'FileSystem-AnsiStreams';
    package: 'FileSystem-Tests-Core';
    package: 'FileSystem-Tests-Disk';
    package: 'FileSystem-Tests-Memory';
    package: 'FileSystem-Tests-AnsiStreams';
    load
```

<li>Load FileSystem-Git:</li>

```smalltalk
  Gofer new
    url: 'http://smalltalkhub.com/mc/MaxLeske/FileSytem-Git/main';
    package: 'System-Hashing';
    package: 'FileSystem-Git';
    load
```
</ul>
