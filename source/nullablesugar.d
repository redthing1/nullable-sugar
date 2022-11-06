module nullablesugar;

import std.typecons;

pragma(inline, true) {
	Nullable!T no(T)() {
		return Nullable!T.init;
	}

	bool has(T)(Nullable!T value) {
		return !value.isNull;
	}

	Nullable!T some(T)(T value) {
		return Nullable!T(value);
	}
}
