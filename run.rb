require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end



get '/states' do
  # code!

  #create states array
  @states=[]

#create state hash
@state={id: "NY", name:"New York"}

#put state hash into array
@states<<@state

#repeat steps
@state={id: "NC", name:"North Carolina"}
@states<<@state
@state={id: "AK", name:"Alaska"}
@states<<@state
@state={id: "TN", name:"Tennessee"}
@states<<@state
@state={id: "FL", name:"Flordia"}
@states<<@state

#my home is North Carolina, so it is already added

@states.sort_by!{|s| s[:name]}


  erb :states, layout: :main
end
