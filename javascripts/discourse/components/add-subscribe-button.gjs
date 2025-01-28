import Component from "@glimmer/component";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";
import concatClass from "discourse/helpers/concat-class";

export default class AddSubscribeButton extends Component {
  @service currentUser;
  get showSubscribeButton() {
    return !this.currentUser.can_send_private_messages;
  }

  <template>
    {{#if this.showSubscribeButton}}
      <DButton
        @icon={{settings.button_icon}}
        @translatedLabel={{settings.button_text}}
        class={{concatClass "btn extra-profile-button"}}
        @href={{settings.button_url}}
      />
    {{/if}}
  </template>
}
