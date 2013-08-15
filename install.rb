dotfilepath = File.expand_path(File.dirname(__FILE__))
simlinkpath = Dir.pwd
dotfilelist = Dir.entries(dotfilepath).select{|f| !%w(. .. .DS_Store .git .gitignore).include?(f)}.select{|f| !(f =~ /^\.\w/).nil?}
backupdir = simlinkpath+"/dotfilebackup_"+Time.now.strftime("%Y%m%d%H%M%S")
Dir.mkdir(backupdir)
dotfilelist.each{|f|  `mv #{simlinkpath}/#{f} #{backupdir}/`}
dotfilelist.each{|f| `ln -fs #{dotfilepath}/#{f} #{simlinkpath}`}
`cp #{dotfilepath}/fonts/* ~/Library/Fonts/`
