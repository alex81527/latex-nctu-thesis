# A LateX template for Phd/MS thesis of College of Computer Science, National Chiao Tung University, Hsinchu, Taiwan.  

## Required Packages:  
+ ### TexLive:  
    (Ubuntu) `sudo apt-get install texlive-full`   
    (Arch) `sudo pacman -S texlive-most texlive-lang`  
+ ### Fonts  
    **[Arial/Times New Roman]**:   
    (Ubuntu) `sudo apt-get --reinstall install ttf-mscorefonts-installer`  
    (Arch) `sudo pacman -S ttf-liberation`  
    **[標楷體]**:
    ```
    [ ! -d ~/.local/share/fonts ] && mkdir -p ~/.local/share/fonts  
    curl -sSL https://raw.githubusercontent.com/alex81527/latex-nctu-thesis/master/latex-src/fonts/kaiu.ttf > ~/.local/share/fonts/kaiu.ttf  
    fc-cache -fv  
    ```
+ ### LaTex Editor: Anything will do, e.g., TeXmaker/TeXstudio/TeXShop/etc. I prefer TeXstudio.  
    `sudo apt-get install texstudio`  
    Go to Options->Configure TeXstudio->Build->Default Compiler, choose XeLateX.  
+ ### Bibtex Manager:   
    `sudo apt-get install jabref`  

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
