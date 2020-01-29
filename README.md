# Airport-challenge

![airport](airport.jpg)

This programme replicates the flow of traffic at an airport. Planes can land and take off when it is sunny, and no planes can land or take off when it is stormy.

This challenge is the first weekend challenge at [Makers Academy](https://github.com/makersacademy).

## Instructions

#### Install ####

1. Fork this repo, and clone to your local machine
2. Run the command `gem install bundle`
3. Once installation is complete, run `bundle`
4. Run the programme in Ruby or the command line by requiring the airplane.rb in the lib directory

```Shell
$ irb
> require './lib/airport.rb'
```

5. Tests can be run using Rspec

## User requirements
```Shell
> airport = Airport.new # => @capacity = 10
> big_airport = Airport.new(20) # => @capacity = 20
```
#### Create an airport ####
Airports have a default capacity of 100 planes but the user can specify their own capacity.

```Shell
> airport = Airport.new # => @capacity = 100
> large_airport = Airport.new(200) # => @capacity = 200
```

#### Add and instruct planes ####

Airports are empty once initialised - planes need to land before they are allowed to take off.

```Shell
> plane = Plane.new
> airport.land(plane) # => :landed
> airport.take_off(plane) # => :flying
```

If the weather is stormy then no planes can land or take off.

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

For the user stories I created a domain model for each object, including attributes and behaviour:


| Object: | Airport | | | |
| ------- | ------- | - | - | - |
| **Attributes:** | Planes | Capacity | Weather | |
| **Methods:** | Land | Take off |Full? | In airport? |


| Object: | Plane | | | |
| ------- | ----- | - | - | - |
| **Attributes:** | Location |
| **Methods:** | Land | Take off | Grounded? | Flying? |


| Object: | Weather | |
| ------- | ----- | - |
| **Attributes:** | Sunny | Stormy |
| **Methods:** | Stormy? |

#### Testing for edge cases ####

The following edge cases have been tested and factored:

1.  Planes can only take off from airports they are in
2. Planes that are already flying cannot take off and/or be in an airport
3. Planes that are landed cannot land again and must be in an airport
