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
Make snippets of all useful code blocks in org-mode.
lfortran in code-blocks via jupyter org-babel language


^----------------------------------------------------------------------------
_km_ learning spral: keybindings mastered
_p_ learning sprial: packages trying to master

_ls_ Return to learning spiral
_ri_ reload init.el
_rh_ reload my-hydras
_rl_ reload learning-spiral-hydras
_z_ Return to parent hdyra-of-hydras
_q_ quit
^----------------------------------------------------------------------------
"
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("ls" hydra-of-learning-spiral/body :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)

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
C-x C-s                Save buffer to a file
C-x C-w                Write buffer to specified file
C-x C-f                Open a file
C-x d                  Open dired
C-x C-e                Run elisp sexp
C-c C-e                Export org-mode to another format
C-c C-a                Compile to PDF when in latex-mode or auctex-mode
C-1                    Close buffer
C-x 1                  Display only one buffer
C-c 0                  Display hydra-of-hydras
C-c 1                  Display learning spiral hdyra
C-y                    Paste
C-w                    Cut or kill selection
M-w                    Copy selection to kill ring (clipboard) but do not kill.
s-c                    Copy
C-o                    Insert a yasnippet snippet
C-c 0                  Open my-hydras.el
C-space                Set mark for a selection.


M-x eval-buffer
M-x reload-hydra (reload my-hydras)

^------------------------------------------------------------------------------

_c_ learning spiral: concepts trying to master
_p_ learning sprial: packages trying to master
_l_ edit learning-spiral-hydras.el
_ls_ Return to learning spiral
_ri_ reload init.el
_rh_ reload my-hydras
_rl_ reload learning-spiral-hydras
_z_ Return to parent hdyra-of-hydras
_q_ quit
^------------------------------------------------------------------------------
"
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
("ls" hydra-of-learning-spiral/body :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))


;;;# hydra-of-learning-spiral-packages-mastered
(defhydra hydra-of-learning-spiral-packages-mastered (:hint nil)
"
^Packages trying to master
^------------------------------------------------------------------------------

cider
copilot
dired
diredx
lsp-ltex
lsp-grammarly
LaTeX-mode
org-aggenda
org-babel code blocks
org-roam
treesitter

^------------------------------------------------------------------------------

_km_ learning spral: keybindings mastered
_c_ learning spiral: concepts trying to master
_l_ edit learning-spiral-hydras.el
_ls_ Return to learning spiral
_ri_ reload init.el
_rh_ reload my-hydras
_rl_ reload learning-spiral-hydras
_z_ Return to parent hdyra-of-hydras
_q_ quit
^------------------------------------------------------------------------------
"
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
("ls" hydra-of-learning-spiral/body :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)

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
 ^----------------------------------------------------------------------------------------
 C-c =                 Use in auctex-mode to display TOC of document in separate buffer
 C-c d                 Display pop-up menu with info about file including word count.
 C-h l                 Display list of last commands.
 s-,                   Open the customize buffer
 C-[scrollwheel-up]    Zoom text in.
 C-[scrollwheel-down]  Zoom text out.
 C-x u                 Undo.
 M-S-x                 List all commands relevant to the current mode.
 s-n                   Open a new frame with the current buffer.
 s-s                   Toggle speedbar. Must load sr-speedbar first. Like M-i or C-c =
 M-w                   Copy selection to kill ring (clipboard) but do not kill. Like s-c.
 M-;                   Comment or uncomment a region.
 M-i                   Display an index of buffer. Use in tex files to navigate to sections.
 C-v                   Next page down.
 M-v                   Next page up.
 C-l                   Center the current line in the window.
 C-n                   Move to the next line.
 C-p                   Move to the previous line.
 C-f                   Move forward one character.
 M-f                   Move forward a word.
 M-b                   Move back a word.
 M-a                   Move to beginning of sentence.
 M-e                   Move to end of sentence.
 M-q                   Unwrap text to one-sentence per line.
 M-<                   Move to end of file.
 M->                   Move to beginning of file.
 C-x o                 Move cursor to other window.
 C-M-v                 Scroll the other window.
 C-x C-b               Open ibuffer.
 C-x b                 Select buffer. TAB to show possible buffers.
 C-x C-j               Dired jump.
 C-c m                 Switch to minibuffer
 C-o                   Insert snippet at point after typing tab trigger.
 C-c SPC y SPC i       Insert snippet at point via selection from popup menu.
 C-c SPC y SPC n       Create a new snippet.
 C-c w                 Run texcount.pl on main.tex
 M-k                   Kill from the cursor to the end of the sentence.
 C-w                   Kill from mark to cursor.
 C-x b <BufferName>    Visit specific buffer.
 C-z                   Suspend Emacs. Return with `fg'.

 M-x delete-trailing-whitespace
 M-x lsp
 M-x query-replace M-precent sign
 M-x elispdoc-process-elisp-to-doc

 ^----------------------------------------------------------------------------------------

 _km_ learning spiral: keybindings mastered
 _c_ learning spiral: concepts trying to master
 _p_ learning spiral: packages trying to master
 _he_ edit /emacs30/my-hydras/my-hydras.el
 _i_  edit init.el
 _l_ edit learning-spiral-hydras.el
 _ri_ reload init.el
 _rh_ reload my-hydras
 _rl_ reload learning-spiral-hydras
 _z_ Return to parent hdyra-of-hydras
 _q_ quit
 ^------------------------------------------------------------------------------
 "
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))

(provide 'learning-spiral-hydras)
