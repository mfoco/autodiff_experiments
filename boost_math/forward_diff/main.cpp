
#include <boost/math/differentiation/autodiff.hpp>

using namespace boost::math::differentiation;

template<typename X, typename Y>
promote<X, Y> f(X x, Y y) {
    if (x > y) {
        auto a = x - y;
        return a*a+y;
    }
    return y;
}

using namespace std;

int main() {
	auto x = make_fvar<double, 1>(2.0);
	auto z = f(x, 1.0);
}
