class Application 

    def call(env)
        resp = Rack::Response.new 


       if Time.now.hour < 12  
            resp.write "Good morning"
       else 
            resp.write  "Good afternoon" 
       end 
       resp.finish 
    end 

end 


# admin@mac10 rack-responses-lab-onl01-seng-pt-052620 % learn

# App
#   wishes user a good morning in the morning (FAILED - 1)
#   wishes user a good afternoon in the afternoon

# Failures:

#   1) App wishes user a good morning in the morning
#      Failure/Error: expect(last_response.body).to match(/Morning/i)
     
#        expected "Good afternoon" to match /Morning/i
#        Diff:
#        @@ -1,2 +1,2 @@
#        -/Morning/i
#        +"Good afternoon"
       
#      # ./spec/rack_mechanics_spec.rb:9:in `block (2 levels) in <top (required)>'

# Finished in 0.03604 seconds (files took 0.1484 seconds to load)
# 2 examples, 1 failure

# Failed examples:

# rspec ./spec/rack_mechanics_spec.rb:4 # App wishes user a good morning in the morning