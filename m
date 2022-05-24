Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0AAD53243E
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 09:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232615AbiEXHjl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 03:39:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231262AbiEXHjl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 03:39:41 -0400
Received: from joooj.vinc17.net (joooj.vinc17.net [IPv6:2001:4b99:1:3:216:3eff:fe20:ac98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B966EC67
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 00:39:39 -0700 (PDT)
Received: from smtp-zira.vinc17.net (128.119.75.86.rev.sfr.net [86.75.119.128])
        by joooj.vinc17.net (Postfix) with ESMTPSA id D9FB924F;
        Tue, 24 May 2022 09:39:37 +0200 (CEST)
Received: by zira.vinc17.org (Postfix, from userid 1000)
        id 7C0F32800232; Tue, 24 May 2022 09:39:37 +0200 (CEST)
Date:   Tue, 24 May 2022 09:39:37 +0200
From:   Vincent Lefevre <vincent@vinc17.net>
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E,
 f, F, g, and G
Message-ID: <20220524073937.GO1112518@zira.vinc17.org>
References: <20220520141040.1136383-1-vincent@vinc17.net>
 <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org>
 <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
 <20220520173043.GC1112518@zira.vinc17.org>
 <CACKs7VAsrEzneeu84quRvw5cRcio-j2rAWyHvQTNZf6_5CqWtg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACKs7VAsrEzneeu84quRvw5cRcio-j2rAWyHvQTNZf6_5CqWtg@mail.gmail.com>
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

Hi Stefan,

On 2022-05-24 10:07:43 +0300, Stefan Puiu wrote:
> On Sat, May 21, 2022 at 8:33 AM Vincent Lefevre <vincent@vinc17.net> wrote:
> > diff --git a/man3/printf.3 b/man3/printf.3
> > index 4fa1f11f3..a231d626c 100644
> > --- a/man3/printf.3
> > +++ b/man3/printf.3
> > @@ -503,6 +503,17 @@ argument, or a following
> >  conversion corresponds to a pointer to
> >  .I wchar_t
> >  argument.
> > +On a following
> > +.BR a ,
> > +.BR A ,
> > +.BR e ,
> > +.BR E ,
> > +.BR f ,
> > +.BR F ,
> > +.BR g ,
> > +or
> > +.B G
> > +conversion, this length modifier is ignored (C99; not in SUSv2).
> 
> I'm not a native English speaker, but I think "Following a ...
> conversion" sounds better, unless I misunderstand the phrase.

"Following a ... conversion" would mean the opposite, while it is
the conversion that follows the length modifier. Moreover, I wrote
"a following ... conversion" because this is what is always written
in this section on the length modifier, under the form "A following
... conversion corresponds to ...".

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
