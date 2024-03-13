;;; Learning Spiral Hydras
;;
;; These hydras are meant to be an in-line memory aid.
;; The master learning spiral hydra is invoked with C-c l s
;; It is meant to support the gradual mastery of Emacs.
;;
;; This is a nested set of hydras.
;; The hydra at the bottom is the master hydra: hydra-of-learning-spiral.

;; This hydra in a to-do list of skills that I am trying to master.

;;;# hydra-of-learning-spiral-concepts-mastered

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


;;;# hydra-of-learning-spiral-keybindings-mastered
;; This hydra in a list of keybinding that I thought I had mastered.
;; I list these as reality check and as a reminder after long gaps
;; in use of these keybindings

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
C-c 1                  Display learning spiral hydras

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


;;;# hydra-of-learning-spiral-packages-mastered
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


;;;# hydra-of-learning-spiral
;; This is the master hydra that lists the commands that I am trying to master.
;; It also calls subsidiary hydras that list 
;; - the keybindings that I think I have mastered,
;; - the concepts that I am trying to master
;; - the packages that I am trying to master.
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

(provide 'learning-spiral-hydras)
