module ApplicationHelper
    #Returns the full title on a per-page bases
    def full_title(page_title = '')
        base_title = "The Sample App"
        if page_title.empty?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end
    
end
