function fibonacci(n)
    if n<3 then
        return 1
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
    sleep(2)
end
    for n = 1, 32 do
    io.write(fibonacci(n), ", ")
end
io.write("...\n")