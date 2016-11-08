//
// Created by Masayuki IZUMI on 11/08/16.
//

#ifndef TSSS_TSSS_HPP
#define TSSS_TSSS_HPP

#include "nod/nod.hpp"
#include "singleton_t/singleton.hpp"

namespace tsss {

template <typename T>
using SingletonT = singleton_t::Singleton<T>;

template <typename T>
using SignalT = nod::signal<void (T&)>;

template <typename T>
using CallbackFn = std::function<void (const T&)>;

using Connection = nod::connection;

template <typename T>
class Signal : public SingletonT<SignalT<T>> {
public:
  using SingletonT<SignalT<T>>::get;

  static Connection connect(const CallbackFn<T>& callback) {
    return get().connect(callback);
  }

  static void emit(T t) {
    get()(t);
  }
};

}

#endif //TSSS_TSSS_HPP
