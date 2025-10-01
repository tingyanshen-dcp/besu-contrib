load("@org_hyperledger_besu_contrib//thirdparty/maven/dagger:defs.bzl", "dagger_rules")
load("@org_hyperledger_besu_contrib//thirdparty/maven/immutables:defs.bzl", "immutables_rules")
load("@rules_jvm_external//:defs.bzl", "artifact")

def besu_rules(repo_name = "maven_besu_rebuild_24100"):
    immutables_rules(repo_name = "@%s" % repo_name)
    dagger_rules(repo_name = "@%s" % repo_name)

    native.filegroup(
        name = "besu_srcs",
        srcs = native.glob(["besu/src/main/java/**/*.java"]),
    )

    native.filegroup(
        name = "besu_resources",
        srcs = native.glob(["besu/src/main/resources/**"]),
    )

    native.java_library(
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
            ":immutables_value",
            ":metrics_core",
            ":nat",
            ":pki",
            ":plugin_api",
            ":plugins_rocksdb",
            ":services_kvstore",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", repo_name),
            artifact("com.github.oshi:oshi-core", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("com.google.dagger:dagger", repo_name),
            artifact("com.graphql-java:graphql-java", repo_name),
            artifact("info.picocli:picocli", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.vertx:vertx-web", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
            artifact("org.apache.logging.log4j:log4j-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-config", repo_name),
            artifact("io.tmio:tuweni-toml", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.springframework.security:spring-security-crypto", repo_name),
            artifact("org.xerial.snappy:snappy-java", repo_name),
            artifact("tech.pegasys:jc-kzg-4844", repo_name),
            artifact("org.rocksdb:rocksdbjni", repo_name),
            artifact("commons-net:commons-net", repo_name),
            artifact("org.apache.logging.log4j:log4j-jul", repo_name),
            artifact("com.splunk.logging:splunk-library-javalogging", repo_name),
            artifact("org.fusesource.jansi:jansi", repo_name),  # for color logging in windows
            artifact("io.netty:netty-common", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("org.apache.logging.log4j:log4j-api", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
        ],
    )

    native.filegroup(
        name = "config_srcs",
        srcs = native.glob(["config/src/main/java/**/*.java"]),
    )

    native.filegroup(
        name = "config_resources",
        srcs = native.glob(["config/src/main/resources/**"]),
    )

    native.java_library(
        name = "config",
        srcs = [":config_srcs"],
        resources = [":config_resources"],
        deps = [
            ":datatypes",
            ":immutables_value",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("info.picocli:picocli", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
        ],
    )

    native.filegroup(
        name = "consensus_clique_srcs",
        srcs = native.glob(["consensus/clique/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
        ],
    )

    native.filegroup(
        name = "consensus_common_srcs",
        srcs = native.glob(["consensus/common/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
        ],
    )

    native.filegroup(
        name = "consensus_ibft_srcs",
        srcs = native.glob(["consensus/ibft/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
        ],
    )

    native.filegroup(
        name = "consensus_merge_srcs",
        srcs = native.glob(["consensus/merge/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
        ],
    )

    native.filegroup(
        name = "consensus_qbft_srcs",
        srcs = native.glob(["consensus/qbft/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.web3j:abi", repo_name),
        ],
    )

    native.filegroup(
        name = "crypto_algorithms_srcs",
        srcs = native.glob(["crypto/algorithms/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "crypto_algorithms",
        srcs = [":crypto_algorithms_srcs"],
        deps = [
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("net.java.dev.jna:jna", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.hyperledger.besu:secp256k1", repo_name),
            artifact("org.hyperledger.besu:secp256r1", repo_name),
            artifact("org.hyperledger.besu:blake2bf", repo_name),
            artifact("com.google.guava:guava", repo_name),
        ],
    )

    native.filegroup(
        name = "crypto_services_srcs",
        srcs = native.glob(["crypto/services/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "crypto_services",
        srcs = [":crypto_services_srcs"],
        deps = [
            ":crypto_algorithms",
            ":plugin_api",
            artifact("io.tmio:tuweni-bytes", repo_name),
        ],
    )

    native.filegroup(
        name = "datatypes_srcs",
        srcs = native.glob(["datatypes/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "datatypes",
        srcs = [":datatypes_srcs"],
        deps = [
            ":crypto_algorithms",
            ":ethereum_rlp",
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
        ],
    )

    native.filegroup(
        name = "enclave_srcs",
        srcs = native.glob(["enclave/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "enclave",
        srcs = [":enclave_srcs"],
        deps = [
            ":crypto_algorithms",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.vertx:vertx-web", repo_name),
            artifact("io.tmio:tuweni-net", repo_name),
            artifact("org.bouncycastle:bcpkix-jdk18on", repo_name),
            artifact("io.netty:netty-codec-http", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_api_srcs",
        srcs = native.glob(["ethereum/api/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("org.apache.logging.log4j:log4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("com.graphql-java:graphql-java", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.opentelemetry:opentelemetry-extension-trace-propagators", repo_name),
            artifact("io.vertx:vertx-auth-jwt", repo_name),
            artifact("io.vertx:vertx-auth-common", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.vertx:vertx-unit", repo_name),
            artifact("io.vertx:vertx-web", repo_name),
            artifact("io.vertx:vertx-codegen", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-net", repo_name),
            artifact("io.tmio:tuweni-toml", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.antlr:antlr4-runtime", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
            artifact("org.springframework.security:spring-security-crypto", repo_name),
            artifact("org.xerial.snappy:snappy-java", repo_name),
            artifact("org.web3j:abi", repo_name),
            artifact("com.github.ben-manes.caffeine:caffeine", repo_name),
            artifact("org.bouncycastle:bcpkix-jdk18on", repo_name),
            artifact("io.netty:netty-transport-native-epoll", repo_name),
            artifact("io.netty:netty-transport-native-kqueue", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
            artifact("io.netty:netty-codec-http", repo_name),
            artifact("io.opentelemetry:opentelemetry-context", repo_name),
            artifact("org.checkerframework:checker-qual", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_blockcreation_srcs",
        srcs = native.glob(["ethereum/blockcreation/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_core_srcs",
        srcs = native.glob(["ethereum/core/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "ethereum_core",
        srcs = [":ethereum_core_srcs"],
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("org.web3j:core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("com.github.ben-manes.caffeine:caffeine", repo_name),
            artifact("com.google.dagger:dagger", repo_name),
            artifact("org.apache.maven:maven-artifact", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("net.java.dev.jna:jna", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-concurrent", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("io.tmio:tuweni-rlp", repo_name),
            artifact("org.immutables:value-annotations", repo_name),
            artifact("tech.pegasys:jc-kzg-4844", repo_name),
            artifact("io.prometheus:simpleclient_guava", repo_name),
            artifact("org.xerial.snappy:snappy-java", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
            artifact("org.jetbrains.kotlin:kotlin-stdlib", repo_name),
            artifact("org.web3j:abi", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_eth_srcs",
        srcs = native.glob(["ethereum/eth/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("io.tmio:tuweni-rlp", repo_name),
            artifact("org.rocksdb:rocksdbjni", repo_name),
            artifact("com.github.ben-manes.caffeine:caffeine", repo_name),
            artifact("javax.annotation:javax.annotation-api", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
            artifact("io.netty:netty-common", repo_name),
            artifact("org.jetbrains.kotlin:kotlin-stdlib", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_ethstats_srcs",
        srcs = native.glob(["ethereum/ethstats/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("com.squareup.okhttp3:okhttp", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_p2p_srcs",
        srcs = native.glob(["ethereum/p2p/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("dnsjava:dnsjava", repo_name),
            artifact("io.netty:netty-transport-native-unix-common", repo_name),
            artifact("io.prometheus:simpleclient", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-crypto", repo_name),
            artifact("io.tmio:tuweni-devp2p", repo_name),
            artifact("io.tmio:tuweni-io", repo_name),
            artifact("io.tmio:tuweni-rlp", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.apache.commons:commons-collections4", repo_name),
            artifact("org.jetbrains.kotlin:kotlin-stdlib", repo_name),
            artifact("org.owasp.encoder:encoder", repo_name),
            artifact("org.xerial.snappy:snappy-java", repo_name),
            artifact("commons-net:commons-net", repo_name),
            artifact("tech.pegasys.discovery:discovery", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
            artifact("io.netty:netty-buffer", repo_name),
            artifact("io.netty:netty-codec", repo_name),
            artifact("io.netty:netty-handler", repo_name),
            artifact("io.netty:netty-transport", repo_name),
            artifact("io.netty:netty-common", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_permissioning_srcs",
        srcs = native.glob(["ethereum/permissioning/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-toml", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.web3j:abi", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_retesteth_srcs",
        srcs = native.glob(["ethereum/retesteth/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.vertx:vertx-web", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_rlp_srcs",
        srcs = native.glob(["ethereum/rlp/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "ethereum_rlp",
        srcs = ["ethereum_rlp_srcs"],
        deps = [
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("com.google.guava:guava", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_stratum_srcs",
        srcs = native.glob(["ethereum/stratum/src/main/java/**/*.java"]),
    )

    native.java_library(
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
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("io.netty:netty-codec", repo_name),
            artifact("io.netty:netty-buffer", repo_name),
            artifact("io.netty:netty-common", repo_name),
            artifact("io.netty:netty-transport", repo_name),
            artifact("io.netty:netty-codec-http", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_trie_srcs",
        srcs = native.glob(["ethereum/trie/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "ethereum_trie",
        srcs = [":ethereum_trie_srcs"],
        deps = [
            ":crypto_algorithms",
            ":datatypes",
            ":ethereum_rlp",
            ":immutables_value",
            ":plugin_api",
            artifact("org.immutables:value-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
        ],
    )

    native.filegroup(
        name = "ethereum_verkletrie_srcs",
        srcs = native.glob(["ethereum/verkletrie/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "ethereum_verkletrie",
        srcs = [":ethereum_verkletrie_srcs"],
        deps = [
            ":crypto_algorithms",
            ":ethereum_rlp",
            ":ethereum_trie",
            ":immutables_value",
            artifact("org.immutables:value-annotations", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
            artifact("org.hyperledger.besu:ipa-multipoint", repo_name),
        ],
    )

    native.filegroup(
        name = "evm_srcs",
        srcs = native.glob(["evm/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "evm",
        srcs = ["evm_srcs"],
        deps = [
            "ethereum_rlp",
            ":crypto_algorithms",
            ":datatypes",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.github.ben-manes.caffeine:caffeine", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("net.java.dev.jna:jna", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("org.hyperledger.besu:arithmetic", repo_name),
            artifact("org.hyperledger.besu:bls12-381", repo_name),
            artifact("org.hyperledger.besu:gnark", repo_name),
            artifact("tech.pegasys:jc-kzg-4844", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
        ],
    )

    native.filegroup(
        name = "metrics_core_srcs",
        srcs = native.glob(["metrics/core/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "metrics_core",
        srcs = [":metrics_core_srcs"],
        deps = [
            ":dagger",
            ":plugin_api",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("info.picocli:picocli", repo_name),
            artifact("io.grpc:grpc-netty", repo_name),
            artifact("io.grpc:grpc-core", repo_name),
            artifact("io.netty:netty-tcnative-boringssl-static", repo_name),
            artifact("io.netty:netty-transport-native-epoll", repo_name),
            artifact("io.netty:netty-all", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.opentelemetry:opentelemetry-sdk", repo_name),
            artifact("io.opentelemetry:opentelemetry-sdk-trace", repo_name),
            artifact("io.opentelemetry:opentelemetry-sdk-metrics", repo_name),
            artifact("io.opentelemetry:opentelemetry-exporter-otlp", repo_name),
            artifact("io.opentelemetry:opentelemetry-sdk-extension-autoconfigure", repo_name),
            artifact("io.opentelemetry.semconv:opentelemetry-semconv", repo_name),
            artifact("io.prometheus:simpleclient", repo_name),
            artifact("io.prometheus:simpleclient_common", repo_name),
            artifact("io.prometheus:simpleclient_hotspot", repo_name),
            artifact("io.prometheus:simpleclient_pushgateway", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.vertx:vertx-web", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
            artifact("io.netty:netty-codec-http", repo_name),
            artifact("javax.inject:javax.inject", repo_name),
            artifact("io.opentelemetry:opentelemetry-sdk-common", repo_name),
        ],
    )

    native.filegroup(
        name = "metrics_rocksdb_srcs",
        srcs = native.glob(["metrics/rocksdb/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "metrics_rocksdb",
        srcs = [":metrics_rocksdb_srcs"],
        deps = [
            ":metrics_core",
            ":plugin_api",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.prometheus:simpleclient", repo_name),
            artifact("org.rocksdb:rocksdbjni", repo_name),
        ],
    )

    native.filegroup(
        name = "nat_srcs",
        srcs = native.glob(["nat/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "nat",
        srcs = [":nat_srcs"],
        deps = [
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("com.squareup.okhttp3:okhttp", repo_name),
            artifact("org.jupnp:org.jupnp", repo_name),
            artifact("org.jupnp:org.jupnp.support", repo_name),
            artifact("io.kubernetes:client-java", repo_name),
            artifact("io.kubernetes:client-java-api", repo_name),
        ],
    )

    native.filegroup(
        name = "pki_srcs",
        srcs = native.glob(["pki/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "pki",
        srcs = [":pki_srcs"],
        deps = [
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("org.bouncycastle:bcpkix-jdk18on", repo_name),
            artifact("org.bouncycastle:bcprov-jdk18on", repo_name),
        ],
    )

    native.filegroup(
        name = "plugin_api_srcs",
        srcs = native.glob(["plugin-api/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "plugin_api",
        srcs = [":plugin_api_srcs"],
        deps = [
            ":datatypes",
            ":evm",
            artifact("org.apache.commons:commons-lang3", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("io.tmio:tuweni-units", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
        ],
    )

    native.filegroup(
        name = "plugins_rocksdb_srcs",
        srcs = native.glob(["plugins/rocksdb/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "plugins_rocksdb",
        srcs = [":plugins_rocksdb_srcs"],
        deps = [
            ":ethereum_core",
            ":metrics_core",
            ":metrics_rocksdb",
            ":plugin_api",
            ":services_kvstore",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-core", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-databind", repo_name),
            artifact("com.fasterxml.jackson.core:jackson-annotations", repo_name),
            artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("info.picocli:picocli", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("io.prometheus:simpleclient", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("org.rocksdb:rocksdbjni", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
        ],
    )

    native.filegroup(
        name = "services_kvstore_srcs",
        srcs = native.glob(["services/kvstore/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "services_kvstore",
        srcs = [":services_kvstore_srcs"],
        deps = [
            ":plugin_api",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
        ],
    )

    native.filegroup(
        name = "services_pipeline_srcs",
        srcs = native.glob(["services/pipeline/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "services_pipeline",
        srcs = [":services_pipeline_srcs"],
        deps = [
            ":metrics_core",
            ":plugin_api",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("io.opentelemetry:opentelemetry-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
        ],
    )

    native.filegroup(
        name = "services_tasks_srcs",
        srcs = native.glob(["services/tasks/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "services_tasks",
        srcs = [":services_tasks_srcs"],
        deps = [
            ":metrics_core",
            ":plugin_api",
            ":util",
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("io.vertx:vertx-core", repo_name),
            artifact("io.tmio:tuweni-bytes", repo_name),
            artifact("com.google.code.findbugs:jsr305", repo_name),
        ],
    )

    native.filegroup(
        name = "util_srcs",
        srcs = native.glob(["util/src/main/java/**/*.java"]),
    )

    native.java_library(
        name = "util",
        srcs = [":util_srcs"],
        deps = [
            artifact("org.slf4j:slf4j-api", repo_name),
            artifact("com.google.guava:guava", repo_name),
            artifact("net.java.dev.jna:jna", repo_name),
            artifact("org.apache.commons:commons-lang3", repo_name),
            artifact("org.apache.logging.log4j:log4j-api", repo_name),
            artifact("org.apache.logging.log4j:log4j-core", repo_name),
            artifact("org.apache.logging.log4j:log4j-slf4j2-impl", repo_name),
            artifact("org.xerial.snappy:snappy-java", repo_name),
            artifact("com.google.errorprone:error_prone_annotations", repo_name),
        ],
    )
