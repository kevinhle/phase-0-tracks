#5.5 Nested Data Structures

#design and build a nested data structure to represent a real-world construct
cars = {
  bmw: { Models: {
              series1: ["128i", "130i", "135i"],
              series2: ["228i", "230i", "235i"],
              series3: ["328i", "330i", "335i"],
              series5: ["528i", "539i", "535i"],
              series7: ["730i", "735i"]
            },
       },
  audi:{ Models:{
             sedans: ["A3", "A4", "A6", "A8"],
              coupes: ["R8", "S5","S7", "TTS"],
              suv: {
                 crossover: ["Q3", "Q5", "Q7"],
                  wagons: ["Allroad", "Q5 Hybrid"]
                },
              },
       },
  lexus: {
       Models: {
              Sedans: ["IS", "ES", "GS"],
              Suv: ["NX", "RX", "GX", "LX"],
              Coupes: ["RC", "IS C"],
              Hybrids: ["CT Hybrid", "NX Hybrid", "RX Hybrid", "ES Hybrid", "GS Hybrid", "LS Hybrid"]
            },
          },
}


#Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.
p cars [:bmw][:Models][:series5]

p cars [:audi][:Models][:suv][:wagons]

p cars [:lexus][:Models][:Hybrids][3]

p cars [:audi][:Models][:coupes].push("TT")

p cars [:audi][:Models][:suv][:wagons].length