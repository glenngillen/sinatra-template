logger level: :warn
notification :off
interactor :off

ignore /bin/, /public/

guard :bundler do
  watch('Gemfile')
end

guard :bundler_audit, run_on_start: true do
  watch('Gemfile.lock')
end

guard :minitest do
  watch(%r{^test/(.*)?\_test\.rb$})
  watch(%r|^workers/(.*)\.rb|)           { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r|^models/(.*)\.rb|)            { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test" }
  watch(%r{^apps/(.*/)?([^/]+)\.rb$})    { |m| "test/acceptance" }
  watch(%r{^views/(.*/)?([^/]+)\.rb$})    { |m| "test/acceptance" }
  watch(%r{^test/test_helper\.rb$})      { 'test' }
end

guard 'puma', :port => (ENV["PORT"] || 8084) do
  watch('Gemfile.lock')
  watch('app.rb')
  watch(%r{^config|((apps|content|lib|models|themes|views)/.*)})
end

#guard :rubocop, all_on_start: true, cli: ['--format', 'clang', '--except', 'Documentation'] do
#  watch(%r{^test/(.*)?\_test\.rb$})
#  watch(%r|^workers/(.*)\.rb|)           { |m| "test/unit/#{m[1]}_test.rb" }
#  watch(%r|^models/(.*)\.rb|)            { |m| "test/unit/#{m[1]}_test.rb" }
#  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test" }
#  watch(%r{^apps/(.*/)?([^/]+)\.rb$})    { |m| "test/acceptance" }
#  watch(%r{^views/(.*/)?([^/]+)\.rb$})    { |m| "test/acceptance" }
#  watch(%r{^test/test_helper\.rb$})      { 'test' }
#end
