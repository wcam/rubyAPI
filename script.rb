#Example call
    require 'open-uri'
    
    kittens = open('http://placekitten.com/200/300')
    
    f = File.open('kittens.jpg', 'w')
    kittens.each do |kitten|
      f.write(kitten)
    end
    
    f.close

#Beginner stuff
    #Get some HTTP helper shit
    require 'open-uri'
  
    # Open http://placekitten.com/
    kittens = open('http://placekitten.com')
    body = kittens.read[559, 441]
    
    puts(body) #displays a kitten returned from the web
  
#Second thing
    require 'open-uri'
    placekitten = open('http://placekitten.com/')
    
    body = placekitten.status() #returns 200 OK if good, 404 if not found, etc
    puts(body)
    
#Third
    #Parses the pets.txt file
    require "rexml/document"

    file = File.open("pets.txt")
    doc = REXML::Document.new file
    file.close
    
    #Gets each of the <pets> <pet> <name>
    doc.elements.each("pets/pet/name") do |element|
      puts element
    end

#4th
    require 'json'

    pets = File.open("pets.txt", "r")
    
    doc = ""
    pets.each do |line|
      doc << line
    end
    pets.close
    
    puts JSON.parse(doc)
