class Lion

  attr_accessor 
  def initialize(hair, size)
    @hair = hair
    @size = size

  end

  def what_type

      if @hair == :mane && @size == :large
        puts "the animal is a male lion"
      end
    

    
      if @hair == :short && @size == :medium
        puts "the animal is a female lion"
      end
    

    
      if @hair == :fuzzy && @size == :small
        puts "the animal is a lion cub"
      end
    
  end
end

@lion = Lion.new(:mane, :large)
@lion.what_type



