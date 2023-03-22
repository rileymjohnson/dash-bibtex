
module DashBibtex
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("jl/''_dashbibtex.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_bibtex",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "async-DashBibtex.js",
    external_url = "https://unpkg.com/dash_bibtex@0.0.1/dash_bibtex/async-DashBibtex.js",
    dynamic = nothing,
    async = :true,
    type = :js
),
DashBase.Resource(
    relative_package_path = "async-DashBibtex.js.map",
    external_url = "https://unpkg.com/dash_bibtex@0.0.1/dash_bibtex/async-DashBibtex.js.map",
    dynamic = true,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_bibtex.min.js",
    external_url = nothing,
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_bibtex.min.js.map",
    external_url = nothing,
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
