git config # ustawienia gita
git config --global user.name "XXX" 		#nazwa użytkownika - ustawienie na stałe
git config --global user.email xxx@xxx.com	#email - ustawienie na stałe
git config user.name "XXX" 			#nazwa użytkownika - ustawienie tymczasowe
git config user.email xxx@xxx.com	#email - ustawienie tymczasowe
git config --list 	#wyświetlenie zapisanych opcji np. uzytkownika, email itp
git config user.name	#sprawdzenie nazwy uzytkownia	
-------------------------------------
git help <verb>	#pomoc
git help config	#pomoc danego polecenia
-------------------------------------
git init 		# tworzy szkielet repozytorium, ale żadne pliki nie są śledzone
git add *.rb	# dodaje wszystkie pliki o rozrzerzeniu rb do śledzenia	
git add 		# dodaje wszystkie pliki i katalogi do śledzenia, można też dodać katalog
git add 		# również wysyła po zmianie pliki do poczekalni
git commit -m 'initial project version'
-------------------------------------
git clone [URL] #klonowanie repozytorium
git clone https://github.com/R4f41/R4f41	#klonuje pliki z repozytorium
git clone https://github.com/libgit2/libgit2 mylibgit
git status 		#sprawdzenie stanu plików
git status -s	# lub --short, skrócona wersja status	
-------------------------------------
#https://git-scm.com/book/pl/v2/Podstawy-Gita-Rejestrowanie-zmian-w-repozytorium
git diff 		#pokazuje róznice jakie zaszły w plikach, chyba że było 'git add'
git diff --staged	#pokazuje różnice od oryginałów do plików w poczekalni (--cached też tak działa)
git difftool	# wyświetla różnice w programie graicznym np. vimdiff
difftool --tool-help	#pokazuje dostępne progrmay graiczne diff
-------------------------------------
git commit		# podgląd pustej wiadomości do wysłania
git commit -v	# do treści komentarza trafi równiez wykaz zmian 
git commit -m ""# zatwierdzenie zmian wraz z treścią wiadomości
git commit -a 	# pomija poczekalnie, nie musisz po zmianie pliku dawać gid add
-------------------------------------
.gitignore 		# należy utworzyć dany plik, następnie wpisać nim reguły plików do ignorowania przez gita
				# polecenia touch .gitignore, cat .gitignore
	*.a			# REGUŁY - no .a files
	!lib.a		# REGUŁY - but do track lib.a, even though you're ignoring .a files above
	/TODO		# REGUŁY - only ignore the root TODO file, not subdir/TODO
	build/ 		# REGUŁY - ignore all files in the build/ directory
	doc/*.txt	# REGUŁY - ignore doc/notes.txt, but not doc/server/arch.txt
	doc/**/*.txt # REGUŁY - ignore all .txt files in the doc/ directory
-------------------------------------
git rm <nazwa.pliku>			# usuwa plik dopiero po zapisaniu do poczekalni	
git rm -f <nazwa.pliku>			# usuwa plik -f force
git rm --cached <nazwa.pliku>	# usuwania ich z poczekalni np. trzymać plik na dysku ale nie chcieć, żeby Git go śledził. 
								# np. zapomniałeś dodać czegoś do .gitignore i przez przypadek umieściłeś w poczekalni 
git rm log/\*.log		# do polecenia git -rm możesz przekazywać pliki, katalogi lub wyrażenia glob
git rm \*~							
git mv file_from file_to	# zmiana nazyw plików
git mv README.md README		# to samo mv README.md README, git rm README.md, git add README
-------------------------------------
git log
git remote -v
git remote add origin https://github.com/R4f41/LEARN.git
git push -u origin master
git remote remove origin
git remote add origin https://[TOKEN]@github.com/[USER]/[REPO]
git push
git pull
git pull origin master

-------------------------------------
