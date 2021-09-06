Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 179B240218C
	for <lists+linux-man@lfdr.de>; Tue,  7 Sep 2021 02:04:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231698AbhIFX6u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Sep 2021 19:58:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbhIFX6t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Sep 2021 19:58:49 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BE2C061575
        for <linux-man@vger.kernel.org>; Mon,  6 Sep 2021 16:57:44 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso10587005ott.13
        for <linux-man@vger.kernel.org>; Mon, 06 Sep 2021 16:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=hCzMUwrpdqFGDP47LpbLh770xygrW2QsDQPx1fXxgl4=;
        b=OfBXpb2ZMS87YnrDThj4F9cRli+EOTkV+TCiTGTt/tHpRM2uEymZJBCVcX3py6Ddv2
         NIRKE54NHfQjLy4gLI9mjZ4KR3QfdLo9TTFNd+KXpLucQ3su9cfGW8U5lT4McD0q+Qr5
         YWV49KYZJmtLoNqpWFmAOHvEjVhGrSfD7uD5e6RhVTbrY0M/SqAABqI42gOfziyr9rOk
         edgWqm2eEddNlA8D+ODMX4k0YyzfT1mmP5Lj+yS06NN0UqTxCKdZ4qU58dfra1PGrGcD
         D7WxjI4Zet9i1jcxgQhqsIG7A2yIFtsDO0NfK6BffTqJRbUKQBJ/5agZKqgrPO4cTv82
         xbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=hCzMUwrpdqFGDP47LpbLh770xygrW2QsDQPx1fXxgl4=;
        b=UCuY5I5Vok9p3oODHNLcFuTaa3Z0WiJq70kb/zbUMA1TMB5TO/cQ0cDNf84TZNcpWo
         eFqNEimaW+5yWvioDUv/szJeZjep7ysZ0wNYSp3Kg37pmkIlvWhQ2JxencXX6YNtgU04
         RHrhE7bW1rGWjifYIQTPN7A6Y2Jn2+6Le0oSwx/xmjpOo0yvFbsLI14Henovctjw5+Ls
         x6vfA+5ZT/Ls1tTlSt43vb3FlzngtMNDmeFS4ZykqrkpG3BVo/JnOBzVKo9hZ9vIYnSN
         brxQMfgasW29KzXLT/D1ubvh4g7dFTTg4e6qiKQii2CLTqu69IjN4lRPPW7A++m4b3z2
         A+1w==
X-Gm-Message-State: AOAM531EvjL6kJoFTMRDETv1MFBJjutiWVtTii+3d8CdcrPGYC7NI3nE
        8LlVVyoz/yHHC8j754bXyd7vEXX6JLAiHf0IrIE=
X-Google-Smtp-Source: ABdhPJzUSH2nr5BcgfZuFxwqkHsIOIWQCM7AtqyTiK7ZZ6CWMF8qUrrSMlJjHw+dFPBCi96QX99TxhpirMIWrivTBIE=
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr12924442otf.89.1630972663737;
 Mon, 06 Sep 2021 16:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAMGmevBaX-PAuNfN6fANjipxnMO9JmnKdjTxaRVWMM78zC3mCQ@mail.gmail.com>
 <CAKgNAkjDsKw1PgHhVZSVvtWuBQDyCrqhLq8HDWh9brLm4f0_Kw@mail.gmail.com> <CAMGmevCS7SGkDDGJkHm7JzquZsUHzivG=Wuj7xJ4h-yYikfpFw@mail.gmail.com>
In-Reply-To: <CAMGmevCS7SGkDDGJkHm7JzquZsUHzivG=Wuj7xJ4h-yYikfpFw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 7 Sep 2021 01:57:32 +0200
Message-ID: <CAKgNAkgTXXtthyxue6eRb4JwSzqWH5+xUi+Euutxn_M-KFrx4Q@mail.gmail.com>
Subject: Re: Meaning of "Signed-off-by"
To:     Sagar Patel <sagarmp@cs.unc.edu>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sagar,

On Mon, 6 Sept 2021 at 17:54, Sagar Patel <sagarmp@cs.unc.edu> wrote:
>
> Thank you for the clarification, Micheal.
>
> Would it be a good idea to add this information somewhere on the
> website, or in the CONTRIBUTING file? I wasn't sure whether it was
> implied that the kernel's DCO applied to this project as well.

Good idea! I've added some text at
https://www.kernel.org/doc/man-pages/patches.html. Seem okay?

Cheers,

Michael


> On Sun, Sep 5, 2021 at 3:47 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
> >
> > Hello Sagar
> >
> > On Sat, 4 Sept 2021 at 04:29, Sagar Patel <sagarmp@cs.unc.edu> wrote:
> > >
> > > Hello,
> > >
> > > Does the man-pages project define the meaning of the "Signed-off-by"
> > > clause in a commit message? Per git-commit(1),
> > >
> > > > The meaning of a signoff depends on the project to which you're committing.
> > >
> > > But I couldn't find a reference to the meaning for man-pages. Is it
> > > the same as the linux kernel [1]?
> >
> > The intention is that the meaning should be the same as for the kernel.
> >
> > Thanks,
> >
> > Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
