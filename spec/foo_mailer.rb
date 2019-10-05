require 'rails/all'

class FooMailer < ActionMailer::Base
  include InlineStylesMailer
  layout 'foo_mailer'

  def foo
    mail(:to => "test@localhost", :subject => "Test")
  end

  def backwards
    mail(:to => "test@localhost", :subject => "Test", :parts_order => [ "text/html", "text/plain"])
  end

end
