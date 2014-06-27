class DemoController < ApplicationController

	layout 'application'

  def index
  end

  def hello
  	#render('index')
  	@array = [1,2,3,4,5]
  	@id = params['id'].to_i
  	@page = params[:page].to_i
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def jdleiker
  	redirect_to("http://jdleiker.com")
  end

  def text_helpers
  end

  def escape_output
  end

  def make_error
    # My guesses for the 3 most common errors:
    #render(:text => "test" # syntax error
    #render(:text => @something.upcase) # undefined method
    #render(:text => "1" + 1) # can't convert type
  end

  def logging
    logger.debug("This is debug.")
    logger.info("This is info.")
    logger.warn("This is warn.")
    logger.error("This is error.")
    logger.fatal("This is fatal.")
    render(:text => 'Logged!')
  end
  

end