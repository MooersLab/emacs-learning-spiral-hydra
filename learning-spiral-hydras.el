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
^-----------------------------------------------------------------------------
bookmarks
LaTeX workflow in Emacs
lfortran in code-blocks via jupyter org-babel language
macros
reading email in Emacs
regex Emacs style
Voice computing in Emacs

^----------------------------------------------------------------------------
_km_ learning spiral: keybindings mastered
_p_ learning spiral: packages trying to master
_s_ Return to learning spiral
_ri_ reload init.el
_rh_ reload my-hydras
_rl_ reload learning-spiral-hydras
_z_ Return to parent hdyra-of-hydras
_q_ quit
^----------------------------------------------------------------------------
"
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("s" hydra-of-learning-spiral/body :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))


;;;# hydra-of-learning-spiral-keybindings-mastered
;; This hydra in a list of keybindings I thought I had mastered.
;; I list these as a reality check and as a reminder after long gaps
;; in use of these keybindings.


(defhydra hydra-of-learning-spiral-keybindings-mastered (:hint nil)
"
^Keybindings and commands mastered
^------------------------------------------------------------------------------
C-x C-c                Quit Emacs.
C-g                    Abort command entry.
C-x C-s                Save buffer to a file.
C-x C-w                Write buffer to the specified file.
C-x C-f                Open a file.
C-x d                  Open dired.
C-x C-e                Run elisp sequential expression (sexp).
C-x u                  Undo.
C-c C-e                Export org-mode to another format.
C-c C-a                Compile to PDF when in latex-mode or auctex-mode.
C-1                    Close buffer.
C-x 1                  Display only one buffer.
C-c 0                  Display hydra-of-hydras.
C-c 1                  Display learning spiral hydra.
C-y                    Paste.
C-w                    Cut or kill selection.
M-w                    Copy selection to kill ring (clipboard) but do not kill.
s-c                    Copy.
C-o                    Insert a yasnippet snippet.
C-c 0                  Open my-hydras.el
C-space                Set mark for a selection.
C-k                    Kill a line or region.
C-a                    Move to the beginning of line.
C-e                    Move to the end of line.
C-s                    Search forward.
C-r                    Search backward.


M-x eval-buffer
M-x reload-hydra (reload my-hydras)

^------------------------------------------------------------------------------
_c_ learning spiral: concepts trying to master
_p_ learning spiral: packages trying to master
_l_ edit learning-spiral-hydras.el
_s_ Return to learning spiral
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
("s" hydra-of-learning-spiral/body :color blue)
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
magit
org-agenda
org-babel code blocks
org-roam
treesitter
advanced features of yasnippets
zetteldesk
^------------------------------------------------------------------------------
_a_ learning spiral: auctex and latex
_km_ learning spiral: keybindings mastered
_c_ learning spiral: concepts trying to master
_l_ edit learning-spiral-hydras.el
_s_ Return to learning spiral
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
("s" hydra-of-learning-spiral/body :color blue)
("ri" (reload-init) :color blue)
("rh" (reload-hydras) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))

;;;# hydra-of-learning-spiral-latex
(defhydra hydra-of-learning-spiral-latex (:hint nil)
 "
^Commands trying to master
^----------------------------------------------------------------------------------------
C-h m        Show information on the current major mode.
C-c C-h      Shows all bindings that start with C-c.
C-h b        Shows all bindings currently available.

C-c C-s      Insert sections and subsections. Will be prompted for title and label.
C-c C-e      Insert environments.
C-c ]        Close environment.
C-u C-c C-e  Change the type of the current innermost environment.

C-c .        Mark the current environment.
C-c *        Mark the current section/subsection.
C-c ]        Close current environment.
C-M-a        Find matching begin environment.
C-M-e        Find matching end environment.
C-c C-m      Insert macro.

C-c C-f C-e  Add a emph and place the cursor between the braces. Wrap a selection.
C-c C-f C-b  Ditto with textbf.
C-c C-f C-c  Ditto with textsc.
C-c C-f C-i  Ditto with textit.            
C-c C-f C-t  Ditto with texttt. 
C-c C-f ?    Give you a list of all possibilities.

C-x n n      Recursive narrowing, toggle on and off.
C-c C-a      Compile file into a PDF.
C-c C-c      Do the most appropriate compilation activity.\
C-c C-r      Do appropriate compilation activity to the region that has been pinned by 
             C-c C-t C-r
