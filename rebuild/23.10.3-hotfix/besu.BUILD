load("@dagger_245//:workspace_defs.bzl", "dagger_rules")
load("@rules_java//java:defs.bzl", "java_library", "java_plugin")
load("@rules_jvm_external//:defs.bzl", "artifact")

package(default_visibility = ["//visibility:public"])

filegroup(
    name = "besu_srcs",
    srcs = glob(["besu/src/main/java/**/*.java"]),
)

filegroup(
    name = "besu_resources",
    srcs = glob(["besu/src/main/resources/**/*"]),
)

java_library(
    name = "besu",
    srcs = [":besu_srcs"],
    resources = [":besu_resources"],
    deps = [
        ":config",
        ":consensus_clique",
        ":consensus_common",
        ":consensus_ibft",
        ":consensus_merge",
        ":consensus_qbft",
        ":crypto_algorithms",
        ":crypto_services",
        ":dagger",
        ":datatypes",
        ":enclave",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_ethstats",
        ":ethereum_p2p",
        ":ethereum_permissioning",
        ":ethereum_retesteth",
        ":ethereum_rlp",
        ":ethereum_stratum",
        ":ethereum_trie",
        ":evm",
        ":metrics_core",
        ":nat",
        ":pki",
        ":plugin_api",
        ":plugins_rocksdb",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-common", "besu_maven_23103_hotfix"),
        artifact("javax.inject:javax.inject", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", "besu_maven_23103_hotfix"),
        artifact("com.github.oshi:oshi-core", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("com.graphql-java:graphql-java", "besu_maven_23103_hotfix"),
        artifact("info.picocli:picocli", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-web", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-config", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-toml", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.springframework.security:spring-security-crypto", "besu_maven_23103_hotfix"),
        artifact("org.xerial.snappy:snappy-java", "besu_maven_23103_hotfix"),
        artifact("tech.pegasys:jc-kzg-4844", "besu_maven_23103_hotfix"),
        artifact("org.rocksdb:rocksdbjni", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-jul", "besu_maven_23103_hotfix"),
        artifact("com.splunk.logging:splunk-library-javalogging", "besu_maven_23103_hotfix"),
        artifact("org.fusesource.jansi:jansi", "besu_maven_23103_hotfix"),  # for color logging in windows
    ],
)

filegroup(
    name = "config_srcs",
    srcs = glob(["config/src/main/java/**/*.java"]),
)

filegroup(
    name = "config_resources",
    srcs = glob(["config/src/main/resources/**"]),
)

java_library(
    name = "config",
    srcs = [":config_srcs"],
    resources = [":config_resources"],
    deps = [
        ":datatypes",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("info.picocli:picocli", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "consensus_clique_srcs",
    srcs = glob(["consensus/clique/src/main/java/**/*.java"]),
)

java_library(
    name = "consensus_clique",
    srcs = [":consensus_clique_srcs"],
    deps = [
        ":config",
        ":consensus_common",
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_rlp",
        ":evm",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "consensus_common_srcs",
    srcs = glob(["consensus/common/src/main/java/**/*.java"]),
)

java_library(
    name = "consensus_common",
    srcs = [":consensus_common_srcs"],
    deps = [
        ":config",
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_rlp",
        ":evm",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "consensus_ibft_srcs",
    srcs = glob(["consensus/ibft/src/main/java/**/*.java"]),
)

java_library(
    name = "consensus_ibft",
    srcs = [":consensus_ibft_srcs"],
    deps = [
        ":config",
        ":consensus_common",
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_rlp",
        ":evm",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "consensus_merge_srcs",
    srcs = glob(["consensus/merge/src/main/java/**/*.java"]),
)

java_library(
    name = "consensus_merge",
    srcs = [":consensus_merge_srcs"],
    deps = [
        ":config",
        ":datatypes",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_trie",
        ":evm",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "consensus_qbft_srcs",
    srcs = glob(["consensus/qbft/src/main/java/**/*.java"]),
)

java_library(
    name = "consensus_qbft",
    srcs = [":consensus_qbft_srcs"],
    deps = [
        ":config",
        ":consensus_common",
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_rlp",
        ":evm",
        ":pki",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.web3j:abi", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "crypto_algorithms_srcs",
    srcs = glob(["crypto/algorithms/src/main/java/**/*.java"]),
)

java_library(
    name = "crypto_algorithms",
    srcs = [":crypto_algorithms_srcs"],
    deps = [
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("net.java.dev.jna:jna", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:secp256k1", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:secp256r1", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:blake2bf", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "crypto_services_srcs",
    srcs = glob(["crypto/services/src/main/java/**/*.java"]),
)

java_library(
    name = "crypto_services",
    srcs = [":crypto_services_srcs"],
    deps = [
        ":crypto_algorithms",
        ":plugin_api",
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "datatypes_srcs",
    srcs = glob(["datatypes/src/main/java/**/*.java"]),
)

java_library(
    name = "datatypes",
    srcs = [":datatypes_srcs"],
    deps = [
        ":crypto_algorithms",
        ":ethereum_rlp",
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "enclave_srcs",
    srcs = glob(["enclave/src/main/java/**/*.java"]),
)

java_library(
    name = "enclave",
    srcs = [":enclave_srcs"],
    deps = [
        ":crypto_algorithms",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-web", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-net", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcpkix-jdk18on", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec-http", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_api_srcs",
    srcs = glob(["ethereum/api/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_api",
    srcs = [":ethereum_api_srcs"],
    deps = [
        ":config",
        ":consensus_merge",
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":enclave",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_permissioning",
        ":ethereum_rlp",
        ":ethereum_trie",
        ":evm",
        ":immutables_value",
        ":metrics_core",
        ":nat",
        ":plugin_api",
        ":services_pipeline",
        ":services_tasks",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("com.graphql-java:graphql-java", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-extension-trace-propagators", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-auth-jwt", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-unit", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-web", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-codegen", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-auth-common", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-net", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-toml", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.antlr:antlr4-runtime", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
        artifact("org.springframework.security:spring-security-crypto", "besu_maven_23103_hotfix"),
        artifact("org.xerial.snappy:snappy-java", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("org.web3j:abi", "besu_maven_23103_hotfix"),
        artifact("com.github.ben-manes.caffeine:caffeine", "besu_maven_23103_hotfix"),
        artifact("org.immutables:value", "besu_maven_23103_hotfix"),
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcpkix-jdk18on", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport-native-epoll", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport-native-kqueue", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec-http", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-context", "besu_maven_23103_hotfix"),
        artifact("org.checkerframework:checker-qual", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_blockcreation_srcs",
    srcs = glob(["ethereum/blockcreation/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_blockcreation",
    srcs = [":ethereum_blockcreation_srcs"],
    deps = [
        ":config",
        ":crypto_algorithms",
        ":datatypes",
        ":ethereum_core",
        ":ethereum_eth",
        ":evm",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_core_srcs",
    srcs = glob(["ethereum/core/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_core",
    srcs = [":ethereum_core_srcs"],
    javacopts = [
        # https://errorprone.info/bugpattern/ComparisonOutOfRange
        # https://github.com/hyperledger/besu/blob/23.10.3-hotfix/ethereum/core/src/main/java/org/hyperledger/besu/ethereum/mainnet/AbstractGasLimitSpecification.java#L44
        "-XepDisableAllChecks",
    ],
    deps = [
        ":config",
        ":crypto_algorithms",
        ":dagger",
        ":datatypes",
        ":enclave",
        ":ethereum_rlp",
        ":ethereum_trie",
        ":evm",
        ":immutables_value",
        ":metrics_core",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("org.web3j:core", "besu_maven_23103_hotfix"),
        artifact("org.web3j:abi", "besu_maven_23103_hotfix"),
        artifact("org.openjdk.jmh:jmh-generator-annprocess", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("net.java.dev.jna:jna", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-concurrent", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-rlp", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:bls12-381", "besu_maven_23103_hotfix"),
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("tech.pegasys:jc-kzg-4844", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient_guava", "besu_maven_23103_hotfix"),
        artifact("org.xerial.snappy:snappy-java", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains.kotlin:kotlin-stdlib", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_eth_srcs",
    srcs = glob(["ethereum/eth/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_eth",
    srcs = [":ethereum_eth_srcs"],
    deps = [
        ":config",
        ":dagger",
        ":datatypes",
        ":ethereum_core",
        ":ethereum_p2p",
        ":ethereum_permissioning",
        ":ethereum_rlp",
        ":ethereum_trie",
        ":evm",
        ":immutables_value",
        ":metrics_core",
        ":plugin_api",
        ":services_kvstore",
        ":services_pipeline",
        ":services_tasks",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("org.openjdk.jmh:jmh-generator-annprocess", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-rlp", "besu_maven_23103_hotfix"),
        artifact("org.rocksdb:rocksdbjni", "besu_maven_23103_hotfix"),
        artifact("com.github.ben-manes.caffeine:caffeine", "besu_maven_23103_hotfix"),
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("javax.inject:javax.inject", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains.kotlin:kotlin-stdlib", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-common", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_ethstats_srcs",
    srcs = glob(["ethereum/ethstats/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_ethstats",
    srcs = [":ethereum_ethstats_srcs"],
    deps = [
        ":config",
        ":consensus_clique",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":evm",
        ":immutables_value",
        ":plugin_api",
        ":util",
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("com.squareup.okhttp3:okhttp", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_p2p_srcs",
    srcs = glob(["ethereum/p2p/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_p2p",
    srcs = [":ethereum_p2p_srcs"],
    deps = [
        ":crypto_algorithms",
        ":crypto_services",
        ":datatypes",
        ":ethereum_core",
        ":ethereum_rlp",
        ":immutables_value",
        ":metrics_core",
        ":nat",
        ":pki",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("dnsjava:dnsjava", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport-native-unix-common", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-crypto", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-devp2p", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-dns-discovery", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-io", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-rlp", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains.kotlin:kotlin-stdlib", "besu_maven_23103_hotfix"),
        artifact("org.owasp.encoder:encoder", "besu_maven_23103_hotfix"),
        artifact("org.xerial.snappy:snappy-java", "besu_maven_23103_hotfix"),
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("tech.pegasys.discovery:discovery", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-buffer", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-handler", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-common", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_permissioning_srcs",
    srcs = glob(["ethereum/permissioning/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_permissioning",
    srcs = [":ethereum_permissioning_srcs"],
    deps = [
        ":crypto_algorithms",
        ":datatypes",
        ":ethereum_core",
        ":ethereum_p2p",
        ":evm",
        ":metrics_core",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-toml", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.web3j:abi", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_retesteth_srcs",
    srcs = glob(["ethereum/retesteth/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_retesteth",
    srcs = [":ethereum_retesteth_srcs"],
    deps = [
        ":config",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":ethereum_eth",
        ":ethereum_p2p",
        ":ethereum_rlp",
        ":evm",
        ":metrics_core",
        ":nat",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-web", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_rlp_srcs",
    srcs = glob(["ethereum/rlp/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_rlp",
    srcs = [":ethereum_rlp_srcs"],
    deps = [
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_stratum_srcs",
    srcs = glob(["ethereum/stratum/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_stratum",
    srcs = [":ethereum_stratum_srcs"],
    deps = [
        ":consensus_merge",
        ":datatypes",
        ":ethereum_api",
        ":ethereum_blockcreation",
        ":ethereum_core",
        ":metrics_core",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-buffer", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec-http", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-common", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_trie_srcs",
    srcs = glob(["ethereum/trie/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_trie",
    srcs = [":ethereum_trie_srcs"],
    deps = [
        ":crypto_algorithms",
        ":datatypes",
        ":ethereum_rlp",
        ":immutables_value",
        ":plugin_api",
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "ethereum_verkletrie_srcs",
    srcs = glob(["ethereum/verkletrie/src/main/java/**/*.java"]),
)

java_library(
    name = "ethereum_verkletrie",
    srcs = [":ethereum_verkletrie_srcs"],
    deps = [
        ":crypto_algorithms",
        ":ethereum_rlp",
        ":ethereum_trie",
        ":immutables_value",
        artifact("org.immutables:value-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:ipa-multipoint", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "evm_srcs",
    srcs = glob(["evm/src/main/java/**/*.java"]),
)

java_library(
    name = "evm",
    srcs = [":evm_srcs"],
    deps = [
        ":crypto_algorithms",
        ":datatypes",
        ":ethereum_rlp",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.github.ben-manes.caffeine:caffeine", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("net.java.dev.jna:jna", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:arithmetic", "besu_maven_23103_hotfix"),
        artifact("org.hyperledger.besu:bls12-381", "besu_maven_23103_hotfix"),
        artifact("tech.pegasys:jc-kzg-4844", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "metrics_core_srcs",
    srcs = glob(["metrics/core/src/main/java/**/*.java"]),
)

java_library(
    name = "metrics_core",
    srcs = [":metrics_core_srcs"],
    deps = [
        ":plugin_api",
        ":dagger",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("info.picocli:picocli", "besu_maven_23103_hotfix"),
        # artifact("io.grpc:grpc-netty", "besu_maven_23103_hotfix"),
        # artifact("io.grpc:grpc-core", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-tcnative-boringssl-static", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-transport-native-epoll", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-all", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-sdk", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-semconv", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-sdk-trace", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-sdk-common", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-sdk-metrics", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-exporter-otlp", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-sdk-extension-autoconfigure", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient_common", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient_hotspot", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient_pushgateway", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-web", "besu_maven_23103_hotfix"),
        artifact("io.netty:netty-codec-http", "besu_maven_23103_hotfix"),
        artifact("org.jetbrains:annotations", "besu_maven_23103_hotfix"),
        artifact("javax.inject:javax.inject", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "metrics_rocksdb_srcs",
    srcs = glob(["metrics/rocksdb/src/main/java/**/*.java"]),
)

java_library(
    name = "metrics_rocksdb",
    srcs = [":metrics_rocksdb_srcs"],
    deps = [
        ":metrics_core",
        ":plugin_api",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient", "besu_maven_23103_hotfix"),
        artifact("org.rocksdb:rocksdbjni", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "nat_srcs",
    srcs = glob(["nat/src/main/java/**/*.java"]),
)

java_library(
    name = "nat",
    srcs = ["nat_srcs"],
    deps = [
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("com.squareup.okhttp3:okhttp", "besu_maven_23103_hotfix"),
        artifact("org.jupnp:org.jupnp", "besu_maven_23103_hotfix"),
        artifact("org.jupnp:org.jupnp.support", "besu_maven_23103_hotfix"),
        artifact("io.kubernetes:client-java", "besu_maven_23103_hotfix"),
        artifact("io.kubernetes:client-java-api", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "pki_srcs",
    srcs = glob(["pki/src/main/java/**/*.java"]),
)

java_library(
    name = "pki",
    srcs = [":pki_srcs"],
    deps = [
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcpkix-jdk18on", "besu_maven_23103_hotfix"),
        artifact("org.bouncycastle:bcprov-jdk18on", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "plugin_api_srcs",
    srcs = glob(["plugin-api/src/main/java/**/*.java"]),
)

java_library(
    name = "plugin_api",
    srcs = [":plugin_api_srcs"],
    deps = [
        ":datatypes",
        ":evm",
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-units", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "plugins_rocksdb_srcs",
    srcs = glob(["plugins/rocksdb/src/main/java/**/*.java"]),
)

java_library(
    name = "plugins_rocksdb",
    srcs = [":plugins_rocksdb_srcs"],
    deps = [
        ":ethereum_core",
        ":metrics_core",
        ":metrics_rocksdb",
        ":plugin_api",
        ":services_kvstore",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-core", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "besu_maven_23103_hotfix"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("info.picocli:picocli", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("io.prometheus:simpleclient", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("org.rocksdb:rocksdbjni", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "services_kvstore_srcs",
    srcs = glob(["services/kvstore/src/main/java/**/*.java"]),
)

java_library(
    name = "services_kvstore",
    srcs = [":services_kvstore_srcs"],
    deps = [
        ":plugin_api",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "services_pipeline_srcs",
    srcs = glob(["services/pipeline/src/main/java/**/*.java"]),
)

java_library(
    name = "services_pipeline",
    srcs = [":services_pipeline_srcs"],
    deps = [
        ":metrics_core",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("io.opentelemetry:opentelemetry-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "services_tasks_srcs",
    srcs = glob(["services/tasks/src/main/java/**/*.java"]),
)

java_library(
    name = "services_tasks",
    srcs = [":services_tasks_srcs"],
    deps = [
        ":metrics_core",
        ":plugin_api",
        ":util",
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("org.openjdk.jmh:jmh-generator-annprocess", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("io.vertx:vertx-core", "besu_maven_23103_hotfix"),
        artifact("io.tmio:tuweni-bytes", "besu_maven_23103_hotfix"),
        artifact("com.google.code.findbugs:jsr305", "besu_maven_23103_hotfix"),
    ],
)

filegroup(
    name = "util_srcs",
    srcs = glob(["util/src/main/java/**/*.java"]),
)

java_library(
    name = "util",
    srcs = [":util_srcs"],
    deps = [
        artifact("org.slf4j:slf4j-api", "besu_maven_23103_hotfix"),
        artifact("com.google.guava:guava", "besu_maven_23103_hotfix"),
        artifact("net.java.dev.jna:jna", "besu_maven_23103_hotfix"),
        artifact("org.apache.commons:commons-lang3", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-api", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-core", "besu_maven_23103_hotfix"),
        artifact("org.apache.logging.log4j:log4j-slf4j2-impl", "besu_maven_23103_hotfix"),
        artifact("org.xerial.snappy:snappy-java", "besu_maven_23103_hotfix"),
        artifact("com.google.errorprone:error_prone_annotations", "besu_maven_23103_hotfix"),
    ],
)

java_library(
    name = "immutables_value",
    exported_plugins = [":immutables_processor"],
    visibility = ["//visibility:public"],
    exports = [
        "@besu_maven_23103_hotfix//:org_immutables_value",
    ],
)

java_plugin(
    name = "immutables_processor",
    generates_api = 1,
    processor_class = "org.immutables.processor.ProxyProcessor",
    deps = [
        "@besu_maven_23103_hotfix//:org_immutables_value_processor",
    ],
)

dagger_rules(repo_name = "@besu_maven_23103_hotfix")
