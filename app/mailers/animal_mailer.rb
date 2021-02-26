class AnimalMailer < ApplicationMailer
  before_action :load_animal

  def confirmation
    mail to: 'klebersubcontas@gmail.com', subject: "Animal created: #{@animal.name}"
  end

  private

  def load_animal
    @animal = params[:animal]
  end
end
