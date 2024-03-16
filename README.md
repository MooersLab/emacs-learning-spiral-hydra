![Version](https://img.shields.io/static/v1?label=emacs-learning-sprial-hydra&message=0.3&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Hydras to promote lazy mastery of Emacs

## Brief introduction for the impatient
The above `learning-spiral-hydras.el`file supports a laser approach to trying to master key bindings (keyboard shortcuts) in Emacs by listing the ones that you are trying to master in a pop-up menu.
The pop-up menu is invoked by entering `C-c 1` from any buffer.
The file is easily edited for customization to meet your needs.
I expect to be used as a template.

## Longer introduction for the curious
[Hydras](https://github.com/abo-abo/hydra) are popup menus in Emacs--the ultimate text editor.
Hydras demonstrate the highly configurable nature of Emacs.
These pop-up menus are called hydras because one hydra popup menu can be used to call many other hydras.
That is, you can have a hydras of hydras.
There is no limit to how deeply they can be nested.

Hydras are often associated with a specific Emacs package.
They provide keyboard shortcuts in the form of single or multiple letters that can be entered in the keyboard or clicked on with the mouse to invoke the associated function.
In addition to running elisp functions inside of Emacs, hydras can be used to open external applications from inside Emacs, they can be used to open specific files for editing or reading, and they can be used to open specific web pages in your default browser are by using the built-in browser inside of the Emacs.

The blue colored letters in the snapshot of the hydra below are mapped to commands that are invoked by clicking the letter(s) with the computer mouse.
Hydras are used to avoid memorizing key bindings.

<p align="center"><img src="./images/master-buffer.png" alt="HTML5 Icon" style="width:800px"></p>

Here, we take the opposite approach!
We use the pop-up menu nature of hydras as a way of quickly accessing a list of Emacs keybindings that we are trying to memorize.
Actually, we are trying to build up muscle memory of the key bindings so that we do not even have to recall them when we need to use them.
We open the pop-up menu by entering `C-c 1`.
We can close the hydra by clicking on it or by clicking on the `q` button.

The lazy way of using this list is to invoke it at the start of work session in Emacs.
We can scan the list as a quick reminder of the keybindings that we are trying to master.
A more robust approach would be to set aside several minutes for the purpose of entering each keybinding that we are trying to master 5 or 10 times on the keyboard in order to build muscle memory.
It is unlikely that you would have time to go to the complete list, but this approach is effective when you work with 5 to 10 keys at a time each day.
The goal is to build up the muscle memory of the key bindings on this list to the point that you feel like you really have internalized the keybindings.

Hydras are easy to create and customize.
Then you can move the keybinding to the list of mastered keybindings in another hdyra that list the key bindings that you think you have mastered.
The list of mastered key bindings can be reviewed occasionally to check that you really have mastered these keybindings.
You invoke this the second hydra by clicking on the `km` button.

You can use the hydras in the above `learning-spiral-hydra.el` file as templates to make additional hydras.
For example, you might want a hydra that is specific to a particular package or major mode that has a long list of key bindings that you are trying to master.
These related key bindings could be stored in the separate hydra to reduce the clutter of the master hydra.

There is a limit to how many key bindings that you can display in a hydra.
The limit is imposed by the size of the font and the height of your computer screen.
You can only zoom out so far.

You can display the keybindings in multiple columns.
I have yet to master setting up multiple columns in an easy way so i tend to avoid this tactic.
I find it easier to create a separate hydra for the overflow key bindings.
This conquer-and-divide approach is a means of getting around this limitation.

The hydras in the above file were inspired by a discussion at a recent Austin Emacs Meetup where Ag mentioned maintaining a list of keybindings that he was trying to master.
I think he was using a org file to store this list.
Here, I am trying to reduce the friction further by the gating the need to navigate to such a file.
You do not have to remember the name of that work file nor do you have to remember its location.
This can be a problem if there has been a long break in the viewing of this file.
Just enter `C-c 1` from any buffer to display the master learning spiral hydra.
The use of the hydra has a lower energy barrier then opening a text file.



## Installation

Install where you see fit. 
My emacs directory (i.e., `~/emacs30`) is not a hidden folder, unlike what is recommended.
I store my hydras in a subfolder called `my-hydras` (i.e., `~/emacs30/my-hydras`).


```elisp
git clone https://github.com/MooersLab/emacs-learning-spiral-hydra.git
```

### Requirements

Requries the `hydra` package from MELPA.
I also use the `pretty-hydra` package.
I use version 30.0.5 of GNU Emacs on an intel Mac.
It should work with version 29 of GNU Emacs and perhaps earlier versions of Emacs.


### Configuration

The configuration below is for the users of the `use-package` package system for managing Emacs packages.

- Customize the file path. I store the file learning-spiral-hydra.el inside of the folder `~/emacs30/my-hydras/`
- Customize the keybinding below if it conflicts. Check by entering `C-h k C-c 1`, where `C` stands for the Control key and the `-` means press the Control key with the second key simultaneously.
- Customize the content of each hydra to meet your learning objectives.
- Add the following lines to your init.el file.

```elisp
(use-package learning-spiral-hydras
  :load-path "~/emacs30/my-hydras/")
(global-set-key (kbd "C-c 1") 'hydra-of-learning-spiral/body)

;;;## reload-init
;; Inspried https://sachachua.com/dotemacs/index.html#org4dd39d0
(defun reload-init ()
  "Reload my init.el file. Edit the path to suite your needs."
  (interactive)
  (load-file "~/emacs30/init.el"))

;;;## reload-hydras
(defun reload-hydras ()
  "Reload my-hydras.el. Edit the path to suite your needs."
  (interactive)
  (load-file "~/emacs30/my-hydras/my-hydras.el"))

;;;## reload-learning-spiral-hydras
(defun reload-learning-spiral-hydras ()
  "Reload learning-spiral-hydras.el. Edit the path to suite your needs."
  (interactive)
  (load-file "~/emacs30/my-hydras/learning-spiral-hydras.el"))
```

#### Caveats
You may have to delete the following line from each hdyra if you lack a master hdyra-of-hydras.

```elisp
("z" hydra-of-hydras/body :color blue)
```

# Learning sprial hydra
Below is a literate programming document.
It was generated from a buffer containing the hydras by using the `elispdoc` package found [here](https://github.com/benleis1/elispdoc).

This is a nested set of hydras.
The hydra at the bottom is the master hydra: hydra-of-learning-spiral.
It has commands for calling the other hydras above it.

## hydra-of-learning-spiral-concepts-mastered

<p align="center"><img src="images/concepts.png" alt="HTML5 Icon" style="width:400px"  /></p>


This hydra is a to-do list of skills that I am trying to master.
```elisp
(defhydra hydra-of-learning-spiral-concepts-mastered (:hint nil)
"
^Concepts and skills trying to master
-----------------------------------------------------------------------------
LaTeX workflow in Emacs
Voice control in Emacs
Snippets of code blocks in org-mode.

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

<p align="center"><img src="images/packages.png" alt="HTML5 Icon" style="width:400px" /></p>

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
This hydrad also calls subsidiary hydras that list
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

> The first draft of this file was auto-generated by [elispdoc.el](https://github.com/benleis1/elispdoc)
