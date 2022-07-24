Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5146A57F732
	for <lists+linux-man@lfdr.de>; Sun, 24 Jul 2022 23:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbiGXV0O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jul 2022 17:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbiGXV0N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jul 2022 17:26:13 -0400
Received: from scc-mailout-kit-02-level5.scc.kit.edu (scc-mailout-kit-02-level5.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e765])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1369B49A
        for <linux-man@vger.kernel.org>; Sun, 24 Jul 2022 14:26:10 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oFj72-005w31-NX; Sun, 24 Jul 2022 23:26:09 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oFj71-006mg2-Ui; Sun, 24 Jul 2022 23:26:07 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oFj71-0002Hv-Tw; Sun, 24 Jul 2022 23:26:07 +0200
Date:   Sun, 24 Jul 2022 23:26:07 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     alx.manpages@gmail.com, Colin Watson <cjwatson@debian.org>,
        linux-man@vger.kernel.org, man-db-devel@nongnu.org
Subject: Re: Semantic man(7) markup (was: Linux man-pages Makefile
 portability)
Message-ID: <Yt2473ZPmukEo584@asta-kit.de>
References: <8b9daa0e-6f08-dd55-5772-51f5052ed8bb@gmail.com>
 <YrB66rgFZqryrmpt@asta-kit.de>
 <6e294373-2661-286c-09c4-e67cd84103d7@gmail.com>
 <fdde7402-5e69-b6ff-60fc-74ad9c9054f1@gmail.com>
 <YtrXbDo5NVxNT/cb@asta-kit.de>
 <80553a14-8f39-d4ad-def3-35d6551a31f3@gmail.com>
 <Ytw65nGl1qouSU5R@asta-kit.de>
 <ff01b98c-563f-dfd3-4996-65ff5e5f44ce@gmail.com>
 <Yt1r65RJemg3ecmO@asta-kit.de>
 <20220724172947.qlunrfnje56yaasv@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220724172947.qlunrfnje56yaasv@illithid>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

> I stand ready for the hail of rotten tomatoes.

I hope you are not surprised that i'll try to answer constructively.

Even though i'm not sure how relevent such an early design draft
is for linux-man@ or man-db-devel@, i'm not trimming the distribution
list just yet, but you might perhaps wish to consider choosing one
appropriate forum rather than cross-posting a design effort that is
likely to be long and difficult to three lists.

G. Branden Robinson wrote on Sun, Jul 24, 2022 at 12:29:47PM -0500:

> It will not surprise, but might horrify, Ingo to learn that I have an
> idea for how to add semantic markup to man(7).

It does not surprise me, you have already moved ahead with adding new
syntax to man(7), though so far in a piece-meal manner.  It would only
horrify me if this were done badly.

Since this is an early draft, it is not a surpise that i will raise
several points of the kind "won't work as you apparently hope" below.
That's not intended as denigration.  In an early design phase, it
is normal that not every idea is viable.  The job is to find the
working ideas in a larger pool of potential ideas and hammer them
into a working whole of minimal complexity that does the job.

> Consider this hypothetical example.
> 
>   $ cat man3/man-pages.man
>   .DC type B
>   .DC field I
>   $ cat man3/tm.3type
>   .so man3/man-pages.man

There is a danger of collisions here between the helper files of
different software projects.  That's maybe manageable; page names
can already collide right now.  Do such helper files really need to
be section-specific?  mdoc(7) teaches that in practice, there are
basically two markup domains: command line utilities and library
functions.  A possible third domain, kernel configuartion directives,
leads a fringe existence at best.  In practice, combining both
domains in one namespace poses no problems.

Besides, you will hardly be surprised that i deem making the
styles configurable detrimental in the first place.  The whole
point of having such styles is enabling a uniform, consistent
user experience.

> [...]
>   .SH DESCRIPTION
>   .TG type "struct tm"

This utterly breaks compatibility.
On formatters not suuporting .TG, the most important
content of the dpocument will simply disappear.

Even if you would somehow manage to get a fallback

  .de TG
  \&\\$2
  ..

in place - and so far, i have no idea how you could do that portably
on an arbitrary and potentially unknown formatter - that would
leave "struct tm" with no markup whatsoever.

One obvious idea to trivially improve the design is to use the
equivalent syntax

  .TG type
  .I "struct tm"

with the syntax constraint ".TG needs to be followed by a font macro"
and the semantic effect "in that case, the custom style overrides
the default style", reminiscent of how CSS can be used to override
the default styles of HTML elements.

This suggestion for improvement is not yet a definitive recommendation
though, it is merely another idea for the pool.

