# Upper and lower bounds 
`upperandlowerbounds` operator creates an upper and lower bound values as a fraction of a given data point.

### When to use
Use this operator when wanting to determine upper and lower bounds. These generated bounds are usually used in a downstream data step for a graphics representation using grid lines which correspond to the boundary values (see horizontal grid lines feature) 

### Installation

__Installing this operator from repository__

`https://github.com/tercen/upperandlowerbounds_operator.git`


__Installing this operator from the app store__


### How to configure
* add a Data step on canvas and double click data step to open the cross-tab window
* configure a projection view where there is only one data point in each cell
* add the operator to the view
* run the data step
* new boundary values are now available for any suceeding Data step

[__configuration screenshot__](./doc/screenshot/operator_screenshot.png)


### Feedback
[__log an issue__](https://github.com/tercen/upperandlowerbounds_operator/issues)

### Documentation
additional docs found in [__doc directory__](./doc)

### Development information

* How to setup for dev
    * [dev setup](https://tercen.github.io/appbuilders-guide/)
* How to deploy
    * [deployment commands](./doc/DEPLOY.md)



