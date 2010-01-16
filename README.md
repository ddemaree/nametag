**Nametag** is a simple Rails plugin that allows the default record identifier/model name behavior to be tweaked.

  class Heffalump
    def self.model_name
      returning(super) do |model_name|
        model_name.element = "woozle"
        model_name.partial_path = "#{model_name.collection}/woozle"
      end
    end
  end
  
  # In Rails
  render :partial => @heffalump #=> will render "heffalumps/woozle"

It's basically a reworking of the existing ActiveSupport code for model naming, tweaked to add setter methods for the various model name attributes. My intention is to submit this as a Rails patch, but I've packaged it as a plugin so I can play with it now.

Please enjoy, and do send any questions/comments/threats to me at david@practical.cc.

Copyright (c) 2010 David Demaree, released under the MIT license
