json.partial! @list, partial: 'list', as: :list

json.items do 
  json.array! @list.items, partial: 'api/items/item', as: :item
end