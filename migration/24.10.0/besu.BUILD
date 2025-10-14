load("@besu_contrib//rebuild/24.10.0:defs.bzl", "besu_rules")
load("@rules_java//java:defs.bzl", "java_library")
load("@rules_jvm_external//:defs.bzl", "artifact")

package(default_visibility = ["//visibility:public"])

besu_rules(repo_name = "maven_besu_migration_24100")

filegroup(
    name = "override_besu_srcs",
    srcs = glob(
        ["besu/src/main/java/**/*.java"],
        exclude = [
            "besu/src/main/java/org/hyperledger/besu/BesuInfo.java",
            "besu/src/main/java/org/hyperledger/besu/cli/ConfigurationOverviewBuilder.java",
        ],
    ) + ["@besu_contrib//patches/version/24.10.0:version_srcs"],
)

java_library(
    name = "override_besu",
    srcs = [":override_besu_srcs"],
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
        artifact("org.slf4j:slf4j-api", "maven_besu_migration_24100"),
        artifact("com.fasterxml.jackson.core:jackson-core", "maven_besu_migration_24100"),
        artifact("com.fasterxml.jackson.core:jackson-databind", "maven_besu_migration_24100"),
        artifact("com.fasterxml.jackson.core:jackson-annotations", "maven_besu_migration_24100"),
        artifact("com.fasterxml.jackson.datatype:jackson-datatype-jdk8", "maven_besu_migration_24100"),
        artifact("com.github.oshi:oshi-core", "maven_besu_migration_24100"),
        artifact("com.google.guava:guava", "maven_besu_migration_24100"),
        artifact("com.google.dagger:dagger", "maven_besu_migration_24100"),
        artifact("com.graphql-java:graphql-java", "maven_besu_migration_24100"),
        artifact("info.picocli:picocli", "maven_besu_migration_24100"),
        artifact("io.vertx:vertx-core", "maven_besu_migration_24100"),
        artifact("io.vertx:vertx-web", "maven_besu_migration_24100"),
        artifact("org.apache.commons:commons-lang3", "maven_besu_migration_24100"),
        artifact("org.apache.logging.log4j:log4j-core", "maven_besu_migration_24100"),
        artifact("io.tmio:tuweni-bytes", "maven_besu_migration_24100"),
        artifact("io.tmio:tuweni-config", "maven_besu_migration_24100"),
        artifact("io.tmio:tuweni-toml", "maven_besu_migration_24100"),
        artifact("io.tmio:tuweni-units", "maven_besu_migration_24100"),
        artifact("org.springframework.security:spring-security-crypto", "maven_besu_migration_24100"),
        artifact("org.xerial.snappy:snappy-java", "maven_besu_migration_24100"),
        artifact("tech.pegasys:jc-kzg-4844", "maven_besu_migration_24100"),
        artifact("org.rocksdb:rocksdbjni", "maven_besu_migration_24100"),
        artifact("commons-net:commons-net", "maven_besu_migration_24100"),
        artifact("org.apache.logging.log4j:log4j-jul", "maven_besu_migration_24100"),
        artifact("com.splunk.logging:splunk-library-javalogging", "maven_besu_migration_24100"),
        artifact("org.fusesource.jansi:jansi", "maven_besu_migration_24100"),  # for color logging in windows
        artifact("io.netty:netty-common", "maven_besu_migration_24100"),
        artifact("com.google.code.findbugs:jsr305", "maven_besu_migration_24100"),
        artifact("org.apache.logging.log4j:log4j-api", "maven_besu_migration_24100"),
        artifact("org.bouncycastle:bcprov-jdk18on", "maven_besu_migration_24100"),
    ],
)
