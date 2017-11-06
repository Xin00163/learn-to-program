def log desc, &block
  puts "Beginning " + desc + "..."
  result = block.call
  puts desc + " finished, returning: " + result.to_s
end

log "outer block" do
  log "some little block" do
    "#{3+1}"
  end

  log "yet another block" do
    "I like Chinese food."
  end

  "0" == 0
end
