import { apiInitializer } from "discourse/lib/api";
import AddSubscribeButton from "../components/add-subscribe-button";
export default apiInitializer("1.14.0", (api) => {
  api.renderInOutlet("user-card-below-message-button", AddSubscribeButton);
  api.renderInOutlet("user-profile-controls", AddSubscribeButton);
});
