module ApplicationController::Network
  extend ActiveSupport::Concern

  def network_managers
    Rbac::Filterer.filtered(ManageIQ::Providers::Openstack::NetworkManager).all
  end
end
