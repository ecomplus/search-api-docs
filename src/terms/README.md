### Terms Object Map

The `terms` type has the
[mapping](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping.html) above:

```javascript
'terms': {
  'properties': {
    'date': {
      'type': 'date'
    },
    'term': {
      'type': 'text'
    },
    'results': {
      'type': 'short'
    },
    'count': {
      'type': 'integer'
    }
  }
}
```
