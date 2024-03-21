#include <iostream>
using namespace std;
const float PI = 3.141592;
void main() {
	float a, b, dt, t, num, anal,sec;
	//differentiation
	cout << " a b ? = ";
	cin >> a >> b;
	cout << " dt t ? = ";

	cin >> dt >> t;
	t = t * PI / 180;
	sec = 1 / cos(b * t);
	cout << sec << endl;
	anal = a * b * sec * sec;
	num = a * (tan(b * (t + dt)) - tan(b * t)) / dt;
	cout << " num " << num << " anal " << anal << endl;
	cout << "error = " << (num - anal) / anal * 100 << "\n";

	//integration
	float c, d;
	int N;
	cout << " c d N";
	cin >> c >> d >> N;
	c = c * PI / 180;
	d = d * PI / 180;
	if (cos(b * d) > 0 && cos(b * c) > 0) {
		anal = -a * (log(cos(b * d)) - log(cos(b * c))) / b;
	}
	if (cos(b * d) < 0) {
		anal = -a * (log(-1*cos(b * d)) - log(cos(b * c))) / b;
	}
	if (cos(b * c) < 0) {
		anal = -a * (log(cos(b * d)) - log(-1 * cos(b * c))) / b;
	}
	if (cos(b * d) < 0 && cos(b * c) < 0) {
		anal = -a * (log(-1*cos(b * d)) - log(-1*cos(b * c))) / b;
	dt = (d - c) / N;
	num = 0;
	for (int i = 0; i < N; i++) {
		num += a * tan(b * (c + dt * i)) * dt;
	}
	cout << " num " << num << " anal " << anal << endl;
	cout << "error = " << (num - anal) / anal * 100 << "\n";
}