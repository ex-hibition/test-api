class Calendar < ApplicationRecord
  self.abstract_class = true 

  self.table_name = "cm_datemngt_m"
  self.primary_key = "key"
end
