local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.jbom', 'eclipse-jbom') {
  settings+: {
    description: "",
    name: "Eclipse JBOM project",
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('jbom') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
  ],
}
