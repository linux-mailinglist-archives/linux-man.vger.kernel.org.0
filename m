Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B317F637F58
	for <lists+linux-man@lfdr.de>; Thu, 24 Nov 2022 19:57:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiKXS5U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Nov 2022 13:57:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiKXS5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Nov 2022 13:57:20 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C4BC8122F
        for <linux-man@vger.kernel.org>; Thu, 24 Nov 2022 10:57:16 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id z63so3626496ede.1
        for <linux-man@vger.kernel.org>; Thu, 24 Nov 2022 10:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bKEI+j/TKokUqOBDWCpSo8NBDCrNpev9Irl1XQVhrGs=;
        b=i65YA4Chc5f5QpS1C3rbYSbc7FS9YoGTS9BI7MoKIEQvl7x3KOd3lHFUF6pB2S/FvX
         GQm56rMM+8UhpDYmzYjt0p7THYv8weasZ42USnTq7NdAD2V8UA/Rp2dM6zHtLkH9DH41
         y0wNjnDNZtDP92hOn8TdR983EcF4Bib+8CNAWA7daPNwuOYtFsrT5zMHfAR567KjTNXa
         FYgL4c1bokAD8WjHVXYg6THVC8xOtKnjQFHa20mRoYPH/naj6HEjRu7JVK9F3L42zUNB
         nd3pJmkxNNxpEvhJpaIPAZJ8iATABsES7n0bntvQFGSxUaLPjHxErr4dNuH0FAgRUH8a
         Q2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bKEI+j/TKokUqOBDWCpSo8NBDCrNpev9Irl1XQVhrGs=;
        b=im92hcpwsstJ2zSY9n+M/nMu0ZsgAuSAWiD+GPQ7sSjGMcPvN/l3tEh1DBGHdsruiN
         tWg5WhAmkPwnkuq+dS2D67AkeV8eG1rSrsv2joqctQDBXhyCt+VGWyfqNwhGla8QHpxF
         i1JtL9OsxR2zIJ97QZWLcWqOas51AY7CpayLZY7JzoDCqybPoJrWQ3/wHAZ2WvcnfYQA
         u7QKMlSDtJAKQ+qUwBD7iIeA2y3c/X2dtvk+8N+BNfcu6zGWgnd5hiQWvfNYmPZAwiQO
         g17fpKA6QfKiBQZHWRS7UmikVnPrfRHzrYRLJxGMCiymU8BAvB5WUwTVvDYUXTlPH8Aq
         V2Ig==
X-Gm-Message-State: ANoB5pmDIMzo8vCxe3fQPbR/gjwRw8WC1FIVKsd8Yq7z84u8gD9LYnAN
        4+BeBAsubAjzLNJhjKe15EhBJv2oqUB8EogKC/k=
X-Google-Smtp-Source: AA0mqf5XtAbEnLA5E9xXCDuk6mupKwL8oBT7JPYmJEuoyme/6nctiPhkAtPTwo9bkWrRGaBrjGtHXA2cFyLM74UVPf8=
X-Received: by 2002:a05:6402:1ca8:b0:469:980c:5a2e with SMTP id
 cz8-20020a0564021ca800b00469980c5a2emr19476793edb.197.1669316234451; Thu, 24
 Nov 2022 10:57:14 -0800 (PST)
MIME-Version: 1.0
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com> <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com> <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
In-Reply-To: <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 24 Nov 2022 20:57:02 +0200
Message-ID: <CACKs7VCNh=bxV8waEPc=Gzps+0Q3xYgrX-LbB-1LBOTzdc_9eg@mail.gmail.com>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is available
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Guillem Jover <guillem@hadrons.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
        Rich Felker <dalias@libc.org>, musl@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Wed, Nov 23, 2022 at 3:16 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi all!
>
[... snipped ...]
> >
> > Not sure if it's the job of Linux man-pages to document when other
> > OSes started supporting certain APIs. That info has to be maintained,
> > updated etc. People can always read the man pages of other systems,
> > right? Maybe it's worth only pointing out when an interface is
> > Linux-only, or the Linux implementation diverges significantly.
>
> The good thing is that in most cases, it's either something in POSIX (for which
> I gon't care at all if Apple Libc or another-weirdo-libc decide to not support
> it), or it's a Linux-only function.
>
> So, there are few functions or syscalls that are generally available but are not
> in POSIX, and it might be interesting to document that they're effectively as
> portable as anything POSIX.  Maybe even POSIX editors read this and decide to
> add it.
>
> In those cases, we still need to decide what we care about or not.

Aah OK, so memmem is non-standard, there is no standard to point to.
Do other OSes provide this kind of info? I don't see anything about
portability in the OpenBSD man page (https://man.openbsd.org/memmem),
only "memmem() is a GNU extension". The FreeBSD man page
(https://www.freebsd.org/cgi/man.cgi?query=memmem&manpath=FreeBSD+13.1-RELEASE+and+Ports)
does mention Linux, but only to mention that memmem was broken in old
versions of Linux libc (nothing about current Linux); it also has the
'GNU extension' mention. Interestingly, I don't see the mention of the
function being a GNU extension in the Linux version.

Have you checked, are there many such functions? Do you plan to add
this info for all of them?

>
> Musl libc is definitely a first-class citizen these days in Linux distributions.
>   I would start documenting them in the project at large if someone from musl
> provides patches (I discussed this some time ago, but can't remember with who).
> Rich, if you would like to discuss about this, we can have some chat.
>
> >
> > For musl and other libcs, I think the man pages already document some
> > instances where their behavior diverges from glibc.
>
> As said, for musl, I'd document them officially, if there's anyone interested
> enough to send patches.
>
> For other libcs, we have to decide if they're important enough, and probably
> decide on a case-by-case basis.
>
> Michael tried to have some decent coverage of non-GNU/Linux systems, both in the
> man-pages and in his TLPI book.  It's a useful thing.  So much that sometimes
> you don't even need to read other systems' pages at all to know how portable is
> a GNU/Linux function.

I know. But not sure how much Linux docs should cover about other
OSes, which are also constantly changing (and have their own fine
docs).

As always, just my 2c,
Stefan.

>
> So, I'd like to get opinions on interest about documenting details about:
>
> - newlib (I never heard about it before; is it a widespread thing? do you think
> it's useful?)
> - Apple Libc (I still don't like it, but I must admit that it's relevant, and
> being open source, it's more palatable)
> - bionic (does anyone know if that's useful at all for anyone at all?)
>
> Support for those wouldn't go as far as musl or glibc.  For now it would only be
> for memmem(3).
>
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
