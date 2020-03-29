yarn install

!!
nvm use 12

npm run start

cd server
yarn install
yarn start

---
cd database
prisma deploy

---
got 
https://us1.prisma.sh/eric-b0c1e8/blogr/dev/_admin

--
prisma seed

--
in database : 
prisma playground

works now

---

update prisma.yml, add: 

generate:
  - generator: graphql-schema
    output: ./generated/prisma.graphql

run : 
prisma generate

then , copy file to src/generated
replace the old one .


// // "graphql": "^14.6.0",

# in server folder
rm -rf node_modules/graphql
yarn start

--

in browser, open http://localhost:4000/

run : 

```
{
  drafts{
    id
    title
  }
}
```

works.

try again : 

```
mutation{
  createDraft(
	title: "asdf"
    text: "asdf"
  ) {
    id
  }
}
```

playground works! 

--


cd .. 

nvm use 12.0

yarn add apollo-boost react-apollo graphql-tag graphql

not work ..!!!

---
nvm install 12
nvm use 12

rm yarn.lock
rm package-lock.json
yarn add fsevents@1.2.9

yarn install

!!
works !

--- 

yarn start 

works