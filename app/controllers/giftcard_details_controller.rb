class GiftcardDetailsController < ApplicationController
	def index
		
	end

	def new 
		@gift = GiftcardDetail.new
	end

	def create
		@gift = GiftcardDetail.new(card_details)
		if @gift.save
			redirect_to @gift
		else
			render 'new'
		end	
	end

	def show 
		@gift = GiftcardDetail.find(params[:id])
	end 

	def contact 

	end

	private 

	def image_param
		params.require(:gift_card_detail).permit(:value ,:name,:message, :valid_through ,:avatar)
	end

	def card_details
		params.require(:giftcard_detail).permit(:avatar ,:value,:name,:message)
	end 
end
