import Whitelisting from "../Contract/Whitelist.cdc"

transaction(Project: String, AddresstoDelete : Address) {
    prepare(signer: AuthAccount) {

        let whitelistcollection = signer.getCapability(/private/WhitelistCollection).borrow<&Whitelisting.WhitelistCollection>()
            ?? panic("Could not borrow a reference to the owner's collection")

        // withdraw the NFT from the owner's collection
        whitelistcollection.removeAddressfromWhitelist(address : AddresstoDelete, Project : Project)

    }
}

