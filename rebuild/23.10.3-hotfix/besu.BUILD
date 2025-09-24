load("@rules_java//java:java_library.bzl", "java_library")
load("@rules_jvm_external//:defs.bzl", "artifact")

package(default_visibility = ["//visibility:public"])

java_library(
    name = "besu",
    runtime_deps = [
        artifact("org.hyperledger.besu.internal:besu", "besu_maven_23103_hotfix"),
    ],
)
