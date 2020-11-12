# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :name, :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails.split.collect do |address|
            address.split(',')
        end
        .flatten.uniq
    end
end

emails1 = "avi@test.com, arel@test.com, test@avi.com, test@arel.com"
parser1 = EmailAddressParser.new(emails1)
parser1.parse

emails2 = "avi@test.com arel@test.com test@avi.com test@arel.com"
parser2 = EmailAddressParser.new(emails2)
parser2.parse
   

