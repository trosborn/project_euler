def is_sunday?
  self.remainder(7) == 0
  true
end
