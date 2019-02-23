# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    @page = 'hello'
  end

  def show
    @page = page.find(params[:id])
  end

  def create
    @page = page.new(params[:page])
  end

  def update
    @page = page.find(params[:id])
  end

  def edit
    @page = page.find(params[:id])
  end

  def destroy
    page = page.find(params[:id])
  end
end
