# Print out an image from a known Array
# Image Blur#2
# Anne 10 July 2019 - GW coding bootcamp
# ----------------
class Image
#  Grab the four arrays and lable them
    def initialize  (initialarray)
        @image = initialarray 
    end

    def output_image
        @image.each do |rowoutput|
            stringoutput = rowoutput.to_s
            puts stringoutput
        end

    end

    def pixelmap
        newimage = []
        @buildmainarray = []
        @buildsubarray = []
        @fixmainarray = []
        @finalarray = []
        valuegrab = 0
        @image.each_index do|rowindex|
            @subimage = @image[rowindex]
            @subimage.each_index do |columnindex|
                pixelvalue = @subimage[valuegrab]
                newimage << pixelvalue
                newimage << rowindex
                newimage << columnindex
                @buildsubarray = newimage.join
                @buildmainarray.push(@buildsubarray)
                newimage.clear
                valuegrab = valuegrab+1
            end
            valuegrab=0
        end


        def locateone
            @finalarray.each do |subarray|
               subarray.each do |pixelcode|
                    @pixelcode=pixelcode.to_i
                    if @pixelcode >=100
                        @row = (@pixelcode-100)/10
                        @col = (@pixelcode-100)%10
                    else
                        @row = @pixelcode/10
                        @col = @pixelcode%10
                    end
                    
                #check if the pixel is a one
                    if @pixelcode>=100
                        @pixel=1
                        
                    #change left value
                        if @col !=0
                            left=@col-1
                            @image[@row][left]=1
                        end

                     #change right value
                        if @col != @imagewidth-1
                            right=@col+1
                            @image[@row][right]=1
                        end

                    #change above value
                        if @row !=0
                           up=@row-1
                          @image[up][@col]=1
                        end

                    #change below value
                        if @row != @imageheights -1
                            down=@row+1
                            @image[down][@col]=1
                        end
                    end #end of change if pixel =1 values 
                end            
            end
        end  #end of locateone def loop
    end #end of pixelmap def loop

end #end of Image class loop

class Blur

    def initialize
        @image = []
        @image = [0,0,0,0], [0,0,0,0],[0,1,0,0],[0,0,0,0]
        @image1 = []
        @image1 = Image.new(@image)
    end

    def getDimensions
        @imageheights = 4
        @imagewidth = 4
        puts "image dimensions are #{@imagewidth} by #{@imageheights}"
    end
    

    def blurring
        @input=4
        while @input != 0
            @image1.pixelmap
            #@image1.fix
            @image1.locateone
            @input=@input-1
        end
            puts "blured image has changed #{@originalinput} pixels up, down, left and right from original image"
            @image1.output_image
       
    end
end


#----main program --------
image=Blur.new
image.blurring


    