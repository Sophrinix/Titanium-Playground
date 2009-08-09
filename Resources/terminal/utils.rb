
### this is a python script from calibre (ebooks)
def get_isbn_info(isbn)
  cmd = "fetch-ebook-metadata -i #{isbn}"
  ans= (`#{cmd}`).split("\n").join('<br/>')
  window.showInfo(ans)
end


# we want the script in editable folder for testing
def get_terminal_path
  path    =  Titanium.App.home
  go_back =  path.split('/').member?('dist') ? "../" * 4 : ''
  path    =  File.join(path, go_back, 'Resources', 'terminal')
  File.expand_path(path)
end

def call_to_script(script_file = 'check_time.rb')
  script_name  = "'" +  File.join(get_terminal_path, script_file) + "'"
  cmd = 'ruby ' + script_name.to_s
  ans = (`#{cmd.to_s}`)
  window.showInfo(ans)
end

window.getIsbnInfo = getIsbnInfo
window.call_to_script = call_to_script