# Hunspell


 ```
 (custom-set-variables
 '(ispell-local-dictionary "en_US")
 '(ispell-local-dictionary-alist
   '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil
      ("-d" "en_US")
      nil utf-8)))
 '(ispell-program-name "hunspell"))
 ```
 
 ```
 (setq ispell-hunspell-dict-paths-alist
 '(("en_US" "~/.emacs.d/hunspell/en_US.aff")))
 ```
 
### Edit system environment variables.
- LANG - Default language (en_US). 
- DicPath - Dictonary directory path.
- Path - Add hunspell.exe location.
 
