# Olympic-Analytics-Tracker

## Core Contributor

- [Christopher Kelling](https://github.com/cjkelling)

## Tech Stack

- Ruby on Rails
- PostgreSQL
- Heroku

## Jump-To

> [Setup](#setup)
>
> [Running Tests](#running-tests)
>
> [Running the Application](#running-the-application)
>
> [Documentation](#documentation)
>
>>[Enpoints]
>>>[Olympians](#olympians)
>>>[Youngest Olympian](#youngest-olympian)
>>>[Oldest Olympian](#oldest-olympian)
>>>[Olympian Stats](#olympian-stats)
>>>[Events](#events)
>>>[Event Medalists](#event-medalists)

## Description

Olympic Analytics Tracker has a dataset from the 2016 Summer Olympics. It uses this data to build out analytical endpoints in a Rails API.

### Setup

#### Installing necessary dependencies

```
`bundle install`

To generate rspec files: 

`rails generate rspec:install`

```

#### Set up databases

```
`rails db:create`

`rails db:migrate`

`rake import-csv`
```

#### Schema

![Schema](https://user-images.githubusercontent.com/43835133/74450037-61f7ee80-4e75-11ea-9fee-da5c1bc2df6a.png)

## Running Tests

`rspec`

## Documentation

### All endpoints go off of:

```
Development:
http://localhost:3000/api/v1/

Production:
https://olympic-analytics-tracker.herokuapp.com//api/v1/
```

## Olympians

`GET /olympians`

**Example Response**

```
{
  "olympians":
    [
      {
        "name": "Maha Abdalsalam",
        "team": "Egypt",
        "age": 18,
        "sport": "Diving"
        "total_medals_won": 0
      },
      {
        "name": "Ahmad Abughaush",
        "team": "Jordan",
        "age": 20,
        "sport": "Taekwondo"
        "total_medals_won": 1
      },
      {...}
    ]
}
```

## Youngest Olympian

`GET /olympians?age=youngest`

**Example Response**

```
{
  "olympians":
    [
      {
        "name": "Ana Iulia Dascl",
        "team": "Romania",
        "age": 13,
        "sport": "Swimming"
        "total_medals_won": 0
      }
    ]
}
```

## Oldest Olympian

`GET /olympians?age=oldest`

**Example Response**

```
{
  "olympians":
    [
      {
        "name": "Julie Brougham",
        "team": "New Zealand",
        "age": 62,
        "sport": "Equestrianism"
        "total_medals_won": 0
      }
    ]
}
```

## Olympian Stats

`Get /olympian_stats`

**Example Response**

```
{
    "olympian_stats": {
      "total_competing_olympians": 3120
      "average_weight:" {
        "unit": "kg",
        "male_olympians": 75.4,
        "female_olympians": 70.2
      }
      "average_age:" 26.2
    }
  }
```

## Events

`GET /events`

**Example Response**

```
{
  "events":
    [
      {
        "sport": "Archery",
        "events": [
          "Archery Men's Individual",
          "Archery Men's Team",
          "Archery Women's Individual",
          "Archery Women's Team"
        ]
      },
      {
        "sport": "Badminton",
        "events": [
          "Badminton Men's Doubles",
          "Badminton Men's Singles",
          "Badminton Women's Doubles",
          "Badminton Women's Singles",
          "Badminton Mixed Doubles"
        ]
      },
      {...}
    ]
}
```

## Event Medalists

`GET /events/:id/medalists`

**Example Response**

```
{
  "event": "Badminton Mixed Doubles",
  "medalists": [
      {
        "name": "Tontowi Ahmad",
        "team": "Indonesia-1",
        "age": 29,
        "medal": "Gold"
      },
      {
        "name": "Chan Peng Soon",
        "team": "Malaysia",
        "age": 28,
        "medal": "Silver"
      }
    ]
}
```

[Back to Top](#Olympic-Analytics-Tracker)
