# Airport-challenge

This programme replicates a the flow of airport traffic. Planes can land and take off when it is sunny, and no planes can land or take off when it is stormy.

This challenge is the first weekend challenge at [Makers Academy](https://github.com/makersacademy).

## User requirements

```
As an air traffic controller 
So I can get passengers to a destination 
I want to instruct a plane to land at an airport

As an air traffic controller 
So I can get passengers on the way to their destination 
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport

As an air traffic controller 
To ensure safety 
I want to prevent landing when the airport is full 

As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate

As an air traffic controller 
To ensure safety 
I want to prevent takeoff when weather is stormy 

As an air traffic controller 
To ensure safety 
I want to prevent landing when weather is stormy 
```

#### Designing Objects ####

For the user stories I created a table of each object; its attributes and its behaviour (methods):

1.

| Object: | Airport | | | |
| ------- | ------- | - | - | - |
| **Attributes:** | Planes | Capacity | Weather | |
| **Methods:** | Land | Take off |Full? | In airport? |


2. 

| Object: | Plane | | | |
| ------- | ----- | - | - | - |
| **Attributes:** | Location |
| **Methods:** | Land | Take off | Grounded? | Flying? |

3. 

| Object: | Weather | |
| ------- | ----- | - |
| **Attributes:** | Sunny | Stormy |
| **Methods:** | Stormy? |
