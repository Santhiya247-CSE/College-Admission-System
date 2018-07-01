class Admission < ActiveRecord::Base
validates_presence_of :name,:age,:gender,:dob,:address,:qualification,:board,:state,:pic,:coff,:clg,:cno,:mail 
validates_numericality_of :age,:coff
validates_length_of :cno,:maximum=>10
validates_inclusion_of :age,:in=>18..30,:message=>"Age limit Exceeded,should be within 18 to 30"
end
