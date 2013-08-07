class TestController < ApplicationController
	before_action :do_something, :only => :other_action, :if => :exploder

	def index
		render :text => 'test passed'
	end

	private

	def do_something; end

	def exploder
		raise "Exploded, even though we're in the '#{params[:action]}' action"
	end
end