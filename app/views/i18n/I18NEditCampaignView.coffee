I18NEditModelView = require './I18NEditModelView'
Campaign = require 'models/Campaign'

module.exports = class I18NEditCampaignView extends I18NEditModelView
  id: "i18n-edit-campaign-view"
  modelClass: Campaign

  buildTranslationList: ->
    lang = @selectedLanguage

    # name, description
    if i18n = @model.get('i18n')
      if name = @model.get('name')
        @wrapRow 'Campaign short name', ['name'], name, i18n[lang]?.name, []
      if fullName = @model.get('fullName')
        @wrapRow 'Campaign full name', ['fullName'], fullName, i18n[lang]?.fullName, []

  # TODO: saves to this don't work since Campaigns don't use versioning. What to do?
