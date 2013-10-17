class FlashMessage < ActiveRecord::Base

  default_scope { order(:site) }
  
  Options = {error: "error", information: "information"}
  Site = {tv4: 'tv4', tv4play: 'tv4play'}


  def channel
  "site-#{site}-pusher"
  end

  def flash_type
    case message_type
      when 'error'
        'e'
      when 'information'
        'i'
      else
        'u'
      end
  end
end
