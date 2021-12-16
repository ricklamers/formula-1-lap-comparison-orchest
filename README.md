# Formula 1 fastest lap comparison in Orchest

This pipeline uses the [fastf1](https://pypi.org/project/fastf1/) package to visualize the fastest laps of two drivers during any Grand Prix. Credits to the idea and code of lap comparison go to [Jasper](https://medium.com/towards-formula-1-analysis/analyzing-formula-1-data-using-python-2021-dutch-gp-hamilton-vs-bottas-145945eac278).

### Explore in Orchest

Explore this pipeline on Orchest Cloud for free: [https://cloud.orchest.io](https://cloud.orchest.io). 

### Example comparison

![](image.png)

To run it for your favorite driver/Grand Prix combination modify the pipeline parameters:

```
{
    "d1": "VER",
    "d2": "HAM",
    "race_gp": "Abu Dhabi",
    "race_year": 2021
}
```

![Quickstart pipeline visualization](https://pviz.orchest.io/?pipeline=https://github.com/ricklamers/formula-1-lap-comparison-orchest/blob/master/main.orchest)
