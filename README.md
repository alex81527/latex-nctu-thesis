# A LateX template for Phd/MS thesis of College of Computer Science, National Chiao Tung University, Hsinchu, Taiwan.  

## Required Packages:  
+ ### TexLive:  
    | OS            | Command                                                         |
    |---------------|-----------------------------------------------------------------|
    | Windows       | [Download](https://www.tug.org/texlive/acquire-netinstall.html) |
    | Debian/Ubuntu | `sudo apt-get install texlive-full`                             |
    | ArchLinux     | `sudo pacman -S texlive-most`                                   |

+ ### Fonts  
    Windows users can skip this step, since Arial/Times New Roman/標楷體 are Microsoft system fonts.

    **[Arial/Times New Roman]**:   
    | OS            | Command                                                                                                                         |
    |---------------|---------------------------------------------------------------------------------------------------------------------------------|
    | Debian/Ubuntu | `sudo apt-get --reinstall install ttf-mscorefonts-installer`                                                                    |
    | ArchLinux     | `sh -c "$(curl -sSL,https://raw.githubusercontent.com/alex81527/latex-nctu-thesis/master/latex-src/fonts/install-ms-fonts.sh)"` |
    
    
    **[標楷體]**:
    ```
    [ ! -d ~/.local/share/fonts ] && mkdir -p ~/.local/share/fonts  
    curl -sSL https://raw.githubusercontent.com/alex81527/latex-nctu-thesis/master/latex-src/fonts/kaiu.ttf > ~/.local/share/fonts/kaiu.ttf  
    fc-cache -fv  
    ```
+ ### LaTex Editor: Anything will do, e.g., TeXmaker/TeXstudio/TeXShop/etc. I prefer TeXstudio.  
    | OS            | Command                               |
    |---------------|---------------------------------------|
    | Windows       | [Download](http://www.texstudio.org/) |
    | Debian/Ubuntu | `sudo apt-get install texstudio`      |
    | ArchLinux     | `sudo pacman -S texstudio`            |
    
    Go to Options->Configure TeXstudio->Build->Default Compiler, and choose XeLateX. It natively supports Unicode and can use your system font without having to mess with the TeX font system.  
    
+ ### Bibtex Manager:   
    | OS            | Command                            |
    |---------------|------------------------------------|
    | Windows       | [Download](http://www.jabref.org/) |
    | Debian/Ubuntu | `sudo apt-get install jabref`      |
    | ArchLinux     | `sudo pacman -S jabref`            |

## How to use this template:  
LateX source files are placed in `latex-src`. First, you should fill in the required fields in `main.tex`. Then complete the following steps:  
+ Cover Page  
    There is a `.docx` template in `cover_page`. Modify and save it as `cover.pdf` in this folder.  
+ Thesis Title Page  
    There is a `.docx` template in `title_page`. Modify and save it as `title.pdf` in this folder.  
+ Abstract  
    Modify and fill in the required fields in `chinese_abstract/ab_zh.tex` and `abstract/ab.tex`.  
+ Acknowlegdement  
    Write your acknowledgement in `acknowledgement/ack.tex`.  
+ Body  
    Wrtie the main content of your thesis in `body/sample-body`.  
+ References  
    Maintain your bibtex file in `sample-bibliography`.  

Compile `main.tex` either using `make` or your Latex editor to generate your thesis.  
Good luck and have fun!   

## FAQ

+ ### Why is the `.bbl` not generated when I compile from my LateX editor?

Sometimes they don't get things right. In this case, use `make clean` and `make`
instead.  
