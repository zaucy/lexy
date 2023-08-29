load("@bazel_skylib//lib:selects.bzl", "selects")

LEXY_COPTS = selects.with_or({
    ("//conditions:default", "@rules_cc//cc/compiler:clang", "@rules_cc//cc/compiler:gcc", "@rules_cc//cc/compiler:mingw-gcc"): [
        "-std=c++20",
    ],
    ("@rules_cc//cc/compiler:msvc-cl", "@rules_cc//cc/compiler:clang-cl"): [
        "/std:c++20",
        "/permissive-",
        "/Zc:preprocessor",
        "/utf-8",
    ],
})
