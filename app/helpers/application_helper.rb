module ApplicationHelper
  
  def menssagem_erro(obj)
    mns = ""
    if obj.errors.any? 
    mns.concat('div class="alert alert-error">')
      mns.concat('<button type="button" class="close" data-dismiss="alert">')
      mns.concat('&times;')
      mns.concat('</button>')
      mns.concat('<strong>')
      mns.concat(pluralize(obj.errors.count, "error"))
      mns.concat('prohibited this capalote_documento from being saved:</strong>')
      mns.concat('<ul>')
        obj.errors.full_messages.each do |msg|
        mns.concat('<li>')
          mns.concat(msg)
        mns.concat('</li>')
        end
      mns.concat('</ul>')
    mns.concat('</div')
    
    end
    
    return tag(mns)
    
  end
end
