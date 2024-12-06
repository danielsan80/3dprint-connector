# 3dprint-connector
Just a "puzzle" connector to make modular models.

`example.scad` contains an example to understand how it works.

Include `connector.scad` in your projects...

```
include <connector.scad>
```

and use it to create cavities in your models to host the connector...

```
difference() {
    my_model();
    translate([5,5,1])
        connector(void=true);    
}
```

then print the connector too somewhere...

```
connector();
```

You can customize the connector. The parameters are:

- **void**: make a cavity to host the connector (true) or the connector itself (false)
- **r**: the radius of the 2 cylinders
- **dinstance**: the distance between the 3 cylinders
- **width**: te width of the bar who connect the 2 cylinders
- **height**: the height of the connector
- **play**: the play used in the void version

That's all.
