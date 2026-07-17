import { apiInitializer } from "discourse/lib/api";
import AddSubscribeButton from "../components/add-subscribe-button";

export default apiInitializer((api) => {
  api.renderInOutlet("user-card-below-message-button", AddSubscribeButton);
  api.renderInOutlet("user-profile-controls", AddSubscribeButton);
});
