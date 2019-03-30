namespace :trace_route do
  desc "Run trace route"

  task :run do
    puts "Running trace route!"
    puts `rake traceroute`
  end
end
