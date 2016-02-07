require 'date'

# Put today's date in the intro slide.
File.open 'intro/01.md', 'w' do |f|
  f.puts '!SLIDE'
  f.puts '# Code review'
  f.puts "## #{Date.today.strftime '%F'}"
end

# Remove existing markdown files from main/.
Dir.glob('main/*.md').each do |markdown_filepath|
  File.delete markdown_filepath
end

# Make a slide in main/ for each image in img/.
Dir.glob('img/*.png').sort.each_with_index do |image_filepath, i|
  slide_filename = "main/#{i.to_s.rjust 3, '0'}.md"
  image_name = image_filepath.match(/img\/(.*).png/).captures.first
  File.open slide_filename, 'w' do |f|
    f.puts '!SLIDE center'
    f.puts "![#{image_name}](../#{image_filepath})"
  end
end