Let me also note that the markup overhead for your proposed scheme
is so far at least three times as large as for mdoc(7).
With modc(7), marking up a work usually requires one two-letter macro
as the markup overhead.  Your scheme requites the tag (which will
usually be at least four letters, sometimes more) in addition.

For spacing and punctuation control, mdoc(7) usually requires
no furthes overhead, except occasionally two letters for Ns.
It's not yet clear how your scheme will fare in that respect
because you proposed no mechanism for spacing and punction control
yet, but that will likely require some overhead, too.

>   describes time, broken down into distinct components.
>   .PP
>   .TG field tm_isdst
>   describes wether daylight saving time is in effect at the time
>   described.
> [...]
> 
> Here, "DC" means "define class", a class of tags.  "TG", if one could
> not guess, declares a tag of the type in its first argument with the
> remaining arguments being the content thus tagged.
> 
> Returning to "DC", we see that it takes a second argument naming a macro
> to call which will then apply any desired presentational markup to style
> the tagged word.  This second argument need not be present.  In other
> words, tagged content need not be visually distinct from its
> surroundings.  Even in that event, it can still be useful; see #1 below.
> 
> Further, it will be obvious to the experienced *roff user that the macro
> called by DC to style the applicable arguments given to TG need not even
> be part of the man(7) language.
> 
> You could populate "man-pages.man" like this.
> 
>   $ cat man3/man-pages.man
>   .de CW
>   .  ie t \&\f[CR]\\$*\f[]
>   .  el   \&\\$*
>   ..
>   .DC type CW
>   .DC field I
> 
> This technique breaks the stranglehold of the man(7) font selection
> macros.  (You're still limited by the output device's font repertoire,
> however.)

I fear you are missing the main aspect that makes using the man(7)
font macros complicated: spacing and punctuation.

Let us start with a moderately simple, everyday example:

  .Ft double Fn atan2 "double y" "double x"

What would that become with your proposed syntax?

  .TG type double
  .TG funcname atan2
  (
  .TG funcarg "double y"
  ,
  .TG funcarg "double x"
  )

What is your plan for that?  Recommending \c everywhere?
Or mdoc(7)-style punctuation handling like

  .TG type double
  .TG funcname atan2 NS
  .TG funcarg ( "double y" ,
  .TG funcarg "double x" )

Practical work shows these trivial cases of spacing around common
punctuation like parentheses and commas are not the only ones that
occur.  Sometimes, spacing needs to be inserted or suppressed in ways
that differ from default rules.  mdoc(7) has several mechanisms for
that, the most important one being .Ns.  Your new scheme might choose
a different approach, but i predict how well that mechanism is going
to be will be one determining factor of how pleasant or unpleasant
the language will become for authors and maintainers.

