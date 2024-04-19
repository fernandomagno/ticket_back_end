module Rest
    class Service
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']
    
        def get_ticket
            self.class.get('/VRPAT')
        end
        
    end
end
