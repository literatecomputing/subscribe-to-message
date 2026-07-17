import Component from "@glimmer/component";
import { service } from "@ember/service";
import DButton from "discourse/ui-kit/d-button";
import dConcatClass from "discourse/ui-kit/helpers/d-concat-class";

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
        class={{dConcatClass "btn extra-profile-button"}}
        @href={{settings.button_url}}
      />
    {{/if}}
  </template>
}
