import Whitelisting from 0x01


pub fun main(signer: Address) {

  let whitelistcollection = getAccount(signer).getCapability(/public/WhitelistCollection).borrow<&Whitelisting.WhitelistCollection{Whitelisting.WhitelistCollectionPublic}>()
                                            ?? panic("Could not get receiver reference to the Collection")            
  log(whitelistcollection.getWhitelists())
    
}