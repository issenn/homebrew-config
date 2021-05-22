# $LOAD_PATH.unshift(File.dirname(__FILE__))

require 'fileutils'
require 'pathname'


args = Homebrew.bundle_args.parse

puts "args.file: #{args.file}" if args.file && ( args.debug? || args.verbose? )
puts "ENV['HOMEBREW_BUNDLE_FILE']: #{ENV['HOMEBREW_BUNDLE_FILE']}" if ENV['HOMEBREW_BUNDLE_FILE'] && ( args.debug? || args.verbose? )
puts "__FILE__: #{__FILE__}" if args.debug? || args.verbose?

homebrew_bundle_file = Pathname.new(args.file || ENV['HOMEBREW_BUNDLE_FILE'] || __FILE__)

puts "Homebrew Bundle File: #{homebrew_bundle_file}" if args.debug? || args.verbose?

raise "HOMEBREW_BUNDLE_FILE parent does not exist" unless homebrew_bundle_file.parent.exist?
raise "HOMEBREW_BUNDLE_FILE parent given is not a directory" unless homebrew_bundle_file.parent.directory?
puts "HOMEBREW_BUNDLE_FILE Parent: #{homebrew_bundle_file.parent}" if args.debug? || args.verbose?

raise "HOMEBREW_BUNDLE_FILE dirname does not exist" unless homebrew_bundle_file.dirname.exist?
raise "HOMEBREW_BUNDLE_FILE dirname given is not a directory" unless homebrew_bundle_file.dirname.directory?
puts "HOMEBREW_BUNDLE_FILE Dirname: #{homebrew_bundle_file.dirname}" if args.debug? || args.verbose?

homebrew_bundle_file_basename = homebrew_bundle_file.basename === Pathname.new('(eval)') ? 'Brewfile' : homebrew_bundle_file.basename.to_s
puts "HOMEBREW_BUNDLE_FILE Basename: #{homebrew_bundle_file_basename}" if args.debug? || args.verbose?

homebrew_bundle_file = homebrew_bundle_file.dirname.expand_path.join(homebrew_bundle_file_basename) unless homebrew_bundle_file.dirname.absolute?
raise "HOMEBREW_BUNDLE_FILE does not exist" unless homebrew_bundle_file.exist?
raise "HOMEBREW_BUNDLE_FILE given is not a file" unless homebrew_bundle_file.file?
raise "HOMEBREW_BUNDLE_FILE is not absolute path" unless homebrew_bundle_file.absolute?
# raise "HOMEBREW_BUNDLE_FILE is relative path" if homebrew_bundle_file.relative?
puts "Homebrew Bundle File Full Path: #{homebrew_bundle_file}" if args.debug? || args.verbose?

puts "HOMEBREW_BUNDLE_FILE Readlink: #{homebrew_bundle_file.readlink}" if homebrew_bundle_file.symlink? && ( args.debug? || args.verbose? )

puts "HOMEBREW_BUNDLE_FILE Realpath: #{homebrew_bundle_file.realpath}" if args.debug? || args.verbose?

puts "PWD: #{FileUtils.pwd}" if args.debug? || args.verbose?
FileUtils.cd(homebrew_bundle_file.realpath.dirname) {
  puts "CMD: cd #{FileUtils.pwd}" if args.debug? || args.verbose?
  eval(homebrew_bundle_file.realpath.sub_ext('.rb').read, binding) if homebrew_bundle_file.realpath.sub_ext('.rb').exist?
}
puts "PWD: #{FileUtils.pwd}" if args.debug? || args.verbose?
