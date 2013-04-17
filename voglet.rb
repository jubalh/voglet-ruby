require 'yaml'

class Voglet
	def initialize( filename )
		@voc = YAML.load_file(filename)
	end

	def count
		return @voc.length
	end

	def get_entry_by_nr(nr)
		return @voc[nr]
	end

	def show
		@voc.each { |e| puts "#{e[:word]} = #{e[:translation]}"}
	end
end

#Testing:
v = Voglet.new("vocab.yaml")

puts "count"
puts v.count

puts "show"
v.show

puts "entry"
a = v.get_entry_by_nr(0)
puts a[:word]

puts "###"
puts v[0][:word]
