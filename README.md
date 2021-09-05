# spm

A wrapper around the parts of Swift package management that I can never keep straight

#### Documentation
The following commands will help get started on a new project
```
% spm app # this makes a new app for you
% spm binary # this makes a new command line tool for you
```

And from there, these commands might help as progress happens
```
% spm gen # make an xcodeproj
% spm build # build the thing
% spm fetch # this updates the package and downloads everything
% spm run # build and run the thing
```

Here are all the aliases available:
```
USAGE: spm <command>

ARGUMENTS:
  <command>               The command to run. Command list: 
                          	'app' (aka: 'ios')
                          	'binary' (aka: 'cli', 'tool')
                          	'build' (aka: 'rebuild')
                          	'edit' (aka: 'generate', 'ide', 'project', 'xcode')
                          	'go' (aka: 'run')
                          	'download' (aka: 'fetch', 'refresh', 'update')

OPTIONS:
  -h, --help              Show help information.
```

#### PR's welcome? I have my own little thing…
Sure thing. Follow the [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/) and we'll be good to go.

#### License
Copyright 2021 Zachary Drayer

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

