require 'kramdown'

class EditorController < ApplicationController
  def index
    @text = params['text']

    if @text.present?
      @html = @text.gsub(/えっと|えーっと|そのー/,'')
    else
      @html = ''
    end
  end
end
