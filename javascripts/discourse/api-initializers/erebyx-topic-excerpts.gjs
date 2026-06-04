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
      // Expand the excerpt on ALL discovery lists (Latest / home / categories),
      // not just category pages. Pairs with always_include_topic_excerpts so
      // every topic that has an excerpt shows a preview everywhere.
      if (
        context?.listContext === "discovery" &&
        hasTopicExcerpt(context.topic)
      ) {
        return true;
      }

      return value;
    }
  );
});
