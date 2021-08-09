Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC85D3E41F8
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 11:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234061AbhHIJCa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 05:02:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234085AbhHIJC3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 05:02:29 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC21FC0613CF
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 02:02:08 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id be20so3691439oib.8
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 02:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=wo+qc87Uy3jRgc6WnTXn+ty/u+Fnx55YTbnjcFCCGig=;
        b=cNBdWRzn7YhCA7KC/J5ZQOCvZnrZOZ96v8nC8qBXs/iqa3A/c1Q+xpXPjfXyUuhHsc
         FByPg425C48EHbAUH6GxL44pArHIL5uCc9acYYIDhc4+QMzeT63tfhWZfIZHOG4yAkgN
         wcaCfvPKz+3kX+dYtooTmnOv05ZjNDB9HM2MXCaGvoW7Lu+RpMlJZ557+Iz82Qwi2IMe
         ojWqC8by+WGW9x1f3dAB+vUdtAhOzSTCpVqJ0RgDJzsf4tkYaTgh0fK3heko0Wx4HSgj
         z12tYnRJ05URCnrN5N7nkutrWM8QRn0/lolKy0tEuKDTlGiSIat7XCZhyhtrDxpbv5X5
         yLqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=wo+qc87Uy3jRgc6WnTXn+ty/u+Fnx55YTbnjcFCCGig=;
        b=EUdtM/jKskE9EW0bf0F6+WCnIvyPO9IDvRVdtbUnsS7cGneb+ZVa6/1i7feoXsX1ar
         VfRt9QzrzGRMVFU4CWHdyCD3jN2UKq3yeEGW0qAmW6v9N/4W+HE8tRfDaeqaaF4KaA9T
         XRt2EDAc/nCsL6wNH9kTibRRQAkLouwu95dVRKj4+C9eUPTTHFwM3PCJ/HOBnkV+GdJL
         +BaAlEu8cH0Bmayc5CNqocFICWw8KO0IYyRzy5GvNaBpZJbtqTD1mfgVJJEsOCpTdOuW
         3JfApIWYo9Xk7Q76Wv28XSUM4Y1bvbAdt6HWSb5sn0MTpmHKTKekbfv8P7crTnhs+em5
         lMSg==
X-Gm-Message-State: AOAM531uzE0pOJLztxjRvvIdTeI7vrGgBlHnuOJmiQvyTsK0A3ZKADJG
        +Yjgv8YBaqYaX/h8202yDGr1dBJmMb2bK7GWUbw=
X-Google-Smtp-Source: ABdhPJxX+YcXZQiKx4VQtb8h9OzbA3XHeyAjZztdGnBgONLIWozR0+kIGEBUr/YMcE/sMq2yk7vistHUEWqgT6MAu+8=
X-Received: by 2002:a05:6808:250:: with SMTP id m16mr3080719oie.148.1628499728187;
 Mon, 09 Aug 2021 02:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-7-alx.manpages@gmail.com> <8560b628-c57e-eff6-ee59-34ac12d2b74d@gmail.com>
 <87wnovxcev.fsf@kurt>
In-Reply-To: <87wnovxcev.fsf@kurt>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 9 Aug 2021 11:01:56 +0200
Message-ID: <CAKgNAkitJinAd-0ieypmuTOOJKpTf8Xqmv__EQFfUX0zbSOyPw@mail.gmail.com>
Subject: Re: [PATCH 06/23] futex.2: Document FUTEX_LOCK_PI2
To:     Kurt Kanzenbach <kurt@linutronix.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 9 Aug 2021 at 10:14, Kurt Kanzenbach <kurt@linutronix.de> wrote:
>
> Hi Michael,
>
> On Mon Aug 09 2021, Michael Kerrisk (man-pages) wrote:
> >> +.IP
> >> +If
> >> +.I timeout
> >> +is not NULL, the structure it points to specifies
> >> +an absolute timeout.
> >> +If
> >> +.I timeout
> >> +is NULL, the operation can block indefinitely.
> >
> > The above is the same as FUTEX_LOCK_PI, right? So, it
> > probably doesn't need repeating.
> >
> > I've reworked this description to be:
> >
> >        FUTEX_LOCK_PI2 (since Linux 5.14)
> >               This operation is the same as FUTEX_LOCK_PI, except that
> >               the clock against which timeout is measured is selectable.
> >               By default, the (absolute) timeout specified in timeout is
> >               measured againt the CLOCK_MONOTONIC clock, but if the
> >               FUTEX_CLOCK_REALTIME flag is specified in futex_op, then
> >               the timeout is measured against the CLOCK_REALTIME clock.
> >
> > Is it okay?
>
> Sounds good.

Okay. Thanks.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