> If rendering to PostScript or PDF, you could decide to style
> certain tags in Zapf Chancery Medium italic, if you wished.  (I cannot
> warrant that you won't get yelled at.)
> 
> Here are a few perhaps less obvious things this approach would offer.
> 
> 1.  It enables keyword search by tag.  Whatever does the searching need
>     only look for "TG" calls, match the class argument, and return the
>     remainder.  A search could be narrowed by limiting both the class
>     _and_ the keyword arguments of course, perhaps to answer questions
>     like "what pages use 'stat' as data type?".

Sure, just like

  man -k Vt=stat

with mandoc.

> 2.  Degraded operation for other/older man(7) implementations is
>     straightforward.  'DC' can be completely ignored.  'TG' can be
>     defined as follows.
> 
>     .de TG
>     \&\\$*
>     ..

No, that is plain wrong.  It results in

     type struct tm describes time, broken down into distinct components.
     field tm_isdst describes wether daylight saving time is in effect
     at the time described.

You certainly do not want to print out \\$1.

>     or, for truly bloody-minded portability, thus.
> 
>     .de TG
>     \&\\$1 \\$2 \\$3 \\$4 \\$5 \\$6 \\$7 \\$8 \\$9
>     ..

That would exclude any kind of mdoc(7)-style punctuation handling,
making spacing control much harder to implement.  I'm not saying
impossible, but harder.  One way out might be to use \\$2 only
and require quoting of multi-word arguments.

> 3.  Everyday man(7) page authors need only learn 'TG' and the available
>     list of keywords for the suite of man pages to which they are
>     contributing.  Hammering out the repertoire of available tag classes
>     and the surely monumental bikeshedding of text styling decisions to
>     be associated with each tag class is delegated to the project that
>     chooses to define them.

I fear that is a terrible idea.  The DocBook design fiasco teaches
us that even a single committee is easily capable of utterly screwing
up markup consistency.  Leaving the markup lexicon up to individual
projects guarantees hopeless global inconsistency.  Different projects
will mark up different syntax elements, assign different tags for the
same purpose, and assign conflicting styles to the same tags.

Consequently, semantic searching will *not* work at all.  You cannot
even search for a function name if one group tags it as "function"
and another as "funcname" and another as "sub" and another as "procname".
Rendering will be wildly inconsistent because every group of pages,
large or small, comes with its own styles - and larger projects are
unlikely to remain consistent even within themselves.  Due to the
undefined nature of tag names, distributions are unable to fix up
the mess, too.

>     The man(7) macro package itself will impose
>     no policy and may not even define any tag classes to start with.

Branden, seriously, standardizing this is your number two most important
job during this design.  The top one priority, of course, is to
choose a syntax that is short, simple, robust, esay to read, and
easy to write for both usual and unusual use cases, and - if you
want to continue calling the language man(7) - backward compatible.

>     (groff would have some for its own man pages, of course, as I would
>     expect Linux man-pages to do.)
> 
> 4.  Site admins offended at the styling decisions undertaken by various
>     projects could reliably override them by editing the files sourced
>     by the relevant man pages.

That's illusionary until you provide an authoritative and long-time
stable list of valid tags.
Failing to do so is one among the reasons why SGML and XML turned
out as hard to use in practice, and one of the reasons why HTML
ultimately gave up on being XML and instead defined an exhaustive
list of standard elements.

Besides, on one of my machines, i currently have almost 600 packages
installed even though lots of things that are packages on Linux do
*not* count as packages on OpenBSD but are part of the base system
that cannot ever be uninstalled, including thing like compilers and
other development tools and lots of Internet daemons like web server,
mail server, routing daemons, DNS servers and much more.  And yet,
i still have almost 600 packages.  As a rule of thumb, on average one
third of packages have manual pages.  So you want me to edit 200 config
files and resolve conflicts in them whenever updating packages?
I'm not yet convinced that's a very good plan.  :-o

>     Maybe those should live in /etc rather
>     than the man page hierarchy proper.
> 
> 5.  Misspelling a tag class or using an unavailable one is an error that
>     would be easily diagnosed and reported.
> 
> To reiterate, groff man(7) would impose no policy regarding the tag
> classes or their rendering on anyone.  It similarly would escape the
> ongoing problem that mdoc(7) chose for itself by administering
> centralized authoritative lists of standards documents, operating system
> releases, and other lexica.

I freely admit that .St .At .Bx .Nx .Fx .Ox .Dx .Lb are among the least
well designed parts of mdoc(7).  But that design problem is completely
unrelated to the fact that the list of macros (in mdoc(7) parlance)
or tags (in your proposed terminology) needs to be fixed.  That's *the*
central purpuse of a markup language.  Personally, i would go as far
as calling a non-extensible markup language usually better than an
extensible one, but even for an extensible markup language, the
quality of the standard lexicon is the second highest priority,
right after the quality of the basic syntax.

> Tagful man(7) pages under my proposal would
> opt into whatever keyword/class discipline they desire, or not at all.
> 
> I am not wedded to the nomenclature for the included files, nor the `DC`
> or `TG` macros, except to note that the macro names are available.
> (`DT`, putatively for "define tag", is not.  It is already taken.)

Given how utterly your .TG proposal is breaking compatibility,
i wonder whether it would be wiser to give your new macroset a new
name and leave the legacy man(7) language alone.  That would allow
cleaning up some design deficiencies of man(7) at the same time,
for example:

 * properly define display macros, a purpose now served in a
   manner the is partially quirky, partially redundant, and yet
   incomplete by .RS and .EX
 * get rid of the font alternation macros; it is well known that
   even though those squat on a considerable parcel of namespace,
   they only solve part of their task - the infamous three-font
   issue; your proposal needs a solution for that anyway that
   still needs to be developed
 * get rid of the redundancy among .TP .TQ .IP .HP
 * get rid of legacy macros like .AT .DT .LP .P .SM .SB .UC
   that are useless in practice
 * get rid of misdesigned macros like .SY

Please also consider that having a mix of semantic and presentational
markup in a language is usually not the best idea.  As a prominent
example, after a considerable amount of handwringing that lasted for
many years, HTML finally abolished presentational markup completely.
For similar reasons, we somewhat discourage using .Em and .Sy in mdoc(7),
except for purposes similar to <em>, <i>, <strong>, and <b> in HTML 5.

If you choose a new name, compatibility concerns vanish instantly.
But of course, once you publicly announce "this is now ready for
production", stability becomes important again, so the design should
be well thought out from the start.  Finding a major design issue
or design gap after it has been in production for, say, two years
would be very unfortunate.

On the other hand, if you want to continue calling it man(7), then
the logical consequence is that compatibility concerns become
paramount.

Yours,
  Ingo
