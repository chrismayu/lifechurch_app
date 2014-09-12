json.array!(@events_setup_forms) do |events_setup_form|
  json.extract! events_setup_form, :id, :event_id, :email_for_forms, :c_f_1, :c_f_2, :c_f_3, :c_f_4, :c_f_5, :c_f_6, :c_f_7, :c_f_8, :c_f_9, :c_f_10, :c_f_11, :c_f_12, :age, :c_f_1_h, :c_f_2_h, :c_f_3_h, :c_f_4_h, :c_f_5_h, :c_f_6_h, :c_f_7_h, :c_f_8_h, :c_f_9_h, :c_f_10_h, :c_f_11_h, :c_f_12_h, :phone, :note, :bday, :sex, :use_form, :down_link, :ok_to_contact, :form_title
  json.url events_setup_form_url(events_setup_form, format: :json)
end
