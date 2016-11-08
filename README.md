# tsss
Thread-safety and singleton signal implementation.

## Usage

```cpp
struct ExampleEvent {
  std::string name;
};

auto conn = tsss::Signal<ExampleEvent>::connect([](const ExampleEvent &event) {
    std::cout << "Received event: " << event.name << std::endl;
});

tsss::Signal<ExampleEvent>::emit({"Hello, World!"});

conn.disconnect();
```


## Dependencies

- [fr00b0/nod](https://github.com/fr00b0/nod)
    - Thread-safety signal implementation
- [izumin5210/singleton_t](https://github.com/izumin5210/singleton_t): 
    - Templated singleton implementation


## License
Licensed under [MIT License](https://izumin.mit-license.org/2016).
