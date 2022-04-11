// import {RWebShare} from 'react-web-share'
import { FacebookShareButton, TwitterShareButton, EmailShareButton, PinterestShareButton } from "react-share";
import { FacebookIcon, TwitterIcon, EmailIcon, PinterestIcon } from "react-share";

function Share() {
  return (
    <div>
        <p>Share with friends!</p>
          <FacebookShareButton
        url={"http://localhost:4000/my_list"}
        quote={"My list of wines to try from the Shenadoah Valley"}
      >
        <FacebookIcon size={32} round />
      </FacebookShareButton>
      <br />
      <TwitterShareButton
        title={"Shenandoah Wine"}
        url={"http://localhost:4000/my_list"}
      >
        <TwitterIcon size={32} round />
      </TwitterShareButton>
      <EmailShareButton
        subject={"Try some Shenandoah Wines with me!"}
        body={"Check out the list of wines I've put together to try from the Shenandoah Valley"}
        url={"http://localhost:4000/my_list"}
      >
        <EmailIcon size={32} round />
      </EmailShareButton>
      <PinterestShareButton
        description={"My list of wines to try from the Shenadoah Valley"}
        >
        <PinterestIcon size={32} round />
      </PinterestShareButton>

    </div>
  )
}

export default Share
