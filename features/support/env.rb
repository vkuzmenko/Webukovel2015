#God bless me I dunno how it works

this_file =  __FILE__
this_directory = File.dirname(this_file)
libs = [this_directory,'..','..','lib'].join('/')

# Setup load path
$: << this_directory
$: << libs

Dir["#{libs}/*.rb"].each { |f| require f }