Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D66883777E1
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 19:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbhEIR7S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 13:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbhEIR7R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 13:59:17 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6803EC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 10:58:13 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id q7-20020a9d57870000b02902a5c2bd8c17so12438398oth.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 10:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=aSnjE5JveMCTeQALKDidQ4r7GgKoFbXKo7Vp+H2wO8Q=;
        b=ml/dY624AczGQA6G9JAYY3rknW/6yJuJcovNg6jt95Ki8e9aTCStjgrbPDM46AAtZE
         soivx33xSMQDVNBos4tkc89OSOJlKiIPFQwy3B2S13XIthnrpNVFT55WnVfkI8/8KXof
         bfQNB6e0srZzeQ0Lvv+HwMxQxycYwnom1E6FLjrWHH1NzesbbaOL90zuUwP6jJJs6Kaz
         +L9UAh3wqXUHo0svM4w2DA2m7HV4YxDjIRSGnQEGX2TRiUhcGnzMN4fzS00YvTNAzIBg
         XxNp88flWUci6LsMzHiBq8dx/eZ9NclhYlSB6LDdw3qaF+VpN7y6vyKvJHhAEkV0+Jqn
         DoKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=aSnjE5JveMCTeQALKDidQ4r7GgKoFbXKo7Vp+H2wO8Q=;
        b=CwyEl3wGEMFgTtjOf7sToWKD4Qkh9cJbSkn8/NVBvl9A5hNUcTlyINdAAjhbL5p4j9
         fzUP4ODnEugwPV7Mcrj+ajfcR7fei5X+X5yFujjQhx+2jGlopTKPFAV9cS6r0+WGJouQ
         Fwy2CfM+f+5DExpznuTBlI7F7XEu5ZZ9wKmWPGDfjS4QcA0rxxk7r6NCzz/Sst3w3Jgy
         fVeMFUFQd79mFxTpkzIpCnHQRgxfYFfMd+HwSPeD+VG+ii09rFUqBdssNHO7GbUUW56o
         H7bjQVElt8mOfTZGNpoptbiOT3rDWb/epW7fm9qlUntbpAdOPvyFSa/71qH2uE+uxfmk
         VLBw==
X-Gm-Message-State: AOAM532kP9LlVZtiuGUHgADJuWmW3Rmu3S5FMl99N4S2NxZ6RCdvo99/
        XlMoMRIfoUxauCIfLCqiyaDq4lRuTKwEd8PkmEM=
X-Google-Smtp-Source: ABdhPJzFBKRONpXDsrs+bK/JNVqWP0EYPTQkWUKNOkVGzhdZ1MUCTk8SZWiM45dBBITF28W32bysYFYycgam96VS5Rg=
X-Received: by 2002:a05:6830:a:: with SMTP id c10mr8166387otp.114.1620583092848;
 Sun, 09 May 2021 10:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <1621111620246345@mail.yandex.ru> <9068beb3-70a7-ad96-e260-f53a886d622c@gmail.com>
 <1492841620310804@mail.yandex.ru> <CAKgNAkgbJBM5yiOtq9X-Ber+ns_8xcp-8jr7rSYLanz+HnQWXw@mail.gmail.com>
 <alpine.LNX.2.20.13.2105092008010.5297@monopod.intra.ispras.ru>
In-Reply-To: <alpine.LNX.2.20.13.2105092008010.5297@monopod.intra.ispras.ru>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 10 May 2021 05:58:01 +1200
Message-ID: <CAKgNAkhFQ_p98zBusCS5ycxrKjvzmGbdGw0fuTybWz2JaL239w@mail.gmail.com>
Subject: Re: Bug reporting
To:     Alexander Monakov <amonakov@ispras.ru>
Cc:     Dave Chupreev <cdn.dev@yandex.ru>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Roland McGrath <roland@hack.frob.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALexander,

On Mon, 10 May 2021 at 05:20, Alexander Monakov <amonakov@ispras.ru> wrote:
>
>
>
> On Mon, 10 May 2021, Michael Kerrisk (man-pages) via Libc-alpha wrote:
>
> > Hello,
> >
> > On Fri, 7 May 2021 at 02:21, Dave Chupreev <cdn.dev@yandex.ru> wrote:
> > >
> > > Well I see, I've tried on Linux and yea I didn't find any option to insert multiple definitions.
> >
> > I think the only way to insert multiple definitions is by direct
> > manipulation of 'extern char **environ'.
>
> You can cause a program to start with multiple definitions, because it is
> possible to pass arbitrarily funny stuff as 'envp' argument to execve, such as:
>
> - duplicated entries
> - entries without a '='
> - entries starting with '='
> - empty strings
> - "2 x 2 = 4"
>
> All of that will be present in the exec'd program's environment array.

Yes. I was too focussed on thinking about what an already running
program can do to its current environment. Thanks for reminding me of
the above.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
