Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75E03274A0E
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbgIVUVq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 16:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726448AbgIVUVq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:21:46 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5130AC061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:21:46 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id t76so22470633oif.7
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=3Vh2SGWopujZlFhvS9agtIlAxLd5KHNPLqgTgoRUouY=;
        b=CiWDZowpdex76cA5zUjcNBxWwYC1GxB5ILKL2jdors7QcmQaiuEdAWpMrnPwfZwhxk
         xkyYK/cZdFN66RsWfUuzJQc6KKFhFQ8DVPL1+J4bHwQsoLvWjcEAHDB1wVhstFpOD4nJ
         p7AJH/QUEht0KOn3iMOTu0M1qRBhrcdYBp+V25BVLkJh57MDrZxxzaoNXRpI8gbzNsE1
         acP6/QYYOvZDE36U8wkYXiAv93Yey7df7724OyrRmdXXL4CzM9YljCBBW/BIADR+viBi
         3hbfqNMe3TyZIAQgdSw7Bdyrnd/IM12EJ0crgaqdTz6yXBlytkhfgDpNVrmv6l8qAOPK
         h0ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=3Vh2SGWopujZlFhvS9agtIlAxLd5KHNPLqgTgoRUouY=;
        b=Pq4UTgogMIu4I1XtQJAUlc28FwQOnRisUHwJk5tEHakocVo3o7SY3l//kG8PbmNj8a
         dzrWEB+1HnyYyn4/myqscBWUhQEVTL2V9dJSRuNcnZ81UNtn+wd2qkdllBsRTha8Rbsv
         9RrFDEttZc//cTptNZj57EIXZQoJbmtFiIxxwk7xeI2U4/zUlxugAaiVY2IQA1AECmuB
         tHSP+dm9omci3Lfr0Uv0uiEP8EcftyfMqC7yVQzTFWyfKkn0wNeDXFxeFPq+NqTrHE0t
         TRpOtS7ShHDCUFlmL2WR6ozi2Nchf1TgMn46LSp2A/4aEm02XakW4U0+/MB95KJ/rZs5
         3uYw==
X-Gm-Message-State: AOAM532zsqMf5MIyF7TbT3bzh+Z8ct+XWbzPok3LxmtkKSGgl3j5Qxfq
        GjxDm2hdcAO8H+BD6+PzzK9K3oFPfGAfiQtW2vI=
X-Google-Smtp-Source: ABdhPJwR1RFR4NQonnJ/dwnL1u8U1QudEcNBEve7VuZuRFUunJwE/5cdROf3lIqAs//JChIPbmGvrcyuOq8PaOYd0B4=
X-Received: by 2002:aca:2301:: with SMTP id e1mr3887399oie.177.1600806105039;
 Tue, 22 Sep 2020 13:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com> <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
In-Reply-To: <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 22 Sep 2020 22:21:33 +0200
Message-ID: <CAKgNAkiKyK6=QHoopQwBAVe6ACKY+JXGMyr4KzzXkofg560BQA@mail.gmail.com>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

Following up on your mail that I missed replying to:

On Sun, 13 Sep 2020 at 23:29, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:

[...]

> > For other types, such as timeval, timespec, etc, I don't expect
> > there are many conflicts. One case that I can think of where
> > there's a function and a struct with the same name is 'sigaction'.
> > But there's not really a problem there, since, on the one hand,
> > I don't expect that that is one of the types that should be
> > documented in system_data_types(7),
> Why not?

Well, my first thought is that the type is well documented in
sigaction(2). But, now I wonder if maybe the type should also be
documented in system_data_types(7).

[...]

> New question:
>
> I've already started and I'm writing the short description on 'time_t'.
>
> POSIX has copyright and all rights reserved, but do you think it would
> be fair use to copy descriptions such as "Used for time in seconds."?
> Or do I have to come up with a new short description?

I think quoting POSIX is fine (fair use etc.), but we must be explicit
about it, as I noted in my other mail in another thread a few minutes
ago [1].

Thanks,

Michael

[1] https://lore.kernel.org/linux-man/20200922153822.33728-2-colomar.6.4.3@gmail.com/T/#m4eeb425aca975ded062fc36ada62dc4935eb4f67
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
