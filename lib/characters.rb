class Character

    @@all = []

    attr_accessor :name, :job, :description

    def initialize(hash)
        hash.each do |k, v|
          self.send(("#{k}="), v) if  self.respond_to?("#{k}=")
        end
        self.save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end