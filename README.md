# Hydras to promote mastery of Emacs
In-line pop-up menus of commands that you are trying to master or thought you mastered.
[Hydras](https://github.com/abo-abo/hydra) are popup menus in Emacs that users can build and customize.
The blue colored letters below are mapped to commands that are invoked by entering the letter(s).

These hydra were inspired by a discussion at a recent Austin Emacs Meetup where Ag mentioned maintaining a list of keybindings that he was trying to master.
The idea here is to use hydras to display this list and related lists.
The use of the hydra has a low-energy barrier.
Just enter `C-c 1` from any buffer to display the master learning spiral hydra.

<p align="center"><img src="./images/master-buffer.png" alt="HTML5 Icon" style="width:800px"></p>


## Installation

Install whereever you see fit. 
My emacs directory (i.e., `~/emacs30`) is not a hidden folder, unlike what is recommended.
I store my hydras in a subfolder called `my-hydras` (i.e., `~/emacs30/my-hydras`).


```elisp
git clone https://github.com/MooersLab/emacs-learning-spiral-hydra.git
```

### Requirements

Requries the hydra package from MELPA.
I also use the pretty-hydra package.
I use version 30.0.5 of GNU Emacs on a Mac.
It should work with version 29 of GNU Emacs.


### Configuration

The configuration below is for the users of the `use-package` package system for managing Emacs packages.

- Customize file path. I store the file learning-spiral-hydra.el inside of the folder `~/emacs30/my-hydras/`
- Customize the keybinding below if it conflicts. Check by entering `C-h k C-c 1`, where `C` stands for the Control key and the `-` means press the Control key with the second key simultaneously.
- Customize the content of each hydra to meet your learning objectives.
- Add the following lines to your init.el file.

```elisp
(use-package learning-spiral-hydras
  :load-path "~/emacs30/my-hydras/")
(global-set-key (kbd "C-c 1") 'hydra-of-learning-spiral/body)
```

#### Caveats
You may have to delete the following line from each hdyra if you lack a master hdyra-of-hydras.

```elisp
("z" hydra-of-hydras/body :color blue)
```

# Learning sprial hydra
Below is a literate programming document.
It was generated from a buffer containing the hydras by using the elispdoc package found [here](https://github.com/benleis1/elispdoc).

This set of hydras is meant to be an in-line memory aid.
It is meant to support the gradual mastery of Emacs.

This is a nested set of hydras.
The hydra at the bottom is the master hydra: hydra-of-learning-spiral.
It has commands for calling the other hydras above it.

## hydra-of-learning-spiral-concepts-mastered

<p align="center"><img src="images/concepts.png" alt="HTML5 Icon" style="width:600px"  /></p>


This hydra is a to-do list of skills that I am trying to master.
```elisp
(defhydra hydra-of-learning-spiral-concepts-mastered (:hint nil)
"
^Concepts and skills trying to master
-----------------------------------------------------------------------------
LaTeX workflow in Emacs
Voice control in Emacs
Make snippets of useful code blocks in org-mode.

^----------------------------------------------------------------------------
_km_ learning spral: keybindings mastered
_p_ learning sprial: packages trying to master

_ls_ Return to learning spiral
_z_ Return to parent hdyra-of-hydras
_q_ quit
^----------------------------------------------------------------------------
"
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("ls" hydra-of-learning-spiral/body :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))
```


## hydra-of-learning-spiral-keybindings-mastered

<p align="center"><img src="images/keybindings.png" alt="HTML5 Icon" style="width:600px" /></p>

This hydra in a list of keybinding that I thought I had mastered.
I list these as a reality check and as a reminder after long gaps in use of these keybindings

```elisp
(defhydra hydra-of-learning-spiral-keybindings-mastered (:hint nil)
"
^Keybindings and commands mastered
------------------------------------------------------------------------------
C-x C-c                Quit Emacs
C-g                    Abort command entry
C-x C-s                Save file
C-x C-w                Write file
C-x C-f                Open a file
C-x d                  Open dired
C-x C-e                Run elisp sexp
C-c C-e                Export org-mode to another format
C-c C-a                Compile to PDF when in latex-mode or auctex-mode
C-1                    Close buffer
C-x 1                  Display only one buffer
C-c 0                  Display hydra-of-hydras
C-y                    Paste
C-w                    Cut
s-c                    Copy
C-c 0                  Display master hydra
C-c 1                  Display learning spiral hdyra

M-x eval-buffer
M-x reload-hdyra

^------------------------------------------------------------------------------

_c_ learning spiral: concepts trying to master
_p_ learning sprial: packages trying to master

_ls_ Return to learning spiral
_z_ Return to parent hdyra-of-hydras
_q_ quit
^------------------------------------------------------------------------------
"
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)

("ls" hydra-of-learning-spiral/body :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))
```


## hydra-of-learning-spiral-packages-mastered

<p align="center"><img src="images/packages.png" /></p>

```elisp
(defhydra hydra-of-learning-spiral-packages-mastered (:hint nil)
"
^Packages trying to master
^------------------------------------------------------------------------------

auctex
latex-mode
lsp-grammarly
copilot

^------------------------------------------------------------------------------

_km_ learning spral: keybindings mastered
_c_ learning spiral: concepts trying to master

_ls_ Return to learning spiral
_z_ Return to parent hdyra-of-hydras
_q_ quit
^------------------------------------------------------------------------------
"
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)

("ls" hydra-of-learning-spiral/body :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))
```


## hydra-of-learning-spiral
This is the master hydra that lists the commands that I am trying to master.
It also calls subsidiary hydras that list
- the keybindings that I think I have mastered,
- the concepts that I am trying to master
- the packages that I am trying to master.

```elisp
(defhydra hydra-of-learning-spiral (:hint nil)
"
 ^Commands trying to master
 ------------------------------------------------------------------------------
 C-c =                 Use in auctex-mode to display TOC of document in separate buffer
 C-c d                 Display pop-up with info about text file including word count
 C-h l                 Display list of last commands
 s-,                   Open the customize buffer
 C-[scrollwheel-up]    zoom text in
 C-[scrollwheel-down]  zoom text out

 M-x delete-trailing-whitespace
 M-x lsp
 M-x query-replace M-precent sign
 M-x elispdoc-process-elisp-to-doc-buffer


 ^------------------------------------------------------------------------------

 _km_ learning spral: keybindings mastered
 _c_ learning spiral: concepts trying to master
 _p_ learning sprial: packages trying to master
 _he_ edit /emacs30/my-hydras/my-hydras.el
 _i_  edit init.el
 _ri_ reload init.el
 _rh_ reload hydras
 _z_ Return to parent hdyra-of-hydras
 _q_ quit
 ^------------------------------------------------------------------------------
 "
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
("i"  (find-file "/Users/blaine/emacs30/init.el") :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))
```

> This file was auto-generated by elispdoc.el
