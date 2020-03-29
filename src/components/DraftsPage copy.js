import React, { Component, Fragment } from 'react'
import Post from '../components/Post'


import { Query } from 'react-apollo'
import gql from 'graphql-tag'


export default class DraftsPage extends Component {
  render() {
    const data = {
      drafts: [
        {
          id: '1',
          title: 'Hello World',
          text: '👋',
          isPublished: 'false',
        },
      ],
    }
    console.log(DRAFTS_QUERY);

    return (

      <Query query={DRAFTS_QUERY}>
        {({ data }) => {


          return (
                      
                <Fragment>
                  <div className="flex justify-between items-center">
                    <h1>Drafts</h1>
                  </div>
                  {data.drafts &&
                    data.drafts.map(draft => (
                      <Post
                        key={draft.id}
                        post={draft}
                        refresh={() => console.log(`Refetch`)}
                        isDraft={!draft.isPublished}
                      />
                    ))}
                  {this.props.children}
                </Fragment>
              )
      }}
    </Query>
    )
  }
}



export const DRAFTS_QUERY = gql`
  query DraftsQuery {
    drafts {
      id
      text
      title
      isPublished
    }
  }`