C-c C-v      View document.

C-c C-j      Add an item to a list.
C-c percent sign        Comment or uncomment a paragraph.
C-c ;        Comment or uncomment a region.
C-c *        Mark a section.
C-c C-o C-b  Toggle folding.

C-c          Open list of suffixes for C-c
C-c ?        Find documentation.
C-c TAB      Open the AucTeX manual.
C-c o        Start pomodoro.
C-c y        Open yasnippet hydra.

C-c (        Add a label. Autosuggesions based on section.
C-c )        Add a ref. Select from a list of labels.
C-c [        Insert citation.
C-c = RET    Go to section and hide TOC buffer.
C-c = SPC    Go to section and do not hide TOC buffer.
<            Increase the level.     
>            Reduce the level.

M-%          Search-and-replace regexp in the document.
^----------------------------------------------------------------------------------------
_km_ learning spiral: keybindings mastered
_c_ learning spiral: concepts trying to master
_p_ learning spiral: packages trying to master
_he_ edit /emacs30/my-hydras/my-hydras.el
_i_  edit init.el
_l_ edit learning-spiral-hydras.el
_ri_ reload init.el
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
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))


;;;# hydra-of-learning-spiral-part-four

(defhydra hydra-of-learning-spiral-part-five (:hint nil)
 "
^Commands trying to master
^----------------------------------------------------------------------------------------
M-x delete-trailing-whitespace
M-x ispell-region
M-x ispell-buffer
M-x flyspell-mode
M-x lsp
M-x query-replace
M-x query-replace-regexp
M-x elispdoc-process-elisp-to-doc
M-x shell
M-x eshell
M-x recover-session
M-x revert-buffer

^----------------------------------------------------------------------------------------
_a_ auctex and latex learning spiral
_km_ learning spiral: keybindings mastered
_c_ learning spiral: concepts trying to master
_p_ learning spiral: packages trying to master
_he_ edit /emacs30/my-hydras/my-hydras.el
_i_  edit init.el
_l_ edit learning-spiral-hydras.el
_ri_ reload init.el
_rl_ reload learning-spiral-hydras
f_z_ Return to parent hdyra-of-hydras
_q_ quit
^------------------------------------------------------------------------------
"
("a" hydra-of-learning-spiral-latex/body :color blue)
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
("ri" (reload-init) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))


