class Lead < ActiveRecord::Base
  #  attr_accessible :first_name, :last_name, :street, :suburb, :postcode, :phone, :mobile, :email_address, :q_vp, :q_rb, :q_tl, :q_cl, :q_mc, :q_bd, :q_c, :q_ah, :other, :beds, :baths, :garages, :comments
  #validates_presence_of :first_name, :last_name, :street, :suburb, :postcode, :email_address, :beds, :baths

  validates_format_of :email_address, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  validate :at_least_one

  def at_least_one
    errors.add_to_base("Either need phone or mobile") if self.mobile.empty? && self.phone.empty?
  end
end