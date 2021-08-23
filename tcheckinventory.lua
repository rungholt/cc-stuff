local data = turtle.getItemDetail()
    if data then
        print("Item name: ", data.name)
        print("Item count: ", data.count)
        print("Items remaining: ", turtle.getItemSpace())
end