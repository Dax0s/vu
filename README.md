# Important
I recommend downloading this project as zip and then following the instructions provided (Green code button -> Download as zip)

# Introduction

I've created this repo to have all of the information in one place and provide straightforward setup instructions accessible to everyone

Since the Books folder in `Resources/komparch` is too big, it's uploaded separately: [Books](https://e.pcloud.link/publink/show?code=kZn2O2Zxmo7NcthJiSnPxOpFu3Kg4F4wra7)

*Note: I don't have a mac myself, so there won't be any instructions for it; however, I think that following Linux instructions could work, since they are both UNIX based*
*Note: file and directory names are case **insensitive***

## Setup

### Installation

Download [DOSBox](https://www.dosbox.com/download.php?main=1) for your operating system:
* In linux you can either download it by using your repo's package manager or from [DOSBox website](https://www.dosbox.com/download.php?main=1)
* [Windows](https://sourceforge.net/projects/dosbox/files/dosbox/0.74-3/DOSBox0.74-3-win32-installer.exe/download)
* [MacOS](https://sourceforge.net/projects/dosbox/files/dosbox/0.74-3/DOSBox-0.74-3-3.dmg/download)

### DOSBox setup

In this step we will update the DOSBox config file and download the necessary software to compile and link assembly files

#### Linux installation

Please follow **all** of the steps, since they are required for everything to work as intended

The DOSBox config file should be located in `~/.dosbox/dosbox-<version>.conf`

1. Create a directory on your local drive which we will be using as a drive in DOSBox  
*I recommend on using the 8086 folder which came with this repo, so if you've downloaded the zip it's already created at `<RepoLocation>/Subjects/komparch/8086`*
2. Create a new folder called `Programs` in the directory created previously  
    **Note: This folder's creation is mandatory, it's required to add tasm to PATH**
3. Locate the DOSBox config file, and then change these params:  
    `cputype=8086`
5. I recommend changing the display settings using this [tutorial](https://www.dosgamers.com/dos/dosbox-dos-emulator/screen-resolution)
6. Lastly, add these lines at the end of the file:
    ```sh
    # <directory> is the directory you've created in step one
    # For example: /home/domas/VU/Subjects/komparch/8086
    mount d <directory>
    d:

    SET PATH=%PATH%;D:\PROGRAMS\TASM\BIN
    ```

#### Windows installation

Please follow **all** of the steps, since they are required for everything to work as intended

On windows you can access the config file by pressing `Windows Button + Q`, then launching `DOSBox <version> Options` application

1. Create a directory on your local drive which we will be using as a drive in DOSBox  
*I recommend on using the 8086 folder which came with this repo, so if you've downloaded the zip it's already created at `<RepoLocation>/Subjects/komparch/8086`  
2. Create a new folder called `Programs` in the directory created previously  
    **Note: This folder's creation is mandatory, it's required to add tasm to PATH**
3. Open the DOSBox config file, and then change these params:  
    `cputype=8086`
5. I recommend changing the display settings using this [tutorial](https://www.dosgamers.com/dos/dosbox-dos-emulator/screen-resolution)
6. Lastly, add these lines at the end of the file:
    ```sh
    # <directory> is the directory you've created in step one
    # For example: /home/domas/VU/Subjects/komparch/8086
    mount d <directory>
    d:

    SET PATH=%PATH%;D:\PROGRAMS\TASM\BIN
    ```

---

#### Downloading tasm

Tasm is the application that is going to be used for compiling assembly files and then linking them to create executables

1. If you've downloaded the repository as zip, then tasm is already downloaded and is located in `Resources/komparch`, otherwise, download [tasm](https://e.pcloud.link/publink/show?code=XZssO2ZH1ambmYxcizECx78bs10Xm9JuiEk)
2. Open the zip file
3. Unzip **only** the `tasm` folder (we don't need the MACOS folder) from tasm.zip into `<directory>/Programs` (directory is the folder which you created for DOSBox)

Make sure, that the directory structure is like this:

`8086/Programs/tasm/<tasm-files>`

And not like this:

`8086/Programs/tasm/tasm/<tasm-files>`

That's it:D

### Working with assembly

#### Writing assembly programs

I recommend creating a .asm file (Create a new text file and change the extension from .txt to .asm) in the DOSBox directory you've created (I've also provided an example `Hello.asm` file) and then editing it with VSCode with `ASM Code Lens` extension installed

Once you want to run your assembly programm just follow **Runing assembly programs**
*You can update the file in your editor and it's going to update in DOSBox as well without reopening it, but you will have to recompile and relink the files (rerun the commands bellow)*

#### Running assembly programs

Open DOSBox and run these commands to compile your .asm file, link it, and then run the executable

```
tasm <filename>.asm
tlink <filename>.obj
<filename>.exe
```

I'm pretty sure there's a way to edit your .asm files in DOSBox as well, but this is the setup I'm currently working with

---

### Sources

* [Linas1](https://klevas.mif.vu.lt/~linas1/)
* [Exercises](https://klevas.mif.vu.lt/~linas1/KompArch/Tvarka1.html)
* [Valaitis website](https://klevas.mif.vu.lt/~valaitis/)
* [Tasm tutorial](https://trimtab.ca/2010/tech/tasm-5-intel-8086-turbo-assembler-download/)
* [tasm download](https://e.pcloud.link/publink/show?code=XZssO2ZH1ambmYxcizECx78bs10Xm9JuiEk)
* [Display config](https://www.dosgamers.com/dos/dosbox-dos-emulator/screen-resolution)
* [DOSBox](https://www.dosbox.com/)
* [Books](https://e.pcloud.link/publink/show?code=kZn2O2Zxmo7NcthJiSnPxOpFu3Kg4F4wra7)
