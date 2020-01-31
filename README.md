### [Makers Academy](http://www.makersacademy.com) - Week 1 Weekend Project

# Airport-challenge ✈️ ️
[Outline](#Outline) | [Task](#Task) | [Installation Instructions](#Installation) | [Feature Tests](#Feature_Tests) | [User Stories](#Story) | [Objects & Methods](#Methods) | [Testing](#Testing) | [Further improvements](#Further_Improvements)

![airport](airport.jpg)

## <a name="Outline">Outline</a>

This program replicates the flow of traffic at an airport. Planes can land and take off when it is sunny, and no planes can land or take off when it is stormy.

This challenge is the first weekend challenge at [Makers Academy](https://github.com/makersacademy).

## <a name="Task">The Task</a>
This project is based on the `User Stories` listed below. Each `User Story` has been further broken down into `Objects` and `Methods`. Tests have been designed for all features in line with TDD best-practice.

## <a name="Installation">Installation Instructions</a>

1. Fork this repository, clone to your local machine then change into the directory:
```
$ git clone git@github.com:davmcgregor/airport_challenge.git 
$ cd airport_challenge
```
2. Load dependencies with bundle:
```
$ gem install bundle
$ bundle
```
3. Run the app in the terminal:

```Shell
$ irb
> require './lib/airport_challenge.rb'
```

## <a name="Feature_Tests">Feature Tests (How it works)</a>
Airports have a default capacity of 100 planes but the user can specify their own capacity.

```Shell
> airport = Airport.new # => @capacity = 100
> large_airport = Airport.new(200) # => @capacity = 200
```

Airports are empty once initialised - planes need to land before they are allowed to take off.

```Shell
> plane = Plane.new
> airport.land(plane) # => :landed
> airport.take_off(plane) # => :flying
```

If the weather is stormy then no planes can land or take off.

## <a name="Story">User Stories</a>

```
As an air traffic controller 
So I can get passengers to a destination 
I want to instruct a plane to land at an airport
```
```
As an air traffic controller 
So I can get passengers on the way to their destination 
I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
```
```
As an air traffic controller 
To ensure safety 
I want to prevent landing when the airport is full 
```
```
As the system designer
So that the software can be used for many different airports
I would like a default airport capacity that can be overridden as appropriate
```
```
As an air traffic controller 
To ensure safety 
I want to prevent takeoff when weather is stormy 
```
```
As an air traffic controller 
To ensure safety 
I want to prevent landing when weather is stormy 
```

## <a name="Methods">Objects & Methods</a>

For the user stories I created a domain model for each object, including attributes and behaviour:

| Object: | Airport | | | |
| ------- | ------- | - | - | - |
| **Attributes:** | Planes | Capacity | Weather | |
| **Methods:** | Land | Take off |Full? | In airport? |

<br/>

| Object: | Plane | | | |
| ------- | ----- | - | - | - |
| **Attributes:** | Location |
| **Methods:** | Land | Take off | Grounded? | Flying? |

<br/>

| Object: | Weather | |
| ------- | ----- | - |
| **Attributes:** | Sunny | Stormy |
| **Methods:** | Stormy? |

## <a name="Testing">Testing</a>

Tests were written with RSpec. To run the tests in terminal: 

```bash
$> cd airport_challenge
$> rspec
```

The following edge cases have been tested and refactored:

1.  Planes can only take off from airports they are in
2. Planes that are already flying cannot take off and/or be in an airport
3. Planes that are landed cannot land again and must be in an airport

## <a name="Further_Improvements">Further Improvements</a>

* Refactor tests
* Update README 