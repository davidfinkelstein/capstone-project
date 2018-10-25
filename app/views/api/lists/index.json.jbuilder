json.array! @lists.each do |list|
  json.partial! "list.json.jbuilder",
    list: list
end