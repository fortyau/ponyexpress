require "rexml/document"
include REXML

require "pp"
require "json"
require "csv"


# Source files
##############

whipsFile      = File.new("lib/assets/whips.csv")


# Functions
###########

def csv_to_array(file)
  csv = CSV::parse(File.open(file, 'r') {|f| f.read })
  fields = csv.shift
  csv.collect { |record| Hash[*fields.zip(record).flatten ] }
end



# The script
############

whips_object = csv_to_array(whipsFile)
whips_object.each do | whip |

  w = Whip.where(:ip => whip["ip"]).first

  if w.blank?
    w = Whip.new
  end

  w.ip = whip["ip"]
  w.name = whip["name"]

  w.save

end