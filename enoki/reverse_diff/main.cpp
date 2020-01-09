
#include <enoki/dynamic.h>
#include <enoki/autodiff.h>

using namespace enoki;

using Float  = float;
using FloatP = Packet<Float>;
using FloatX = DynamicArray<FloatP>;
using FloatD = DiffArray<FloatX>;

// template<typename X, typename Y>
// promote<X, Y> f(X x, Y y) {
//     if (x > y) {
//         auto a = x - y;
//         return a*a+y;
//     }
//     return y;
// }

int main() {
    FloatD x = 2.0;
    FloatD y = 1.0;
    set_requires_gradient(x);
    set_requires_gradient(y);
    FloatD z = select(x>y, (x-y)*(x-y)+y, y);
	FloatD::simplify_graph_();
    backward(t, true);
}
