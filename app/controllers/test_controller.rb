class TestController < ApplicationController
  def beginning
    @company = params[:company]
    session[:test] = [params[:id], @company]
  end

  def instructions
    @company = session[:test][1]
    @exercises_id = []
    Link.all.each do |link|
      if link.test_id.to_s == session[:test][0]
        @exercises_id.push(link.exercise_id)
      end
    end
    @languages_id = Set.new 

    @exercises_id.each do |exercise|
       @languages_id.add(Exercise.find(exercise).language_id)
    end
    @language_name = []
    @languages_id.each do |language_id|
       @language_name.push(Language.find(language_id).name)
    end
    
    @nb_exercises = @language_name.length

    session[:test].push(@exercises_id)
    session[:test].push(0)
    session[:test].push(" ")

  end

  def exercise
    @company = session[:test][1]
    @statement = Exercise.find(session[:test][6][session[:test][7]]).statement
    @function = Exercise.find(session[:test][6][session[:test][7]]).function
    @question = session[:test][7]+1
    @size = session[:test][6].length
    @codemirror = Language.find(Exercise.find(session[:test][6][session[:test][7]]).language_id).codemirror

  end

  def results
    @company = session[:test][1]
    @first_name = session[:test][2]
    @last_name = session[:test][3]
    @current = Time.now.to_datetime
    @start = Date.parse(session[:test][5]).strftime("%d")+"/"+Date.parse(session[:test][5]).strftime("%m")+"/"+Date.parse(session[:test][5]).strftime("%Y")+" "+ session[:test][5][11..18]
    @end =  @current.strftime("%d")+"/"+@current.strftime("%m")+"/"+@current.strftime("%Y")+" "+ @current.strftime("%H") + ":" + @current.strftime("%M")+":" + @current.strftime("%S")


     @d = Testmail.new(:first_name => session[:test][2], :last_name => session[:test][3], :email => session[:test][4], :test_id => session[:test][0], :time_start => @start, :time_end => @end, :result => session[:test][8])
     @d.deliver


  end

  def beginningform
    session[:test].push(params[:first_name])
    session[:test].push(params[:last_name])
    session[:test].push(params[:email])
    session[:test].push(Time.now.to_datetime)
    
    redirect_to '/test/instructions'
  end

  def instructions_next
    redirect_to '/test/exercise'
  end

  def exercise_next
  session[:test][8] = session[:test][8] + params[:result].to_s + '-----------------------------------'
  @size = session[:test][6].length
  session[:test][7] = session[:test][7] + 1
  @index = session[:test][7]
    if @size == @index
      redirect_to '/test/results'
    else
      redirect_to '/test/exercise'
    end
  end
end
