Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA35C7D8816
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 20:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230143AbjJZSPW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 14:15:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjJZSPV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 14:15:21 -0400
X-Greylist: delayed 1378 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 26 Oct 2023 11:15:14 PDT
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 930AE192
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 11:15:14 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1qw4Wk-001LRx-27;
        Thu, 26 Oct 2023 19:52:15 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qw4Wk-000iNN-B3; Thu, 26 Oct 2023 19:52:13 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1qw4Wj-001dEL-Ku; Thu, 26 Oct 2023 19:52:13 +0200
Date:   Thu, 26 Oct 2023 19:52:13 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
Message-ID: <ZTqnTZPYkiPmtenf@asta-kit.de>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
 <ZTp-hZTj7cmKMlXb@debian>
 <20231026152813.6jziefb3umfmshb4@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231026152813.6jziefb3umfmshb4@illithid>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden and Alejandro,

G. Branden Robinson wrote on Thu, Oct 26, 2023 at 10:28:13AM -0500:
> At 2023-10-26T16:58:13+0200, Alejandro Colomar wrote:
>> On Thu, Oct 26, 2023 at 09:51:40AM -0500, G. Branden Robinson wrote:
>>> At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:

>>>> Regarding PP, LP, and P, what's the history of them?  Why do we
>>>> have the 3?  I'm willing to reduce them to just one.

>>> Doug's original man(7) (1979) didn't have `P`.  But Unix System III
>>> added it in 1980, and 4.3BSD followed suit in 1986.  This
>>> information is in groff_man(7).

>> Was the original PP?

> It had both `PP` and `LP`.

>> Still, compatibility with ms(7) would make it slightly easier to
>> trasnfer learning from man(7) to ms(7), would one learn it.  I know
>> many other macros are incompatible in bad ways, but the less the
>> better, no?

> That's true, but these days the knowledge transfer is, I submit, vastly
> more likely to go the other way; that is, people will be exposed to
> man(7) as their first roff macro language, and might decide to pick up
> ms(7).
> 
> At that point, they'd have to learn that `LP` and `PP` do _different_
> things.  I think it's actually better if they _don't_ have to unlearn
> the "fact" (applicable only to man(7)) that they are exactly the same.
> 
> Better, I believe, to promote only `P` in man(7).  Anyone wanting to
> pick up mm(7) will still enjoy some knowledge transfer.  Without
> arguments, `P` in mm(7) "does what you mean".

I consider this a bikeshed discussion.

Given that Branden apparently wants to
 * promote .P and deprecate .PP
 * i don't want mandoc_man(7) to gratuitiously spread any more bad
   man(7) style advice than is unavoidable by the fundamental decision
   of declaring the whole man(7) language as obsolete,
i briefly considered changing mandoc_man(7).

Currently it says:

  PP  Begin an undecorated paragraph.  The scope of a paragraph is closed
      by a subsequent paragraph, sub-section, section, or end of file.
      The saved paragraph left-margin width is reset to the default.

  LP  A synonym for PP.

  P   This synonym for PP is an AT&T System III UNIX extension later
      adopted by 4.3BSD.

and it declares LP and P deprecated by including only PP in the
MACRO OVERVIEW.

All the arguments feel weak in either direction:

 * In theory, .PP is more portable than .P, but that is extremely
   unlikely to ever matter in practice.
 * As seen above, the similarities and subtle differences
   when comparing to ms(7) can be employed as arguments in either
   direction.
 * The arguably more important similarity that HTML defines a <p>
   but not a <pp> element can be regarded as a learning aid,
   but it's still a weak argument because HTML and roff(7) are
   very different domains and not similar in most other respects.
 * The similarity of .P and <P> can also be turned around to be
   levied as an argument for .PP:  .P and <P> are *very different*
   in so far as <P> is a block element, whereas .P is an in-line
   macro that cannot participate in block nesting.  In particular,
   it can neither nest inside a list item, nor can anything be
   contained inside a .P syntax tree node.  In contrast to <p>,
   .P does not represent a *paragraph*, but only a paragraph *break*.
 * .PP is more similar to mdoc(7) .Pp.  Again, a weak argument because
   macro naming is totally different in both languages even in most
   of the few cases where functionality matches, with the exception
   of only .SH and .SS.

Consequently, i tend to leave mandoc_man(7) just as it is and not
repaint the bikeshed.  That way, the original .PP macro - with which
nothing is really wrong, except for the fundamental design mistake
of not being a block macro, a mistake it shares with mdoc(7) .Pp -
gets the full description, while the slighly younger .P gets the
compat info, even though that now is only of historical but not
of practical interest.  Maybe still nice to keep both apart - gee,
yet another weak argument.

If, for some reason, you feel strongly about it and think it is
important which one to promote, it might be possible to convince me to
deprecate .PP and list .P as the non-deprecated form even though it
is theoretically less portable.  I must admit i don't particularly
like the idea, though.  It feels like taking a gratuitious risk,
which does not feel ideal even if both the magnitude of the risk
and the benefit reaped are almost exactly zero.

Yours,
  Ingo
