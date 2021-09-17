Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9F0C40F3DB
	for <lists+linux-man@lfdr.de>; Fri, 17 Sep 2021 10:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230515AbhIQIOX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Sep 2021 04:14:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbhIQIOW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Sep 2021 04:14:22 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35133C061767
        for <linux-man@vger.kernel.org>; Fri, 17 Sep 2021 01:13:01 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id s16so244805pfk.0
        for <linux-man@vger.kernel.org>; Fri, 17 Sep 2021 01:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SHrO1IftuxfuaPYots9/yef0ciBJN2Gcd4tJtuVZXao=;
        b=TA7ANAVJ4wXvLDVC4aaggN6Olv6eEu7ApyG3FfORpB/huFAXn8Lj/qaEEmak79m7zo
         nIBg0L5k42qWGm0mqE9c6amSARHKFGNCLzJuFwJFRNrSPaRhf/rEu6dn0XPyNfh126rB
         BVYnzxe8PH0+6eViFwUSGSfwJBsjmVf/NN80xmxnv3UMU2AOzRY3hEygYgiEu9FQl2Uh
         +P6ggDwUvWUt6p02OHED+udnEAoPxzNf7dNJHWVu4IoUNAnf3cGR0NViQoeVlsQ3p6V5
         zIA4svMI/zEGOIUk/dSOMZLHjeGMQ4YMTQoAWa6GWPUvpLvtcR62Batft71joOiu6g+m
         u66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SHrO1IftuxfuaPYots9/yef0ciBJN2Gcd4tJtuVZXao=;
        b=Sz7j2ErqXC/rh1gQPRB1hBpnrHKgd6S7ODhQzdtuneYPOFuVpjbIbxiXD6PvGf1MAp
         mNwYE49fC6t0D1zr/0UDRtPRPoFx8TL6/NR40xGFo1zBkGP0EhqMiy2hYiJq8FPYHF15
         Q7OYbpANYan9X96JKPSsLmkBaLzmre3Uf4ToddWLci+cWZW/01wtk6aLqK9kikvspKqk
         JJQ4nN/ygj0FBLOJ5vUcf658c1qDO+da6+i1poZm1kTyG9E/54RTaEQ1kaihWZblksgl
         57H5GKx9R9pdwle2CqBJpU2PQ08oZyuE8Jk7FXfiUbGsRspmHDGZxoGS9DOONvy9aYfO
         njJA==
X-Gm-Message-State: AOAM5333D/Wvp39djAzzYpKegDcaTpLx7r7Yjc1yMVgAa7Il2/XvEajx
        SvHdB1w0eFja9hik2wA03BFZ+ACNGe5plDwwMtWS6uDN7Is=
X-Google-Smtp-Source: ABdhPJzG3ynodAX2z9+M//pxy3cFIphhBTBOwawtjugvzst25/c4v0Vcfmg0klG+b42U/G9vJRekIzbnafKqSZrCiC4=
X-Received: by 2002:a63:3383:: with SMTP id z125mr8784499pgz.40.1631866380739;
 Fri, 17 Sep 2021 01:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com> <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
In-Reply-To: <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 17 Sep 2021 11:12:49 +0300
Message-ID: <CACKs7VB6BZ876rLs69e7h1McCBLp47bk7OR4+28PMGDOc84tuw@mail.gmail.com>
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eugene,

On Tue, Sep 14, 2021 at 11:30 AM Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
>
> On Tue, Sep 14, 2021 at 2:53 AM Stefan Puiu <stefan.puiu@gmail.com> wrote:
[...]
> > Also, on FreeBSD it's quite obvious you're talking about THE library.
> > But on Linux, you have glibc, musl libc, diet libc... Is the plan to
> > document requirements for all of these? E.g link with -lm on musl
> > libc, no special flags on glibc..?
>
> I think, the split is codified in the standards[1][2][3][4][5] (so,
> -lm/-lrt are expected to be supported by the compiler, per my
> understanding, and providing the necessary -l* option will always

I think libc provides libm/librt as library files; the linker just
finds them in /usr/lib, /usr/lib64 or whatever other folder they are
installed into. So I would say it's not "supported by the compiler"
technically, but by libc.

> work, because it's codified in C standard, contrary to not providing
> one) and the fact that glibc provides libm/librt symbols in -lc is
> more akin to a bit of convenience (for application or glibc
> developers, not sure which ones), and not something one should rely
> upon.

That's assuming that the libraries adhere to those standards, I'm not
sure if that's the situation. There are also functions like backtrace
(https://man7.org/linux/man-pages/man3/backtrace.3.html) which are
extensions, and some might not be implemented in other libraries
besides glibc. Maybe the Linux man-pages should mention glibc
explicitly instead of a rather ambiguous libc? And then details about
the other libs can be added, wherever they differ.

Thanks,
Stefan.

>
> [1] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libc.html
> [2] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libm.html
> [3] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libpthread.html
> [4] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libdl.html
> [5] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/librt.html
>
> --
> Eugene Syromyatnikov
> mailto:evgsyr@gmail.com
> xmpp:esyr@jabber.{ru|org}
