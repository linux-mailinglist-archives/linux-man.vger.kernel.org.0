Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C81E267F6B
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 14:04:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725927AbgIMMEX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 08:04:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbgIMMEW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 08:04:22 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01572C061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:04:22 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id g96so12356939otb.12
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=8mJR6w4V7hCM8cwNffPPqgWC46rAw7tWUeGfi/DzI4k=;
        b=KgehFfDEFSHini4zyW1Cf2KJTUtya0D+a4XDJeCtn3UsAthsxe3ui1+VEHC+QNhEen
         NFpK2zLkk1BPta0TwvQwAUBiPuScnNAkgNBQMvo136y4t4bO35FKXjdue9eB0vTl7vFy
         /la0flX9IZjbcmlyunYmTBtFSr8NnVtembOAZVFaO+4olHZwQLL4HpdRKL2VXXHERahX
         CnS5Jh3Nkheq2lB1jLfvW50YwoXex+++TtjlSfYknNs+Qka6roYuMT1HM84Wl1d5a8nO
         Hw2d0ZbAoG+YyiFf1gxVw6wclEpxSbgqpm9zUiRlYUwsJvIO44k4czA4wLlDjGEbESxT
         sdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=8mJR6w4V7hCM8cwNffPPqgWC46rAw7tWUeGfi/DzI4k=;
        b=ngyyAPNn9h2VExjyvGIxnbajuqvnSkzqn8nxBAMCCXAKNZFxMewIkkSxzzLjNfoQD0
         QkinBrF/exi6F2GX9hrOPdo+WwycnvVeFx7jOuPq8ilac/bE764ywQpsGprVRPIn95lG
         O1fq692ecFOg0TZKaR9QKpQuba6m/SE5qwRTNGofyukal5T8889yqkwHopnJwRYjj1yR
         XvZzEKZW0EKlvILH9cLqsCEEnJQGiX3FjpRlsCbykrbH/DXk+J1hzHzmdYxt1ihYw86c
         Sv+DZleWcW7nvqgUpeWi0dIHgxNR5pspnA/29I+gHfNFHXgQgWnT7ENqjbWDJJIH2t3+
         BHZA==
X-Gm-Message-State: AOAM532AomrmWn9F3LD4Qf4/wQGjUSmUK/k4JjESdiyG5296DeW65iJN
        /qgKV6GGnH+yAQjeGUhZ9mgCQS+cTwaOo/8IYqg=
X-Google-Smtp-Source: ABdhPJzxRnb1FZlm8u9k3Cjqe/UlCH/ZJA1BDpez4SGxO0kj/OlhZn+/UJOL9gkl//ksQbEQsqJK/eCkSDU49GaBdDk=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr3500871oto.308.1599998661412;
 Sun, 13 Sep 2020 05:04:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-4-colomar.6.4.3@gmail.com> <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
 <58caefae-2952-692e-67d2-17857d84bbdf@gmail.com> <fa91c169-864f-32b2-780e-b1d30765208d@gmail.com>
In-Reply-To: <fa91c169-864f-32b2-780e-b1d30765208d@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 13 Sep 2020 14:04:10 +0200
Message-ID: <CAKgNAkhY4KcX13MJh6LL=RKKJ4uZMhV1Wubij8q_oVcVdGTAiQ@mail.gmail.com>
Subject: Re: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to
 'intmax_t' for printf()
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sun, 13 Sep 2020 at 10:12, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> On 9/13/20 8:05 AM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> >
> > On 9/13/20 7:58 AM, Michael Kerrisk (man-pages) wrote:
> >> Hi Alex,
> >>
> >> On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> >>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> >>> ---
> >>>  man3/pthread_getcpuclockid.3 | 3 ++-
> >>>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> Casting to long is the historical practive here, and should be
> sufficient,
> >> don't you think?
> >
> > Oh -- I see Jakub made a similar comment for patch 08.
> >
> > Do you want to redraft this patch too?
> >
> > Thanks,
> >
> > Michael
> >
>
> The thing in patch 08 is that the numbers were modulo very small
> numbers, and therefore very small numbers:
>
> > -    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
> > -            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
> > +    printf("%2dh %2dm %2ds",
> > +            (int) (ts.tv_sec % SECS_IN_DAY) / 3600,
> > +            (int) (ts.tv_sec % 3600) / 60,
> > +            (int) ts.tv_sec % 60);
>
> In this case it doesn't apply.

See my reply to patch 05, in a moment.

Thanks,

Michael





-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
