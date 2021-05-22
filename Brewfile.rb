# require 'find'
# require 'pp'


IGNORES = [
  'Brewfile.rb',
  'Brewfile.lock.json',
]

DEFAULT_IGNORES_REGEX_PATTERN = [
  %r{^#{homebrew_bundle_file.realpath.dirname.to_s}(\/[\w\.-]+)*\/[\w\.-]+\.rb$},
  %r{^#{homebrew_bundle_file.realpath.dirname.to_s}(\/[\w\.-]+)*\/\.?([\w-]+\.)*Brewfile(\.[\w-]+\.)*\.lock\.json$},
  %r{^#{homebrew_bundle_file.realpath.dirname.to_s}(\/[\w\.-]+)*\/[\w\.-]+\.lock\.json$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/[\w\.-]+\.rb$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?([\w-]+\.)*Brewfile(\.[\w-]+\.)*\.lock\.json$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/[\w\.-]+\.lock\.json$},
]

IGNORES_REGEX_PATTERN = DEFAULT_IGNORES_REGEX_PATTERN + [
#   %r{^#{homebrew_bundle_file.dirname.to_s}\/(homebrew-config\/)?Brewfile$},
  %r{^#{homebrew_bundle_file.realpath.dirname.to_s}\/Brewfile$},
  %r{^#{homebrew_bundle_file.dirname.to_s}\/Brewfile$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?([\w-]+\.)*pre\.Brewfile$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?Brewfile\.pre(\.[\w-]+)*$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?([\w-]+\.)*tap\.Brewfile$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?Brewfile\.tap(\.[\w-]+)*$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?([\w-]+\.)*mas\.Brewfile$},
  %r{^#{homebrew_bundle_file.dirname.to_s}(\/[\w\.-]+)*\/\.?Brewfile\.mas(\.[\w-]+)*$},
]

ignores_re = Regexp.union(IGNORES_REGEX_PATTERN)
puts "Brewfile Regex: #{ignores_re}" if args.debug? || args.verbose?

IGNORES_TAP_REGEX_PATTERN = DEFAULT_IGNORES_REGEX_PATTERN + [
]

ignores_tap_re = Regexp.union(IGNORES_TAP_REGEX_PATTERN)
puts "Tap Regex: #{ignores_tap_re}" if args.debug? || args.verbose?

IGNORES_MAS_REGEX_PATTERN = DEFAULT_IGNORES_REGEX_PATTERN + [
]

ignores_mas_re = Regexp.union(IGNORES_MAS_REGEX_PATTERN)
puts "Mas Regex: #{ignores_mas_re}" if args.debug? || args.verbose?

IGNORES_PRE_REGEX_PATTERN = DEFAULT_IGNORES_REGEX_PATTERN + [
]

ignores_pre_re = Regexp.union(IGNORES_PRE_REGEX_PATTERN)
puts "Pre Regex: #{ignores_pre_re}" if args.debug? || args.verbose?


FIND_WILDCARD_PATTERN = [
  homebrew_bundle_file.realpath.dirname.join('**', '{,.*.,*.}Brewfile'),
  homebrew_bundle_file.realpath.dirname.join('**', 'Brewfile{,.*}'),
  homebrew_bundle_file.dirname.join('**', '{,.*.,*.}Brewfile'),
  homebrew_bundle_file.dirname.join('**', 'Brewfile{,.*}'),
]
puts "Find Brewfile Wildcard: #{FIND_WILDCARD_PATTERN}" if args.debug? || args.verbose?

FIND_PRE_WILDCARD_PATTERN = [
  homebrew_bundle_file.realpath.dirname.join('**', '{,.*.,*.}pre.Brewfile'),
  homebrew_bundle_file.realpath.dirname.join('**', 'Brewfile.pre{,.*}'),
  homebrew_bundle_file.dirname.join('**', '{,.*.,*.}pre.Brewfile'),
  homebrew_bundle_file.dirname.join('**', 'Brewfile.pre{,.*}'),
]
puts "Find Pre Brewfile Wildcard: #{FIND_PRE_WILDCARD_PATTERN}" if args.debug? || args.verbose?

FIND_TAP_WILDCARD_PATTERN = [
  homebrew_bundle_file.realpath.dirname.join('**', '{,.*.,*.}tap.Brewfile'),
  homebrew_bundle_file.realpath.dirname.join('**', 'Brewfile.tap{,.*}'),
  homebrew_bundle_file.dirname.join('**', '{,.*.,*.}tap.Brewfile'),
  homebrew_bundle_file.dirname.join('**', 'Brewfile.tap{,.*}'),
]
puts "Find Tap Wildcard: #{FIND_TAP_WILDCARD_PATTERN}" if args.debug? || args.verbose?

FIND_MAS_WILDCARD_PATTERN = [
  homebrew_bundle_file.realpath.dirname.join('**', '{,.*.,*.}mas.Brewfile'),
  homebrew_bundle_file.realpath.dirname.join('**', 'Brewfile.mas{,.*}'),
  homebrew_bundle_file.dirname.join('**', '{,.*.,*.}mas.Brewfile'),
  homebrew_bundle_file.dirname.join('**', 'Brewfile.mas{,.*}'),
]
puts "Find Mas Wildcard: #{FIND_MAS_WILDCARD_PATTERN}" if args.debug? || args.verbose?


homebrew_bundle_file.dirname.glob(FIND_TAP_WILDCARD_PATTERN).reject{ |f| f.directory? || IGNORES.include?(f.basename.to_s) || f.to_s.match?(ignores_tap_re) }.uniq.each do |brewfile|
  puts "Tap Brewfile: #{brewfile}" if args.debug? || args.verbose?
  eval(brewfile.realpath.read, binding) if brewfile.realpath.exist?
end

homebrew_bundle_file.dirname.glob(FIND_PRE_WILDCARD_PATTERN).reject{ |f| f.directory? || IGNORES.include?(f.basename.to_s) || f.to_s.match?(ignores_pre_re) }.uniq.each do |brewfile|
  puts "Pre Brewfile: #{brewfile}" if args.debug? || args.verbose?
  eval(brewfile.realpath.read, binding) if brewfile.realpath.exist?
end

homebrew_bundle_file.dirname.glob(FIND_MAS_WILDCARD_PATTERN).reject{ |f| f.directory? || IGNORES.include?(f.basename.to_s) || f.to_s.match?(ignores_mas_re) }.uniq.each do |brewfile|
  puts "Mas Brewfile: #{brewfile}" if args.debug? || args.verbose?
  eval(brewfile.realpath.read, binding) if brewfile.realpath.exist?
end

homebrew_bundle_file.dirname.glob(FIND_WILDCARD_PATTERN).reject{ |f| f.directory? || IGNORES.include?(f.basename.to_s) || f.to_s.match?(ignores_re) }.uniq.each do |brewfile|
  puts "Brewfile: #{brewfile}" if args.debug? || args.verbose?
  eval(brewfile.realpath.read, binding) if brewfile.realpath.exist?
end
