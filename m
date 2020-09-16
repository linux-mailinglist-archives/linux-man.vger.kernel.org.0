Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCEDC26C64F
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 19:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727396AbgIPRpL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 13:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726884AbgIPRoz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 13:44:55 -0400
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 651A7C06121D
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 04:00:34 -0700 (PDT)
Received: by mail-oo1-xc41.google.com with SMTP id t3so1535349ook.8
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 04:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=+LktgfZVmMrV3QnN8hzXp04EDsZZiMBtoKKSgMnQx48=;
        b=mNhxikRm6RgAstI0fTHEdshJ9glH5AMJlQrWa2NRc6V43pwEs9NzlXlRhcKPo5sUAX
         vHR6IRjtvQRZXCiVNgrP9fkEQOG0XYW93n6FHhjKe9kf3Auwp0GeOJJ+ei8cDZiSHIgv
         kqIK4K1O5EIP9i5qBmM/N0X0rBIsV5l2/pF5VlbJ2mK6xepd70DQDgKl6Akr481QmX6a
         PjkSLbZ6j6v8KkgqAC4XWwGjkjhdJxEQ/dKPSO8ysPvlqBLBYjjXKbqy3b/+aEt8+jIL
         j3TJC2IMENB/DTW4az6BrGPk1ZFVYUJ8vBtr/hkUGyAk9Df6Z4Wzo77GzIrV9Z+B3YnH
         e0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=+LktgfZVmMrV3QnN8hzXp04EDsZZiMBtoKKSgMnQx48=;
        b=mseM3Iq9QGxdCJ4HNBo7p2Uz4md0I6i6nhWppwj/qJ3eWP9fjL8NF4CByMtuAfIhxg
         DFqq9vPRKMBTl69093YEPL1S4OvoscbpR3cxrjInWRs9UwqPjMlpM0QOtDK4keuNnn5/
         O1LTIah5XKgXT0Gg08CvBJNwm5LnO4I6swHhOdUH+OxkwXEtzwBjFvJPwloQ+dq3Cs2L
         mA+lnvrsM72s858r260jf/4FCpr7JYq3Zz4P4paVfjogsdx9y6RezBZyW1KSspQIh5kH
         6zOQJQ+xmw5Fi2aoLsqI77WXQTfECgU7SEOTcOydrWAamj684IRZdE39riXj7+cUqCLz
         Gs0A==
X-Gm-Message-State: AOAM532ANrW6bP1D8Kt6Dk5S8SC7U0R0U/AQin4QjNzg+NmEnD3CAPRc
        7BBdQOtmuX9dizn+WTiFkaNt5Zm3BlxAhTafvA0=
X-Google-Smtp-Source: ABdhPJzO3TIhegibdZY0n7cBDPuqoPKyjhXA89oQGxeQpQzJmeu2+6UtXXbu9pGS0Cj6tWPeFuiIR/Rj5+WCBictAmE=
X-Received: by 2002:a4a:8dd5:: with SMTP id a21mr17260562ool.17.1600254033635;
 Wed, 16 Sep 2020 04:00:33 -0700 (PDT)
MIME-Version: 1.0
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915133306.35033-1-colomar.6.4.3@gmail.com> <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
 <Pine.BSM.4.64L.2009160057420.11260@herc.mirbsd.org> <79018b23-d4d3-4524-d49a-9cf18b9008aa@gmail.com>
 <20200916100649.GA476613@if>
In-Reply-To: <20200916100649.GA476613@if>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 16 Sep 2020 13:00:22 +0200
Message-ID: <CAKgNAkjhxgGCPrtB8QCgnNvJQLNBJ1SzwcR_4_VKaz_fsqwD7A@mail.gmail.com>
Subject: Re: [RFC v4] system_data_types.7: Document sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec & timeval
To:     "Andries E. Brouwer" <Andries.Brouwer@cwi.nl>
Cc:     Thorsten Glaser <tg@mirbsd.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Jakub Wilk <jwilk@jwilk.net>, libbsd@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andries,

It's kind of you to reply; thank you!

On Wed, 16 Sep 2020 at 12:06, Andries E. Brouwer <Andries.Brouwer@cwi.nl> wrote:
>
> On Wed, Sep 16, 2020 at 10:03:13AM +0200, Michael Kerrisk (man-pages) wrote:
> > [CC += AEB]
> >
> >> Michael Kerrisk (man-pages) dixit:
> >>
> >>>> +.\" %%%LICENSE_START(VERBATIM)
> >>>> +.\" Permission is granted to make and distribute verbatim copies of this
> >>>> +.\" manual provided the copyright notice and this permission notice are
> >>>> +.\" preserved on all copies.
> >>>> +.\"
> >>>> +.\" Permission is granted to copy and distribute modified versions of this
> >>>> +.\" manual under the conditions for verbatim copying, provided that the
> >>>> +.\" entire resulting derived work is distributed under the terms of a
> >>>> +.\" permission notice identical to this one.
> >>>> +.\"
> >>>> +.\" Since the Linux kernel and libraries are constantly changing, this
> >>>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> >>>> +.\" responsibility for errors or omissions, or for damages resulting from
> >>>> +.\" the use of the information contained herein.  The author(s) may not
> >>>> +.\" have taken the same level of care in the production of this manual,
> >>>> +.\" which is licensed free of charge, as they might when working
> >>>> +.\" professionally.
> >>>> +.\"
> >>>> +.\" Formatted or processed versions of this manual, if unaccompanied by
> >>>> +.\" the source, must acknowledge the copyright and authors of this work.
> >>>> +.\" %%%LICENSE_END
> >>
> >> I severely object.
> >
> > The "verbatim" license has been the most widely used license in
> > manual pages, almost since the inception of the project 27 years
> > ago. (Currently more than half of the pages carry this license.)
> >
> > I don't know the origin of the license (perhaps AEB does),
>
> Digging through old sources reveals:
>
> I started maintaing man-pages in 1995.
> My first release was man-pages-1.6.
> That release contained 245 man pages with the above license.
>
> The first release that had the above license was man-pages-1.4,
> released Sep 1994 by Rik Faith.
> It contained 234 man pages with the above license.
> man-pages-1.4.Announce describes that there are now
> 238 pages with "verbatim copying" and
> 41 pages with "GNU General Public License".
>
> Earlier, man-pages-1.3 (released Jun 1994) by Rik Faith had
> messy copyright statements or nothing at all, and Rik Faith made
> for 1.4 a serious attempt at providing each page with a proper license.
>
> So, this text came from Rik Faith.
> It mentions "this manual page", so was probably written
> especially for this manpage collection.

Thanks for the insight. I had noticed that the license wasn't there
right at the start, but that it appeared very soon afterwards. It
hadn't occurred to me that perhaps Rik might be the author of the
license.

> You might ask him for further details.

I tried a few times over the years to contact Rik on other matters,
but either I was using the wrong channels, or he didn't reply. I'll
try again via another channel.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
