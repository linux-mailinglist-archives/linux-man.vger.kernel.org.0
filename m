Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4272F591230
	for <lists+linux-man@lfdr.de>; Fri, 12 Aug 2022 16:30:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233256AbiHLOaJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Aug 2022 10:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234317AbiHLOaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Aug 2022 10:30:08 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9236C82861
        for <linux-man@vger.kernel.org>; Fri, 12 Aug 2022 07:30:05 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oMVfn-00CDYz-0g; Fri, 12 Aug 2022 16:30:03 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oMVfl-007Ikv-V8; Fri, 12 Aug 2022 16:30:01 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oMVfl-0007Pe-UE; Fri, 12 Aug 2022 16:30:01 +0200
Date:   Fri, 12 Aug 2022 16:30:01 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH 4/6] xattr.7: wfix
Message-ID: <YvZj6emfWNfwRjwe@asta-kit.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220811201714.a2o432xhkyyyj6qi@illithid>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

G. Branden Robinson wrote on Thu, Aug 11, 2022 at 03:17:14PM -0500:
> At 2022-08-11T14:48:51+0200, Ingo Schwarze wrote:
>> Alejandro Colomar wrote on Mon, Aug 01, 2022 at 03:28:03PM +0200:

>>> I'd like to arrive to some consensus on usage of \~ and '\ '.

>> In manual pages, always use "\ " and never use "\~", period.

> This is hugely overstated.

>> The former is portable and the latter is a GNU extension.

> ...that is over 30 years old and supported by Heirloom Doctools troff
> for 17 years now, neatroff for about six, and your mandoc for three.

Actually, mandoc supports \~ at least since Sep 17 2009:
https://cvsweb.bsd.lv/mandoc/Attic/chars.in?rev=1.1&content-type=text/x-cvsweb-markup

> For full disclosure, I'll acknowledge that Documenter's Workbench [DWB]
> https://archive.org/details/dwb-preprocessor-ref
> troff doesn't support it, but it doesn't seem to have been maintained
> for 30 years (Heirloom Doctools troff appears to be its
> descendant/successor).

I agree that missing support in DWB is a weak argument.  It is
unlikely that many people use it for practical work.  They would
likely suffer from more serious problems than \~, too.

> plan9port troff doesn't either, and its laudable introduction
> of a man(7) MR macro notwithstanding, its activity level is
> not high.

There are people using Plan 9 for practical work though, they have
even occasionally posted on the groff and mandoc lists, so that is a
bit more of a problem.

> I would pessimistically assume that most or all proprietary Unix
> troffs branched off from V7 Unix troff or early device-independent troff
> (maybe DWB 1.0 troff, ca. 1984 [?, 1]) lack support for `\~`.
> https://github.com/n-t-roff/Solaris10-ditroff/blob/master/troff/n1.c#L797

That does sound likely.  As an example, look at Oracle Solaris 11:

   > uname -a
  SunOS unstable11s 5.11 11.3 sun4u sparc SUNW,SPARC-Enterprise
   > printf "a\\\\~b\n" | nroff | head -n 1
  a~b
   > printf "a\\\\~b\n" | groff -T ascii | head -n 1
  a b

> I further note that groff has a long tradition of inclusion in BSD
> Unix, https://minnie.tuhs.org/cgi-bin/utree.pl
> ?file=Net2/usr/src/usr.bin/groff/VERSION

Yes.  Cynthia already considered dropping support for Kernighan's
troff, but the CSRG vetoed that.  Inclusion of groff wasn't
controversial even at a time when groff didn't have its own version
conrol yet.  Consequently, you are right that \~ is unlikely to cause
trouble on any BSD system.

> and despite the efforts of the mdocml/mandoc project to
> supplant or dispose of it groff in BSD's descendant communities, the
> underlying fact remains.  Giving up support for `\~` was therefore, in
> this sense, a regression, and one that took quite some time to address.

I don't think that anyone gave up support for \~.
But we have evidence that some never implemented support for it.

[...]
> As I recall, mandoc does not even support "full justification"
> (alignment of text to both left and right margins, with inter-word
> spaces expanded ["adjusted"] to achieve this) in the first place and
> there are no plans to.

Correct.

> mandoc can thus treat the two sequences as synonymous--

It does.  Mandoc maps all of \  \~ \0 to U+00A0.

> but that doesn't mean the `\~` escape sequence is a gratuitous alias
> or deviation from the norm.

No.  It is useful for general-purpose typesetting,
like many GNU extensions are.

>> portability is still significantly more important

> You are not quantifying anything.  Come on, can we at least get a
> Fermi estimation of the installed bases of the respective troff
> implementations and mandoc?

Frankly, i have no idea how to estimate the number of actively used
installations of Plan 9, Solaris (any version), and possibly
additional commercial systems like AIX and HP-UX, or how to check
what the latter support.

There might be more systems out there parsing manual pages (not
necessarily full-featured roff(7) implementations like those
you listed), but providing specific evidence of such systems
would likely be my job to back up my advice.  I'm not searching
for them right now because we already have a few relevant examples.

>> than such minute typographical details.

> For someone arguing from a standpoint of such slavish fidelity to 40
> year-old practices, you seem to be selective in the way you do it.

Admitted.  Sometimes, i do see the value of new features, even
when they are backward-incompatible.

> The Unix manual was always meant to be typeset.
> 
> "The manual was intended to be typeset; some detail is sacrificed on
> terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
> Eighth Edition, Volume 1, February 1985)
> 
> At the time that statement was written, the sentiment was some 12 years
> old; the Bell Labs CSRC typeset man pages as soon as it was possible for
> them to do so.[4]
> [4] https://dspinellis.github.io/unix-v4man/v4man.pdf
>
> I understand if some man page contributors don't want to mess with
> aspects of typography that will appear only when formatting for output
> devices more sophisticated than terminal emulators--widow and orphan
> management can be tedious, for instance--but we shouldn't promulgate
> advice that makes the task of those who do--people like Alejandro and
> me--_harder_.

Even authors might disagree which is more important:

 (1) The typograpical difference between "\~" and "\ "
     in PDF and PostScript output of manual pages.

 (2) Correctly rendering whitespace on Plan 9, Solaris,
     and likely some other systems *at all*, for any output mode.

I suspect that many would prefer (2) - of course, that claim is hard
to quantify.

It would probably be good to arrive at a consensus recommendation
for such cases because many manual page authors probably have little
interest in judging such questions themselves.  Consensus seems
hard to reach though.  So maybe the best we can do is to simply
state the fact that \~ is still not supported by a few not very widely
used, but still somewahat significant roff implementations like Plan 9
and Solaris, even though that forces authors to draw their own
conclusion.

Yours,
  Ingo
