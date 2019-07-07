# Print out an image from a known Array
# Image Blur#2
# Anne 10 July 2019 - GW coding bootcamp
# ----------------
class Image
#  Grab the four arrays and lable them
    def initialize  (a, b, c, d)
        @image = [a, b, c, d]
        @a = a
        @b = b
        @c = c
        @d = d        
    end

    def output_image
        print @a*''
        puts
        print @b*''
        puts
        print @c*'' 
        puts
        print @d*'' 
        puts " "

    end

    def pixelmap
        newimage = []
        newpixel = []
        @test2 = []
        @test1 = []
        @test3 = []
        @test4 = []
        t = 0
        @image.each_index do|w|
            @subimage = @image[w]
            @subimage.each_index do |z|
                n = @subimage[t]
                newimage << n
                newimage << w 
                newimage << z
                @test1 = newimage.join
                @test2.push(@test1)
                newimage.clear
                t=t+1
            end
            t=0
        end

        def fix
            @test2.each do |yy|
                @test3 = @test2[0..3]
                @test2.shift(4)
                @test4.push@test3
            end
        end

        def locateone
            @test4.each do |e|
                e.each do |m|
                    @y=m
                    @z=@y.to_i  
                    @row=0                  

                    #check if pixel is one?
                    
                    #assign row values
                    if @z>=110
                        @row=1
                    end
                    if 
                        @z>=120
                        @row=2
                    end
                    if
                        @z>=130
                        @row=3
                    end

                    #assign col values
                    if @z>=100 
                        x=@z-110
                        if x==1 || x==11 || x==21
                            @col=1
                        elsif x==2 || x==12 || x==22
                            @col=2
                        elsif x==3 || x==13 || x==23
                            @col=3
                        else
                            @col=0
                        end
                    end
                    if @z>=100
                        @pixel=1
                        
                #change left value
                        if @col !=0
                            left=@col-1
                            @image[@row][left]=1
                        end

                #change right value
                        if @col !=3
                            right=@col+1
                            @image[@row][right]=1
                        end

                #change above value
                        if @row !=0
                           up=@row-1
                          @image[up][@col]=1
                        end

                #change below value
                        if @row !=3
                            down=@row+1
                            @image[down][@col]=1
                        end
                    end  
                end              
            end
        end
    end
end

#----main program --------
image1 = Image.new([0,0,0,0], [0,1,0,0],[0,0,0,1],[0,0,0,0])
puts "original image is the following"
image1.output_image
image1.pixelmap
image1.fix
image1.locateone
puts "------------------"
puts "blured image is as follows"
image1.output_image