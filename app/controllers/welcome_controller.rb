class WelcomeController < ApplicationController
  def index
     flash[:notice] = "早安！ 张臭臭！起床床！"
     flash[:alert]  = "晚安！ 该睡了"
     flash[:warning]= "杨妈妈，这很棒！对吧！"
  end
end
