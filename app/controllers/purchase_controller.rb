class PurchaseController < ApplicationController
  before_filter :authenticate_user! #ログインしてないユーザーがアクセスしてきたときにログイン画面を表示
  
  def index
  end
end
