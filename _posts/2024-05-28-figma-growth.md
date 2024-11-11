---
title: "Metrics and SQL recipes for monetization growth analytics at Figma"
excerpt: "Success measures and experiment ideas for free-to-paid conversion"
tags:
  - data science
  - sql
related: false
toc: true
toc_sticky: true
---

In my [last post](https://jgtiu.github.io/figma/), I showed how we might analyze the adoption of AI features in [FigJam](https://www.figma.com/figjam/). This post will look into the larger [Figma](https://www.figma.com/) product, a collaborative design and prototyping tool. Specifically, we will explore how we might **measure and improve the free-to-paid conversion** of Figma's users.

## Context
Why is measuring free-to-paid conversion important? Figma is a SaaS product with a growing user base. To keep improving the business and sustain its "growth flywheel", it will likely want to improve its monetization strategy and nudge starter users into using its paid features.

The rest of this post will show how I would think about improving monetization growth. Here are the high-level points:
- First, lay out success metrics and driver metrics and show exactly how to calculate them.
- Next, show examples of data we will need to measure monetization growth.
- Show sample SQL queries to derive the success metrics.
- Hypothesize on how to improve the metrics.

This [page](https://www.figma.com/pricing/) will give you a better idea about Figma pricing.

<figure>
    <img src="/assets/2024-05-28-figma-growth/figma-pricing.png">
    <figcaption>Figma pricing. <a href="https://www.figma.com/pricing/" target="_blank">Source</a>.</figcaption>
</figure>

**Disclaimer:** I do not work at Figma. All the following examples are derived from my own experience on the platform's free/started plan.

## Metrics

### Success vs driver metrics

An important thing to note about product metrics is that there are two kinds: success and driver metrics.

Success metrics measure the one thing we care about. In this case, it's the conversion rate of users from the free to paid plans.

Although success metrics show the number we ultimately want to improve, it moves slowly and does not take into account the many product components that might influence it. This is where driver metrics come in. They are faster-moving and measure more granular things that might influence the success metric, like whether free users have tried to make more than 3 collaborative design files.

### Examples
Before looking at any data, let's list all the things we can measure that are good indicators or proxies for free-to-paid conversion.

**Success metric**: Free-to-paid conversion: Percentage of users who have switched from the free to paid plan in the last quarter, or 90 days.

$$\dfrac{\text{# users on free plan last quarter, paid plan this quarter}}{\text{# users on free plan last quarter and this quarter}}$$

**Driver metrics**
- compelling value that predmium offerings can unlock
- statistical methods to experiment design

## Sample data

**Users**

| User ID | Email                    | Job title           |
|---------|--------------------------|---------------------|
| 1       | wilsonmaria@example.org  | Student or educator |
| 2       | jesse56@example.org      | Student or educator |
| 3       | elaine71@example.com     | Product management  |
| 4       | davistimothy@example.org | Other               |
| 5       | emily21@example.com      | User research       |

****

## SQL analysis

## Ideas on how to improve metrics
Good strategies to improve the conversion rate will take into account the steps in the user funnel. Here are some examples:

- **_Make users aware_**: For example, if a free-plan user fails to make more than 3 collaborative design files (because this is only allowed for paid users) and leaves their Figma session, it will help to ensure they are aware that the paid plan exists. "Awareness efforts" include showing popups in Figma informing the user about the additional features under a paid plan, or sending a marketing email.
- **_Offer suggestions at plan limits._** Upsell users when they attempt to go beyond free plan limits.
- **_Let users try._** Offer free trials for paid features. It's possible that users cannot see the value of paid features because they have not tried them. Of course, some experimentation will be useful before rolling this out.
- **_Monitor the use of paid features._** If a user does not use the paid features while they are on a paid/professional plan, they are more likely to return to the free plan.

## Closing Thoughts

## References
- talks about the common table structures https://www.figma.com/blog/how-we-use-data/
- https://amplitude.com/blog/revenue-churn
- https://www.emmading.com/
- https://amplitude.com/blog/revenue-churn
