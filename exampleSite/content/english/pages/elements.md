---
title: "Elements"
# meta title
meta_title: ""
# meta description
description: "This is meta description"
# save as draft
draft: false
---
# Snippet UI test page

Temporary page for manually verifying snippet rendering. Every snippet type is below.

## 1. Inline snippets

### Inline JSX

At Gethugothemes, we create our themes with great care. If you have any pre-sales questions about our products, please <A href="/contact">contact our support team</A> and we will get back to you soon.

Self-closing inline JSX <Icon name="star" size="16"/> in the middle of a sentence.

Inline JSX with a long attribute list <Badge variant="outline" color="emerald" size="sm" tooltip="This tooltip is intentionally long to force wrapping on narrow screens">New</Badge> followed by more text.

Nested inline JSX: <Tooltip content="Outer tooltip">hover over <Kbd>Ctrl</Kbd> + <Kbd>K</Kbd> to open search</Tooltip> in the running text.

Two inline JSX elements back to back <Tag>first</Tag>​<Tag>second</Tag> with no space between them.

### Inline HTML

Press <kbd>Ctrl</kbd> + <kbd>K</kbd> to search, or read <span class="text-primary font-bold">this highlighted inline html span</span> to continue the sentence nicely across lines of text.

An inline link <a href="https://example.com/a/very/long/path/that/keeps/going/and/going?with=query&params=true" target="_blank" rel="noopener">external link text</a> inside a paragraph.

Inline HTML with nested tags <span class="note">​<strong>bold</strong> and <em>italic</em> inside</span> and a line <br> break.

Superscript x<sup>2</sup>, subscript H<sub>2</sub>O, and <mark>highlighted text</mark> inline.

### Inline Hugo

The site title is {{< param "title" >}} and this icon {{< icon name="facebook" class="very-long-class-name another-long-class-name yet-another" >}} sits in running text.

Percent-style inline shortcode {{% param "description" %}} and a reference {{< ref "blog/post-1.md" >}} in a sentence.

## 2. JSX blocks

<Notice type="info" title="A JSX block with a fairly long title attribute to test wrapping on narrow screens">

This is the **body** of a JSX block with children, including an inline <A href="/docs">JSX link</A> and `inline code`.

- List item one
- List item two

</Notice>
<YouTube id="dQw4w9WgXcQ" title="Self-closing JSX block"/>
<Chart data={[1, 2, 3, 4]} options={{ responsive: true, legend: { position: "bottom" } }} height={320}/>

### Nested JSX

<Tabs defaultValue="first">

<Tab label="First tab">

Content of the **first** tab.

<Notice type="warning">

A JSX notice nested inside a tab inside tabs.

<Card title="Third level" href="/deep/link">

Deeply nested card content with an inline <Icon name="arrow"/> icon.

</Card>

</Notice>

</Tab>
<Tab label="Second tab">

<YouTube id="abc123"/>

</Tab>

</Tabs>

## 3. HTML blocks

<div class="custom-note" data-variant="warning" style="padding: 12px; border: 1px solid red">
Raw HTML block body text that goes on for a while to check wrapping behaviour on smaller screens.
</div>

### Big HTML

<section class="pricing-section container mx-auto px-4 py-16" id="pricing" data-analytics="pricing-table" aria-labelledby="pricing-title">
  <div class="row justify-center">
    <div class="col-12 md:col-10 lg:col-8 text-center">
      <h2 id="pricing-title" class="mb-4 text-3xl font-bold">Simple, transparent pricing</h2>
      <p class="mb-8 text-lg text-gray-600">Choose the plan that fits your team. Upgrade or downgrade anytime without losing any of your content.</p>
    </div>
  </div>
  <div class="grid gap-6 md:grid-cols-3">
    <div class="rounded-xl border p-6 shadow-sm">
      <h3 class="text-xl font-semibold">Starter</h3>
      <p class="mt-2 text-4xl font-bold">$0<span class="text-base font-normal">/month</span></p>
      <ul class="mt-4 space-y-2">
        <li>1 project</li>
        <li>Community support</li>
        <li>Basic media library with a long description that should wrap on small screens</li>
      </ul>
      <a href="/signup?plan=starter&utm_source=pricing&utm_medium=table&utm_campaign=very-long-campaign-name" class="btn btn-outline mt-6 block">Get started</a>
    </div>
    <div class="rounded-xl border-2 border-primary p-6 shadow-lg">
      <h3 class="text-xl font-semibold">Pro</h3>
      <p class="mt-2 text-4xl font-bold">$19<span class="text-base font-normal">/month</span></p>
      <ul class="mt-4 space-y-2">
        <li>Unlimited projects</li>
        <li>Priority support</li>
      </ul>
      <a href="/signup?plan=pro" class="btn btn-primary mt-6 block">Start free trial</a>
    </div>
  </div>
  <table class="mt-12 w-full text-left">
    <thead><tr><th>Feature</th><th>Starter</th><th>Pro</th></tr></thead>
    <tbody>
      <tr><td>Projects</td><td>1</td><td>Unlimited</td></tr>
      <tr><td>Collaborators</td><td>1</td><td>10</td></tr>
    </tbody>
  </table>
</section>

<details>
<summary>Click to expand an HTML details block</summary>
Hidden content inside a details element.
</details>

<iframe src="https://www.youtube.com/embed/dQw4w9WgXcQ" width="560" height="315" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 4. Hugo blocks

{{< toc >}}

{{< button label="Button" link="/" style="solid" >}}

{{< notice "note" >}}
This is a simple note.
{{< /notice >}}

{{< notice "warning" >}}
This is a simple warning.
{{< /notice >}}

{{% notice "tip" %}}
A **percent-style** block shortcode with markdown inside.
{{% /notice %}}

{{< tabs >}}
{{< tab "Tab 1" >}}
#### Hey There, I am a tab

Lorem ipsum dolor sit amet, consetetur sadipscing elitr.
{{< /tab >}}

{{< tab "Tab 2" >}}
{{< notice "info" >}}
A notice nested inside a tab inside tabs.
{{< /notice >}}
{{< /tab >}}
{{< /tabs >}}

{{< accordion "Why should you need to do this?" >}}
- Lorem ipsum dolor sit amet consectetur adipisicing elit.
- Quam, reiciendis.
{{< /accordion >}}

{{< image src="images/image-placeholder.png" caption="" alt="alter-text" height="" width="" position="center" command="fill" option="q100" class="img-fluid" title="image title"  webp="false" >}}

{{< gallery dir="images/gallery" class="" height="400" width="400" webp="true" command="Fit" option="" zoomable="true" >}}

{{< slider dir="images/gallery" class="max-w-[600px] ml-0" height="400" width="400" webp="true" command="Fit" option="" zoomable="true" >}}

{{< youtube ResipmZmpDU >}}

{{< video src="https://www.w3schools.com/html/mov_bbb.mp4" width="100%" height="auto" autoplay="false" loop="false" muted="false" controls="true" class="rounded-lg" >}}

​
