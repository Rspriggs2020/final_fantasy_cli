class Character

    @@all = []

    attr_accessor :name, :job, :description

    def initialize(hash)
        hash.each do |k, v|
          self.send(("#{k}="), v) if  self.respond_to?("#{k}=")
        end
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
    
    def self.destroy_all
        @@all.clear
    end

    def self.find_by_name(name)
        self.all.select do |guardian|
            guardian.name.downcase == name
        end
    end
end