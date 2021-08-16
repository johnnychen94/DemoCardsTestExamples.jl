using DemoCards, Documenter, TestImages

examples, postprocess_cb, demo_assets = makedemos("examples")

format = Documenter.HTML(edit_link = "master",
                         prettyurls = get(ENV, "CI", nothing) == "true",
                         assets=[demo_assets, ])

makedocs(
         format   = format,
         sitename = "DemoCardsTestExamples -- GridExample",
         pages    = [
             "index.md",
             examples
         ]
)

# deploydocs(repo   = "github.com/johnnychen94/DemoCardsTestExamples.jl.git")
