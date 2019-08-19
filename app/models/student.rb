 def to_s
    self.first_name + " " + self.last_name
  end
end 

  def active_status
    if self.active == true
      "active"
    else
      "inactive"
    end
  end
end