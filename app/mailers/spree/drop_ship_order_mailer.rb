module Spree

  class DropShipOrderMailer < Spree::BaseMailer

=begin
  class DropShipOrderMailer < ActionMailer::Base
=end

    default from: Spree::Store.current.mail_from_address

    def supplier_order(shipment_id)
      @shipment = Shipment.find shipment_id
      @supplier = @shipment.supplier
      mail to: @supplier.email, subject: Spree.t('drop_ship_order_mailer.supplier_order.subject', name: Spree::Store.current.name, number: @shipment.number)
    end

    def door_to_door_order(shipment_id)
      @shipment = Shipment.find shipment_id
      @supplier = @shipment.supplier
      mail to: @supplier.email, subject: 'Door2Door'
    end

  end
end
