Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B178952F037
	for <lists+linux-man@lfdr.de>; Fri, 20 May 2022 18:11:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233517AbiETQLc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 May 2022 12:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351584AbiETQL1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 May 2022 12:11:27 -0400
X-Greylist: delayed 6994 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 20 May 2022 09:11:25 PDT
Received: from joooj.vinc17.net (joooj.vinc17.net [IPv6:2001:4b99:1:3:216:3eff:fe20:ac98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E0231D0FD
        for <linux-man@vger.kernel.org>; Fri, 20 May 2022 09:11:24 -0700 (PDT)
Received: from smtp-zira.vinc17.net (128.119.75.86.rev.sfr.net [86.75.119.128])
        by joooj.vinc17.net (Postfix) with ESMTPSA id 065E3274;
        Fri, 20 May 2022 18:11:22 +0200 (CEST)
Received: by zira.vinc17.org (Postfix, from userid 1000)
        id CB61D2800218; Fri, 20 May 2022 18:11:21 +0200 (CEST)
Date:   Fri, 20 May 2022 18:11:21 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E,
 f, F, g, and G
Message-ID: <20220520161121.GA1112518@zira.vinc17.org>
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.5+17 (caf1d53e) vl-138565 (2022-05-19)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-05-20 16:44:42 +0200, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On 5/20/22 16:10, Vincent Lefevre wrote:
> > Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> > ---
> >   man3/printf.3 | 12 +++++++++++-
> >   1 file changed, 11 insertions(+), 1 deletion(-)
> > 
> > diff --git a/man3/printf.3 b/man3/printf.3
> > index 4fa1f11f3..63ea3092f 100644
> > --- a/man3/printf.3
> > +++ b/man3/printf.3
> > @@ -502,7 +502,17 @@ argument, or a following
> >   .B s
> >   conversion corresponds to a pointer to
> >   .I wchar_t
> > -argument.
> > +argument. In C99, on a following
> 
> Why "in C99"?

According to GCC with "-Wformat -pedantic", this is new in C99:

  warning: ISO C90 does not support the ‘%le’ gnu_printf format

The printf(3) man page already mentions features that appeared in
C99. For instance: "a, A   (C99; not in SUSv2, but added in SUSv3)"
That's why I mentioned that for consistency.

I could also check that this is not in SUSv2:
  https://pubs.opengroup.org/onlinepubs/7990989775/xsh/fprintf.html

Perhaps this should be rephrased. Something like:

  On a following a, A, e, E, f, F, g, or G conversion, this
  length modifier is ignored (C99; not in SUSv2).

What do you think?

I don't know about SUSv3 (I could just see that this feature was
also supported in POSIX:2004).

> Also, see man-pages(7):
> 
>    Use semantic newlines
>        In the source of a manual page, new sentences  should  be
>        started on new lines, long sentences should be split into
>        lines  at  clause breaks (commas, semicolons, colons, and
>        so on), and long clauses should be split at phrase bound‐
>        aries.  This convention,  sometimes  known  as  "semantic
>        newlines",  makes it easier to see the effect of patches,
>        which often operate at the level of individual sentences,
>        clauses, or phrases.

Thanks for the information.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