;;;# hydra-of-learning-spiral-part-four
(defhydra hydra-of-learning-spiral-part-four (:hint nil)
 "
^Commands trying to master
^----------------------------------------------------------------------------------------
C-d                 Delete character.
M-d                 Delete word.
M-0 C-k             Delete to beginning of the line.
M-k                 Delete sentence forward.
C-x DEL             Delete sentence backward.
^----------------------------------------------------------------------------------------
_n_ next part of this learning spiral.
_a_ auctex and latex learning spiral.
_km_ learning spiral: keybindings mastered.
_c_ learning spiral: concepts trying to master.
_p_ learning spiral: packages trying to master.
_he_ edit /emacs30/my-hydras/my-hydras.el.
_i_ edit init.el
_l_ edit learning-spiral-hydras.el.
_ri_ reload init.el.
_rl_ reload learning-spiral-hydras.
_z_ Return to parent hdyra-of-hydras.
_q_ quit
^--------------------------------------------------------------------------------------
"
("n" hydra-of-learning-spiral-part-five/body :color blue)
("a" hydra-of-learning-spiral-latex/body :color blue)
("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
("ri" (reload-init) :color blue)
("rl" (reload-learning-spiral-hydras) :color blue)
("z" hydra-of-hydras/body :color blue)
("q" nil :color blue))


;;;# hydra-of-learning-spiral-part-three
(defhydra hydra-of-learning-spiral-part-three (:hint nil)
  "
 ^Commands trying to master
 ^----------------------------------------------------------------------------------------
 C-w                 Kill region.
 M-w                 Copy region to kill ring.
 M-z char            Kill through character char.
 M-y                 Replace last yank with previous kill.
 C-x C-x             Exchange point and mark.

 M-h                 Mark paragraph.
 C-x C-p             Mark page.
 C-M-@               Mark sexp
 C-M-h               Mark function.
 C-x h               Mark entire buffer.

 C-x n n             Toggle narrowing on the region. Works in the LateX-mode.
                     Installed recursive-narrowing package first.

 M-percent sign      Iteratively replace a string.

 M-u                 Uppercase a word.
 M-l                 Lowercase a word.
 M-c                 Capitalize a word.
 C-x C-u             Uppercase a region.
 C-x C-l             Lowercase a region.
^----------------------------------------------------------------------------------------
_n_ next part of this learning spiral.
_a_ auctex and latex learning spiral
_km_ learning spiral: keybindings mastered
_c_ learning spiral: concepts trying to master
_p_ learning spiral: packages trying to master
_he_ edit /emacs30/my-hydras/my-hydras.el
_i_  edit init.el
_l_ edit learning-spiral-hydras.el
_ri_ reload init.el
_rl_ reload learning-spiral-hydras
_z_ Return to parent hdyra-of-hydras
_q_ quit
 ^-----------------------------------------------------------------------------------------
 "
  ("n" hydra-of-learning-spiral-part-four/body :color blue)
  ("a" hydra-of-learning-spiral-latex/body :color blue)
  ("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
  ("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
  ("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
  ("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
  ("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
  ("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
  ("ri" (reload-init) :color blue)
  ("rl" (reload-learning-spiral-hydras) :color blue)
  ("z" hydra-of-hydras/body :color blue)
  ("q" nil :color blue))



;;;# hydra-of-learning-spiral-part-two

(defhydra hydra-of-learning-spiral-part-two (:hint nil)
  "
 ^Commands trying to master
 ^----------------------------------------------------------------------------------------
 C-x k                      Kill the buffer.
 C-x s                      Save all files.
 C-x o                      Move cursor to another window.
 C-M-v                      Scroll the other window.
 C-x C-b                    Open ibuffer.
 C-x b                      Select buffer. TAB to show possible buffers.
 C-x C-j                    Dired jump.
 C-c m                      Switch to minibuffer.
 C-o                        Insert snippet at the point (cursor) after typing tab trigger.
 C-c SPC y SPC i            Insert snippet at the point (cursor) via selection from the popup menu.
 C-c SPC y SPC n            Create a new snippet.
 C-c w                      Run texcount.pl on main.tex.
 M-k                        Kill from the cursor to the end of the sentence.
 C-w                        Kill from mark to cursor.
 C-x b <BufferName>         Visit specific buffer.
 C-z                        Suspend terminal or iconify graphical Emacs. Return with `fg'.
 C-x C-v                    Replace file with the file that you want.
 C-x i                      Insert document into a buffer.
 C-h                        Show help menu.
 C-h t                      Help tutorial.
 C-x 1                      Remove help window.
 C-M-v                      Scroll help window.
 C-h a                      Show commands matching a string.
 C-h k                      Return the command activate by an entered keybinding.
 C-h f                      Describe a function.
 C-h m                      Get information about current mode.
 C-h i m Emacs Lisp Intro   Open a hyperlinked version of this valuable book.
 C-_                        Undo.
 C-/                        Undo.
 M-p                        Select previous search string.
 M-n                        Select next search string.
 M-{                        Move point back one paragraph.
 M-}                        Move point forward one paragraph.
 C-x [                      Move backward a page.
 C-x ]                      Move forward a page.
 C-M-b                      Move back one sexp.
 C-M-f                      Move forward one sexp.
 C-M-a                      Move back one function.
 C-M-e                      Move forward one function.
 C-v                        Move to next screen.
 M-v                        Move to previous screen.
 M-g c                      Goto char.
 M-m                        Goto the indentation.rl
 ^----------------------------------------------------------------------------------------
 _n_ Next part of this learning spiral.
 _a_ Auctex and latex learning spiral.
 _km_ Learning spiral: keybindings mastered.
 _c_ Learning spiral: concepts trying to master.
 _p_ Learning spiral: packages trying to master.
 _he_ Edit /emacs30/my-hydras/my-hydras.el.
 _i_  Edit init.el.
 _l_ Edit learning-spiral-hydras.el.
 _ri_ Reload init.el.
 _rl_ Reload learning-spiral-hydras.
 _z_ Return to parent hdyra-of-hydras.
 _q_ quit
 ^------------------------------------------------------------------------------
 "
  ("n" hydra-of-learning-spiral-part-three/body :color blue)
  ("a" hydra-of-learning-spiral-latex/body :color blue)
  ("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
  ("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
  ("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
  ("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
  ("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
  ("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
  ("ri" (reload-init) :color blue)
  ("rl" (reload-learning-spiral-hydras) :color blue)
  ("z" hydra-of-hydras/body :color blue)
  ("q" nil :color blue))


;;;# hydra-of-learning-spiral
;; This is the master hydra that lists the commands that I am trying to master.
;; It is the top of the learning spiral.
;; It continues on the next hydra, hydra-of-learning-spiral-part-two.
;; This second part is invoked by clicking on `n` or by entering `n'
;;
;; It also calls subsidiary hydras that list the following:
;; - the keybindings that I think I have mastered,
;; - the concepts that I am trying to master
;; - the packages that I am trying to master.
(defhydra hydra-of-learning-spiral (:hint nil)
  "
 ^Commands trying to master
 ^-----------------------------------------------------------------------------------------------
 C-c =                 Use in auctex-mode to display TOC of the document in a separate buffer.
 C-c d                 Display a pop-up menu with info about the file, including word count.
 C-h l                 Display list of last commands.
 s-,                   Open the customize buffer.
 C-[scrollwheel-up]    Zoom text in.
 C-[scrollwheel-down]  Zoom text out.
 M-S-x                 List all commands relevant to the current mode.
 s-n                   Open a new frame with the current buffer.
 s-s                   Toggle speedbar. Must load sr-speedbar first. Like M-i or C-c =.
 M-w                   Copy selection to kill ring (clipboard) but do not kill. Like s-c.
 M-;                   Comment or uncomment a region.
 M-i                   Display an index of buffer. Use in tex files to navigate to sections.
 C-v                   Next page down.
 M-v                   Next page up.
 C-l                   Center the current line in the window.
 C-n                   Move to the next line.
 C-p                   Move to the previous line.
 C-f                   Move forward one character.
 C-b                   Move back one character.
 M-!                   Execute a shell command.
 M-percent sign        M-x query-replace.
 M-f                   Move forward a word.
 M-b                   Move back a word.
 M-a                   Move to the beginning of the sentence.
 M-e                   Move to the end of the sentence.
 M-q                   Unwrap text to one sentence per line.
 M-<                   Move to the end of the file.
 M->                   Move to the beginning of the file.
 M-g M-g               Goto a specific line number.

 M-x delete-trailing-whitespace
 M-x lsp
 M-x query-replace
 M-x elispdoc-process-elisp-to-doc

 ^----------------------------------------------------------------------------------------------
 _n_ next part of this learning spiral.
 _a_ Auctex and latex learning spiral.
 _km_ learning spiral: keybindings mastered
 _c_ learning spiral: concepts trying to master
 _p_ learning spiral: packages trying to master
 _he_ edit /emacs30/my-hydras/my-hydras.el
 _i_  edit init.el in Emacs
 _l_ edit learning-spiral-hydras.el in Emacs
 _ri_ reload init.el into Emacs after changing on disk.
 _rl_ reload learning-spiral-hydras after changing on disk.
 _z_ Return to parent hdyra-of-hydras.
 _q_ quit
 ^------------------------------------------------------------------------------
 "
  ("n" hydra-of-learning-spiral-part-two/body :color blue)
  ("a" hydra-of-learning-spiral-latex/body :color blue)
  ("c" hydra-of-learning-spiral-concepts-mastered/body :color blue)
  ("p" hydra-of-learning-spiral-packages-mastered/body :color blue)
  ("km" hydra-of-learning-spiral-keybindings-mastered/body :color blue)
  ("he" (find-file "/Users/blaine/emacs30/my-hydras/my-hydras.el") :color blue)
  ("i" (find-file "/Users/blaine/emacs30/init.el") :color blue)
  ("l" (find-file "/Users/blaine/emacs30/my-hydras/learning-spiral-hydras.el") :color blue)
  ("ri" (reload-init) :color blue)
  ("rl" (reload-learning-spiral-hydras) :color blue)
  ("z" hydra-of-hydras/body :color blue)
  ("q" nil :color blue))

(provide 'learning-spiral-hydras)
