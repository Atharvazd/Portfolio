# Authors type || (or |) as a stand-in for the Devanagari danda punctuation
# marks used in Marathi verses/mantras (e.g. || श्रीरामसमर्थ ||). Kramdown
# misreads pipe characters as Markdown table syntax, splitting the text.
# This hook runs before markdown-to-HTML conversion and swaps the ASCII
# stand-ins for the real danda characters, so authors never need to think
# about escaping or switching keyboards.
Jekyll::Hooks.register :posts, :pre_render do |post|
  next unless post.content

  # Double danda: || -> ॥
  post.content = post.content.gsub("||", "॥")
end
