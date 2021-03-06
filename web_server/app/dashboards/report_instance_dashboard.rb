require "administrate/base_dashboard"

class ReportInstanceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    REPORT_NO: Field::Number,
    USER_NO: Field::Number,
    CHARACTER_NO: Field::Number,
    REPORT_TYPE: Field::Text,
    VALUE: Field::Text,
    USER_LV: Field::Number,
    EXP: Field::Number,
    ACTION_TIME: Field::DateTime,
    IP: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :REPORT_NO,
    :USER_NO,
    :CHARACTER_NO,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :REPORT_NO,
    :USER_NO,
    :CHARACTER_NO,
    :REPORT_TYPE,
    :VALUE,
    :USER_LV,
    :EXP,
    :ACTION_TIME,
    :IP,
  ]

  # Overwrite this method to customize how report instances are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(report_instance)
  #   "ReportInstance ##{report_instance.id}"
  # end
end
