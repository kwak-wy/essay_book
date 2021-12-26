require 'pry-byebug'
def clean_previous_generated_books(pdf_folder)
  # delete previously generated books in _pdf folder. 
  Dir.glob("#{pdf_folder}/*").each do |file|
    if file=~/.pdf$/ 
      binding.pry
      full_path = File.expand_path(file)
      system(" rm #{full_path}")
    end
  end
end

pdf_folder = File.dirname(__FILE__)
clean_previous_generated_books(pdf_folder)