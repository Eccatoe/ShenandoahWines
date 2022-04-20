// import {RWebShare} from 'react-web-share'
import { FacebookShareButton, TwitterShareButton, EmailShareButton, PinterestShareButton } from "react-share";
import { FacebookIcon, TwitterIcon, EmailIcon, PinterestIcon } from "react-share";
import facebook from '../assets/facebook.svg'
import pinterest from '../assets/pinterest.svg'
import gmail from '../assets/gmail.svg'
import twitter from '../assets/twitter.svg'
function Share() {
  return (
    <div className="share">
          <FacebookShareButton
        url={"http://localhost:4000/my_list"}
        quote={"My list of wines to try from the Shenadoah Valley"}
      >
      <img src={facebook}/>
      </FacebookShareButton>

      <TwitterShareButton
        title={"Shenandoah Wine"}
        url={"http://localhost:4000/my_list"}
      >
      <img src={twitter}/>
      </TwitterShareButton>

      <EmailShareButton
        subject={"Try some Shenandoah Wines with me!"}
        body={"Check out the list of wines I've put together to try from the Shenandoah Valley"}
        url={"http://localhost:4000/my_list"}
      >
      <img src={gmail}/>
      </EmailShareButton>

      <PinterestShareButton
        description={"My list of wines to try from the Shenadoah Valley"}
        >
      <img src={pinterest}/>
      </PinterestShareButton>
    


    </div>
  )
}

export default Share
