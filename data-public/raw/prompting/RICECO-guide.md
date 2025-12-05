# RICECO Framework

**RICECO** = **R**ole + **I**nstruction + **C**ontext + **E**xamples + **C**onstraints + **O**utput

*Framework for systematic prompt enhancement across all LLMs (ChatGPT, Claude, Gemini, Grok)*

## Components

**[R]ole** - Assign specific persona/expertise *(optional, high impact when relevant)*
- Shapes AI's mindset, tone, and depth
- Use for: specialized domains, creative tasks, audience-specific communication
- Example: "You are a board-certified sleep doctor" vs generic medical advice
- *Lower frequency, higher impact when applicable*

**[I]nstruction** - Core task definition *(required every time)*
- Must be specific, direct, detailed to avoid vagueness
- Define the "what" without ambiguity, include purpose/requirements
- Poor: "Write engaging content" → Better: "Write 60-second YouTube script about prompting tips using curiosity gap hook and scroll-stopping visual anchor"

**[C]ontext** - Background for relevance *(highly recommended)*
- Include: audience, scenario, platform, purpose, tone preferences
- Provides background information - more context = less generic output
- Example: "for small business owners transitioning to AI tools"
- *Keep concise; don't bury the instruction*

**[E]xamples** - Sample inputs/outputs *(use for precision)*
- 1-3 samples for structure/tone/format demonstration
- Critical for: writing tasks, technical formatting, style consistency
- This is "few-shot prompting" - anchors AI effectively for complex patterns
- *Don't overcomplicate simple prompts*

**[C]onstraints** - Rules/boundaries *(essential for quality)*
- Length limits, tone requirements, content guidelines, must-haves
- Sets guardrails (vs Context which provides background)
- Prevents common pitfalls: wordiness, vagueness, overly generic content
- Example: "Keep under 100 words; avoid buzzwords; use conversational tone"

**[O]utput** - Structure specification *(use for complex responses)*
- Define format for usability: tables, JSON, threads, lists, mind maps
- Makes outputs cleaner and more actionable
- Essential for: data presentation, comparisons, structured content

## Efficiency Shortcuts

**I-C-C Method** (covers 80% of use cases):
- **I**nstruction: What you want
- **C**ontext: Background/audience  
- **C**onstraints: Rules/limits

*Use full RICECO only when additional precision needed*

**Element Integration**: Blend components naturally - avoid rigid sections
- Elements can overlap (e.g., context woven into instruction)
- Think about them separately to ensure completeness

## Processing Protocol *(for AI agents)*

**Evaluate:** Analyze present/missing/weak RICECO elements
- Note strengths and gaps comprehensively but briefly
- Identify common mistakes: vagueness, lack of specificity

**Enhance:** Rewrite with natural integration of applicable components
- Blend elements fluidly (avoid rigid sections)
- Include only relevant components
- Make vague elements specific while preserving intent
- Aim for clarity, conciseness, and reusability

**Guide:** Recommend E-I-O refinement:
- **E**valuate: "What assumptions did you make? Critique your output"
- **I**terate: "Rewrite for brevity/add humor/provide variations"  
- **O**ptimize: "Streamline for reuse, cut unnecessary words"

## Required Output Structure *(for AI agents)*

**Evaluation:** [Present/missing RICECO elements analysis]
**Enhanced Prompt:** [Complete rewritten version, copy-paste ready]
**Why This Improves It:** [Key changes and expected benefits]
**Next Steps:** [Specific E-I-O recommendations]

---

*Quick Start: Take any prompt → Add missing I-C-C elements → Test → Refine*
