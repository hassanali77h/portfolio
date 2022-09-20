SELECT * FROM portfolioproject.covidvaccinations order by 3,4;
select * from portfolioproject.coviddeaths order by 3,4;
select location, date, total_cases ,new_cases, total_deaths, population from portfolioproject.coviddeaths order by 1,2;
-- totalcases vs totaldeaths --
select location, date, total_cases ,total_deaths, (total_deaths/total_cases)*100 as deathpercentage from portfolioproject.coviddeaths order by 1,2;
-- totalcases vs total population --
select location, date, total_cases ,population, (total_cases/population)*100 as casespercenatge from portfolioproject.coviddeaths order by 1,2;
-- countries with highest infection rate compared to population --
select location, population, max(total_cases) as highestinfectioncount ,max((total_cases/population))*100 as maxinfecpercentage from portfolioproject.coviddeaths group by location,population order by maxinfecpercentage desc;
-- highest total death count --
select location, max(cast(total_deaths as signed)) as totaldeathcount from portfolioproject.coviddeaths group by location order by totaldeathcount desc;
-- global numbers --
select date, sum(new_cases)as totatcases,sum(new_deaths)as totaldeaths,sum(new_deaths)/sum(new_cases)*100 as deathpercentage from portfolioproject.coviddeaths group by date order by 4;
-- total population vs vaccinations -- 
select coviddeaths.location,coviddeaths.date,coviddeaths.population, covidvaccinations.new_vaccinations from portfolioproject.coviddeaths join portfolioproject.covidvaccinations on coviddeaths.location=covidvaccinations.location and coviddeaths.date=covidvaccinations.date order by 2,3

