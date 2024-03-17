![Version](https://img.shields.io/static/v1?label=emacs-learning-sprial-hydra&message=0.4&color=brightcolor)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


# Lazy mastery of Emacs

## Brief introduction for the impatient
The above `learning-spiral-hydras.el` file supports a lazy approach to mastering key bindings (keyboard shortcuts) in Emacs by listing the ones that you are trying to master in a pop-up menu.
The pop-up menu is invoked by entering `C-c 1` from any buffer.
The file is easily edited for customization to meet your needs.
I expect it to be used as a template.
If you are a beginning Emacs user, you can use these lists as a means of jump starting your use of Emacs.

The code blockes and snapshots below show the individual hydras.
The lists of keybindings in these hydras are abbreviated to save space.
The `learning-spiral-hydras.el` contains my current hydras which have longer lists.

## Longer introduction for the curious
[Hydras](https://github.com/abo-abo/hydra) are popup menus in Emacs--the ultimate text editor.
Hydras demonstrate the highly configurable nature of Emacs.
These pop-up menus are called hydras because one hydra popup menu can be used to call many other hydra popup menus.
However, only one hydra is displayed at a time.
I use a hydras of hydras to serve as a port of entry to all of my hydras.
There is no limit to how deeply the hydras can be nested.
Because of this feature, the analogy with the mythological beast breaks down to the disappoint of those who know their Greek mythology.

Hydras are often associated with a specific Emacs package for the purpose of easing the use of the functions in that package.
They provide keyboard shortcuts in the form of single or multiple letters that can be entered in the keyboard or clicked on with the cursor to invoke the associated function.
In addition to running elisp functions inside of Emacs, hydras can be used to open external applications from inside Emacs, they can be used to open specific files for editing or reading, and they can be used to open specific web pages in your default browser.

The blue-colored letters in the snapshot of the hydra below are mapped to commands that are invoked by clicking the letter(s) with the cursor.
Hydras are used to evade learning the corresponding key bindings.

<p align="center"><img src="./images/master-buffer.png" alt="HTML5 Icon" style="width:800px"></p>

Here, we take the opposite approach!
We use the pop-up menu nature of hydras to quickly access a list of Emacs keybindings that we are trying to master by building muscle memory of those key bindings.
Actually, we are trying to build up muscle memory of the key bindings so that we do not have to recall them when we need to use them.
We open the pop-up menu by entering `C-c 1`.
We can close the hydra by clicking on it, by clicking on the `q` button, or by entering \textbf{q} on the keyboard.

The lazy way of using this list is to invoke it at the start of work session in Emacs.
We can scan the list as a quick reminder of the keybindings that we are trying to master.
A more robust approach would be to set aside several minutes for the purpose of entering each keybinding that we are trying to master 5 or 10 times on the keyboard in order to build muscle memory.
It is unlikely that you would have time to go to the complete list, but this approach is effective when you work with 5 to 10 keys at a time each day.
The goal is to build up the muscle memory of the key bindings on this list.

After the keybinding is internalized, you can move the keybinding to the list of mastered keybindings in another hdyra that lists the key bindings that you think you have mastered.
The list of mastered key bindings can be reviewed occasionally to check that you really have mastered these keybindings.
You invoke this the second hydra by clicking on the `km` button: `km` represents `keybindings mastered`.

You can use the hydras in the above `learning-spiral-hydra.el` file as templates to make additional hydras.
For example, you might want a hydra that is specific to a particular package or major mode that has a long list of key bindings that you are trying to master.
These related key bindings could be stored in a separate hydra to reduce the clutter of the master hydra.

There is a limit to how many key bindings that you can display in a hydra.
The limit is imposed by the size of the font and the height of your computer screen.
You can only zoom out so far before the font grows too small to see.

You can display the keybindings in multiple columns.
I have yet to master setting up multiple columns in an easy way so I tend to avoid this tactic.
I find it easier to create a second hydra when there is an overflow key bindings.
Just click on `n` to advance to the next section of list of keybindings.

## History
The hydras in the above file were inspired by a discussion at a recent Austin Emacs Meetup where Ag mentioned maintaining a list of keybindings that he was trying to master.
I think he was using a org file to store this list.
Here, I am trying to reduce the friction further by the negating the need to navigate to such a file.
You do not have to remember the name or location of that org file.
This can be a problem if there has been a long break in the viewing of this file.
Just enter `C-c 1` from any buffer to display the master learning spiral hydra.
The use of the master hydra has a lower energy barrier than navigating to a text file.


## Related repos
### Emacs quizzes
A more active means of mastering the keybindings is to take [quizzes](https://github.com/MooersLab/qemacs) about them.
The above PDFs of quiz questions can be printed, and the quiz can be taken while away from the computer.
These quizzes can be taken when you have time to kill like standing in the boarding line at the airport, commuting on public transit, or waiting for a seminar to start.

<!--
Coming Soon:  Interactive Python based quizzes can be run in the terminal or in Jupyter or Colab notebooks using the `%run` line magic.
A set of quiz questions written in Elisp is also available for running in the minibuffer of Emacs.
You can search for a topic in the quiz question set via the minibuffer.
Coming Soon: I plan to create hydras that list the questions to ease access to relevant questions that relate to your task at hand.
-->

### Related with Desktop Wallpaper

I made a desktop [wallpaper of common Emacs keybindings](https://codeberg.org/MooersLab/EmacsWallPaper).
Sometimes this is useful to quickly find out what keybindings you have not mastered in Emacs.
It is a more passive and lazier approach.
It might be useful for some beginners.
You can use it a template to create your own.


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

- Customize the file path. I store the file `learning-spiral-hydra.el` inside of the folder `~/emacs30/my-hydras/`.
- Customize the keybinding below if it conflicts. Check by entering `C-h k C-c 1`, where `C` stands for the Control key and the `-` means press the Control key with the second key simultaneously.
- Customize the content of each hydra to meet your learning objectives.
- Add the following lines to your init.el file. The file my-hydra.el is a master hydra for calling other hydras. You do not need it if you are only going to use the emacs-learning-spiral hydra.

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

This hydra in a list of keybindings that I thought I had mastered.
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
This hydra also calls subsidiary hydras that list the following:

- the keybindings that I think I have mastered
- the concepts that I am trying to master
- the packages that I am trying to master

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
