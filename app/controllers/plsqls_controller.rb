require 'ruby-plsql'

class PlsqlsController < ApplicationController
  # -- ruby-plsql で config/database.yml の定義を使う
  plsql.activerecord_class = ActiveRecord::Base

  # -- 直接SQLを記述するサンプル
  def sysdate_proc
     @return = plsql.select(:first, 'select sysdate from dual') 
    
    respond_to do |format|
      format.any { render json: @return }
    end
  end

  # -- OUTパラメータを持つストアドプロシージャのサンプル
  def test_proc
    @return = plsql.test_proc(params[:key]) 
    
    respond_to do |format|
      format.any { render json: @return }
    end
  end

  # -- 戻り値を持つストアドファンクションのサンプル
  def test_func
    @return = plsql.test_func(params[:key]) 
    
    respond_to do |format|
      format.any { render json: @return }
    end
  end
end
