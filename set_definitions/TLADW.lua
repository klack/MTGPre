    
TLADW = {
        packImage = "https://steamusercontent-a.akamaihd.net/ugc/1734441184603578733/2009A7D782D40F1456733EFE30ACC064D12B5FFD/",
        name = "StrixHaven",
        date = "2021-04-23",
        getUrls = function(set)
            local urls = {}
            local setQuery = BoosterUrls.makeSetQuery('tla')
            local setcolor = 'w'
            local removeMultiColor = '+-c:m'
            table.insert(urls, BoosterUrls.makeUrl(setQuery, 't:land+id>' .. setcolor .. '+id>1'))
            for i = 1,5 do -- for common cards
                table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+r:c'))
            end
            for i = 1,3 do -- for uncommon cards
                table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+r:u'))
            end
            table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+' .. BoosterUrls.randomRarity(8000, 300, 36)))
            table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+' .. BoosterUrls.randomRarity(800, 30, 3)))
            table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+' .. BoosterUrls.randomRarity(80, 3, 1)))
            for i = 1,2 do -- for 2 rare or higher
                table.insert(urls, BoosterUrls.makeUrl(setQuery, '-t:basic+c:' .. setcolor .. removeMultiColor .. '+' .. BoosterUrls.randomRarity(8, 1)))
            end
            table.insert(urls, 'https://api.scryfall.com/cards/tla/4') -- hero card
            return urls
        end,
    },