class Post < ApplicationRecord
    # validates :title,:start_date,:finish_date,:memo, {presence:true}
    validates :title, {presence:true}
    validates :start_date, {presence:true}
    validates :finish_date, {presence:true}
    validates :memo, {presence:true}

    
end
