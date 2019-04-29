# Bad code
if !events.empty?
  puts 'Events:'
  puts events
end

# Good code
unless events.empty?
  puts 'Events:'
  puts events
end

# Bad code
unless events.empty?
  puts 'Events:'
  puts events
else
  puts 'No events found - better organize some!'
end

# Good code
if events.empty?
  puts 'No events found - better organize some!'
else
  puts 'Events:'
  puts events
end

# nil is falsy
# Bad code
if attachment.file_path != nil
  attachment.post
end

# Good code
if attachment.file_path
  attachment.post
end

# Only nil is falsy
# Bad code
unless title.length
  warn 'Appointment title required'
end
