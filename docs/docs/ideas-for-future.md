---
slug: ideas-for-the-future
title: Ideas for the Future
authors:
  name: Gao Wei
  title: Docusaurus Core Team
  url: https://github.com/wgao19
  image_url: https://github.com/wgao19.png
tags: [hola, docusaurus]
---

1. there's definitely going to be a proper backend for user profiles and tracking. The idea being that once you've logged your daily score you can't go back and change it. 
Also, if you forget to log it, it will show. Basically we have a backend that keeps track of everything that no one person can change. 

2. what about trust? people, although very unlikely that they would care enough lol, could bribe me/contributors to change their scores. This could be remedied by 
putting each score on chain. I could pretty easily write a smart contract to take in one uint between zero and user-specified number to represent the life subjects 
they got around to that day. And maybe a google time API that keeps track of when the thing was logged. Obviously you can see a block.timestamp on chain if the need 
ever arises to audit someone's consistency track record, but a google API could just log the actual date and time to chain as well. Obvs this would NOT be done on ethereum but 
rather a testnet - aint nobody gonna pay to log such an inconsequential thing - even if it's in matic. 

3. we can move onto a real blockchain if people in the future want this. easy. 