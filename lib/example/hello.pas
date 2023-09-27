unit Hello;

interface
procedure SayHello(name: string);

implementation
procedure SayHello(name: string);
begin
    writeln('Hello, ', name,'!');
end;

end.