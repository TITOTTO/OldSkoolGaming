module ApplicationHelper
    def prix_total
        @total = 0
        current_user.cart.articles.each do |prix|
            @total = @total + prix.price
        end
        return @total
    end
end
