Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C085C7192C5
	for <lists+linux-man@lfdr.de>; Thu,  1 Jun 2023 07:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbjFAFz0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Jun 2023 01:55:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbjFAFyT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Jun 2023 01:54:19 -0400
Received: from todd.t-8ch.de (todd.t-8ch.de [IPv6:2a01:4f8:c010:41de::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E24911F
        for <linux-man@vger.kernel.org>; Wed, 31 May 2023 22:52:54 -0700 (PDT)
Date:   Thu, 1 Jun 2023 07:52:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=t-8ch.de; s=mail;
        t=1685598761; bh=mEPLeq9nXtyfTRbuG/NVHdA/vQHMCaTgtwEgkbAmtF4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Pn0yGme8sNpDOGmczW2dBmFmJmZRwQMtNtY2vZbzGGt8xiV9ZggQDdlgtTwvA08+F
         vYxaVJlTFJeAh/s7EAYqwmF7pdmrqE+V+Zv3TmSqZ6txsRlr2dThW+pwuvwKQf/cwp
         S/lnMok6hnjqMj6/t1DS2Y6VStDs5qwBrYGhBm1Q=
From:   Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas@t-8ch.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Willy Tarreau <w@1wt.eu>, Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH RFC] gettimeofday.2: Don't allow "tv" to be NULL
Message-ID: <4b1c2a51-214a-4f17-a77f-556614750da0@t-8ch.de>
References: <20230530-gettimeofday-null-v1-1-3856b6dde0c7@t-8ch.de>
 <c300b95e-4604-dfb8-7487-d02a2cea18dc@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c300b95e-4604-dfb8-7487-d02a2cea18dc@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-05-31 22:56:22+0200, Alejandro Colomar wrote:
> On 5/30/23 18:40, Thomas Weißschuh wrote:
> > POSIX does not allow "tv" to be NULL.
> > 
> > On glibc and gnulib calling gettimeofday(NULL, NULL) can segfault.
> > 
> > For glibc see __gettimeofday() and __gettimeofday64() in
> > sysdeps/unix/sysv/linux/gettimeofday.c.
> > 
> > Note that by default glibc may use the gettimeofday() syscall or vdso
> > function which both support "tv" to be NULL.
> > The segfault can be triggered by compiling a i386 binary on a x86_64
> > system.
> 
> What happens with the Linux syscall?  What does it do for NULL in tv?

It returns "0". Same for the VDSO and musl libc.

> 
> Thanks,
> Alex
> 
> > 
> > Signed-off-by: Thomas Weißschuh <thomas@t-8ch.de>
> > ---
> >  man2/gettimeofday.2 | 10 ++++------
> >  1 file changed, 4 insertions(+), 6 deletions(-)
> > 
> > diff --git a/man2/gettimeofday.2 b/man2/gettimeofday.2
> > index 9d134fa49de7..cdbec5ede23c 100644
> > --- a/man2/gettimeofday.2
> > +++ b/man2/gettimeofday.2
> > @@ -85,16 +85,14 @@ struct timezone {
> >  .EE
> >  .in
> >  .PP
> > -If either
> > -.I tv
> > -or
> > +If
> >  .I tz
> > -is NULL, the corresponding structure is not set or returned.
> > +is NULL, the structure is not set or returned.
> >  .\" FIXME . The compilation warning looks to be going away in glibc 2.17
> >  .\" see glibc commit 4b7634a5e03b0da6f8875de9d3f74c1cf6f2a6e8
> > -(However, compilation warnings will result if
> > +If
> >  .I tv
> > -is NULL.)
> > +is NULL, the behavior is unspecified.
> >  .\" The following is covered under EPERM below:
> >  .\" .PP
> >  .\" Only the superuser may use
> > 
> > ---
> > base-commit: f0067f73941ea0e512b9018a123472508a0858db
> > change-id: 20230530-gettimeofday-null-7ee404b7825f
> > 
> > Best regards,
> 
> -- 
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5



