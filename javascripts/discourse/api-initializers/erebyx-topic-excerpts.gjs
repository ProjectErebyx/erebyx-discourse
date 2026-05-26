import { apiInitializer } from "discourse/lib/api";

function hasTopicExcerpt(topic) {
  return Boolean(
    topic?.hasExcerpt ||
    topic?.excerpt ||
    topic?.get?.("hasExcerpt") ||
    topic?.get?.("excerpt")
  );
}

export default apiInitializer((api) => {
  api.registerValueTransformer(
    "topic-list-item-expand-pinned",
    ({ value, context }) => {
      if (
        context?.listContext === "discovery" &&
        context?.category &&
        hasTopicExcerpt(context.topic)
      ) {
        return true;
      }

      return value;
    }
  );
});
