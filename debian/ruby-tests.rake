require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['libs', 'tests', 'tests/lib']
  t.ruby_opts = ['-rhelper']
  t.test_files = FileList['tests/**/*_test.rb'] + FileList['tests/**/test_*.rb']
end
