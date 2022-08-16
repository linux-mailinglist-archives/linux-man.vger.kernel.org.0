Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 578A4595B2E
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 14:03:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231562AbiHPMDR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 08:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbiHPMCe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 08:02:34 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4DF2F675
        for <linux-man@vger.kernel.org>; Tue, 16 Aug 2022 04:48:39 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oNv3l-001CEZ-M9; Tue, 16 Aug 2022 13:48:37 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oNv3k-007PN3-8b; Tue, 16 Aug 2022 13:48:36 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oNv3k-0002Ew-7y; Tue, 16 Aug 2022 13:48:36 +0200
Date:   Tue, 16 Aug 2022 13:48:36 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     DJ Chase <u9000@posteo.mx>, g.branden.robinson@gmail.com,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Standardize roff (was: *roff `\~` support)
Message-ID: <YvuEFFwLsLkKjAK7@asta-kit.de>
References: <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
 <Yvj/CAUSL1jVbAot@asta-kit.de>
 <CM5U2DCMCPL4.38VBYJS3B1L65@grinningface>
 <738eadd5-5495-d848-ef08-544e97fc1452@gmail.com>
 <CM60BZSRVXB6.19YICCPQBUCTD@grinningface>
 <094e3016-a8fc-b9a8-f6c0-bf2461a30216@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <094e3016-a8fc-b9a8-f6c0-bf2461a30216@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Mon, Aug 15, 2022 at 01:59:24PM +0200:
> On 8/14/22 21:43, DJ Chase wrote:

>> Do you think that a descriptive/trailing standard could be beneficial
>> or would you still say that it could mostly hinder *roff
>> implementations?

When prepared with diligence and without falling for featurism,
it might be useful because the common subset of the major roff
implementations is large enough that it would likely be possibly
prepare portable roff documents following such a standard.

However, such a standard could likely *not* include *any* of the
best features of any of the implementations: yes, implementations
have diverged that much - not quite as bad as make(1), but still more
than many other classical Unix programs.  Consequently, only authors
with modest needs could possibly consider adhering to the standard.
To provide some striking examples, the standard could include neither
the mom(7) macro set - which is a killer feature of groff - nor the
mdoc(7) macro set - which has been an important feature of groff for
more than 30 years and of mandoc for more than 10 years.

This is all theoretical though - as i explained, the effort required
for developing such a (necessarily seriously stunted) standard is
prohibitive.

[...]
> But we can achieve something very similar by documenting the differences 
> between known roff alternatives somewhere.  And that's likely to be much 
> easier.

That's a much lower bar than a standard, but don't underestimate
the effort involved even in that.

A few very small parts of that already exist.

For example,

  https://mandoc.bsd.lv/man/man.options.1.html

documents command line options of some roff(1) and man(1)
implementations, mostly intended for people who see themselves
forced to invent a new command line option - which should of course
be avoided if at all possible because the tangle of existing options
is already terrifying.

For example,

  https://man.openbsd.org/roff.7

documents roff requests and roff escape sequences; search for
"extension" in that page.  Even though this page focusses on groff,
Heirloom, and mandoc and does not mention Plan 9, neatroff, or other
implementations, the amount of compatibility information scattered
around that page is already larger than what would seem healthy for
most user-facing documentation.  It's OK here because this page is
geared more towards developers than towards users.
Also, note that this page is already very long even though it is
extremely terse - so terse that it is insufficient for learning
how to use most of the features mentioned.

> In the Linux man-pages we document when a function is in ISO C or in 
> POSIX, but also when it's not standardized but present in other Unix 
> systems (so that it has some degree of portability), or when it is 
> Linux-only.  Maybe having something similar in groff's manual pages 
> would be effective.

Except that the bulk, and in particular the core, of groff functionality
is *not* described in manual pages in the first place.  Would you
want to litter groff.texi with compatibility information throughout?
That would likely cause a significant increase in size, almost certainly
a very signifant decrease in maintainability, and possibly it might also
somewhat decrease readability.

> For example, for .MR, we were discussing that probably it would be good 
> to add a note like "(since groff 1.23.0)" and maybe it could also state 
> which other roff (or mandoc) implementations support it.

But that feels like an exception rather than the rule.  It seems
warranted for this particular case because we are introducing a
new feature without consideration for compatibility that will cause
information loss for end-users unless something unusual is done
about it.  Hopefully, we are not going to turn that vice into a habit.

The particular case of .MR is somewhat specific to manual pages, too.
If people prepare a typeset document using many advanced features with
groff or Heirloom, they are used to the fact that it won't work with
the other, nor with Plan 9.  That's not a major problem because most of
the time, the author is the only person who really needs to typeset a
document.  Nowadays, the average reader will only read the PDF version,
which is totally different from the situation with manual pages.

Yours,
  Ingo
