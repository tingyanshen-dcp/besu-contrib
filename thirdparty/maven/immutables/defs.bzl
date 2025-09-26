""""""
# buildifier: disable=unnamed-macro
def immutables_rules(repo_name = "@maven"):

    """Defines the Immutables targets with proper exported dependencies and plugins.

    The targets will be of the form ":<artifact-id>".

    Args:
      repo_name: The name of the dependency repository (default is "@maven").
    """
    native.java_library(
        name = "immutables_value",
        exported_plugins = [":immutables_processor"],
        visibility = ["//visibility:public"],
        exports = [
            "%s//:org_immutables_value" % repo_name,
        ],
    )

    native.java_plugin(
        name = "immutables_processor",
        generates_api = 1,
        processor_class = "org.immutables.processor.ProxyProcessor",
        deps = [
            "%s//:org_immutables_value_processor" % repo_name,
        ],
    )
