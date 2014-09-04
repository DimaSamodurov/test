# A sample Guardfile
# More info at https://github.com/guard/guard#readme

#guard :rspec, cmd: 'rspec -f html -o ./tmp/spec_results.html', launchy: './tmp/spec_results.html' do
guard :rspec, cmd: 'rspec -f doc', all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

# See https://github.com/guard/guard-cucumber for more options
guard :cucumber, :cli => '--no-profile --color --format pretty --strict' do
  watch(%r{^features/.+\.feature$})
  watch(%r{^features/support/.+$})          { 'features' }
  watch(%r{^features/step_definitions/(.+)_steps\.rb$}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end
