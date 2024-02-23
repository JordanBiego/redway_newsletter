class LeadMailer < ApplicationMailer
  def welcome_email(lead, locale)
    @lead = lead
    I18n.with_locale(locale) do
      mail(to: @lead.email, subject: t('lead_mailer.welcome_email.subject'))
    end
  end
end
