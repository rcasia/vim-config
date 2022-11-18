" To make the Glaive command available on startup
call glaive#Install()

"let executable = "/opt/java/jdk-17.0.5/bin/java -jar ~/.config/nvim/dependencies/google-java-format-1.15.0-all-deps.jar"

Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/rcasia/.config/nvim/dependencies/google-java-format-1.15.0-all-deps.jar"



augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
augroup END
