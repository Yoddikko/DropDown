# DropDown

## WORK IN PROGRESS ⚠️

<p align="center">
  <img style="text-align:center;" width="200" alt="Icon" src="https://user-images.githubusercontent.com/92546954/174389966-83dc6fba-6ad0-4d07-9c90-77c05bf48559.png">
</p>

## (still NOT) Working for iPhone 8 to iPhone 13 Pro Max

## Showcase

<p align="center">
   <img style="text-align:center;" width="200" alt="Screenshot1" src="https://user-images.githubusercontent.com/92546954/174400591-3a9e8e64-8e40-4ee6-827a-5a52ca22a0d7.png">
     <img style="text-align:center;" width="200" alt="Screenshot2" src="https://user-images.githubusercontent.com/92546954/174400587-be18202e-4be6-438b-a714-a9ca64872b37.png">
</p>

<p align="center">


https://user-images.githubusercontent.com/92546954/174400794-c17abcb5-d908-406c-9b34-13f33fa370fe.mp4


</p>


### DropDown is a package for Swift that creates a drop down view that you can dismiss by dragging it upwards.

### How to install 
1. Add it to your project. Click the project name in the file section.
2. Go in package dependencies.
3. Click on "+".
4. Enter "https://github.com/Yoddikko/DropDown" url in the search bar.
5. Click add package.

### How to use 
1. Add "import DropDown".
2. Create a DropDown element.
3. Enter all parameters.

### Code sample

```
BackgroundView()
  .overlay {
    DropDown(content: {
      Text("Hello world")
      }, size: .small, curtainColor: .black , chevronColor: .white)
    }
  }
```

### Parameters
- size 
It his the height of the closed view
```
size: .small, .medium, .half
```

- curtainColor
It is the background color of the view
```
curtainColor: Color
```
- chevronColor
It is the color of the chevron arrow
```
chevronColor: Color
```
