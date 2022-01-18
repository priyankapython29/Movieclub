class Movie < ApplicationRecord

    mount_uploader :movieimage, MovieImageUploader
    
end

