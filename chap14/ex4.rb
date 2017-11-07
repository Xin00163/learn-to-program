
$logger_depth = 0
def log desc, &block
  prefix = '  '*$logger_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
  result = block.call
  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + " finished, returning: " + result.to_s
end

log 'outer block' do
  log 'some little block' do
    log 'coffee shop' do
    end
    "#{3+1}"
  end


  log "yet another block" do
    "I like Chinese food."
  end

  "0" == 0
end
