
ignores = ['Brewfile.rb', 'Brewfile.lock.json', 'tap.Brewfile', 'appstore.mas.Brewfile']

eval(File.read('homebrew-config/tap.Brewfile'), binding)

eval(File.read('homebrew-config/appstore.mas.Brewfile'), binding)

# Dir.glob(File.join(File.dirname(__FILE__), '**', '{,*.}Brewfile{,.*}')) do |brewfile|
# Dir.glob(File.join(File.dirname(__FILE__), '**', '{,*.}Brewfile{,.*}')).reject{ |f| f['Brewfile.lock.json'] || f['Brewfile.rb'] || f[%r{^\.\/(homebrew-config\/)?Brewfile$}] }.select do |brewfile|
Dir[File.join(File.dirname(__FILE__), '**', '{,*.}Brewfile{,.*}')].reject{ |f| ignores.include?(File.basename(f)) || f[%r{^\.\/(homebrew-config\/)?Brewfile$}] }.each do |brewfile|
  eval(File.read(brewfile), binding)
end
