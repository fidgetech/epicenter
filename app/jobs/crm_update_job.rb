class CrmUpdateJob
  def perform(lead_id, update_fields)
    CrmLead.perform_update(lead_id, update_fields)
  end
end
