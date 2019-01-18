require 'kramdown'

class EditorController < ApplicationController
  def index
    @text = params['text']

    if @text.present?
      @html = Document.new(@text).upcase
    else
      @html = ''
    end
  end
end
