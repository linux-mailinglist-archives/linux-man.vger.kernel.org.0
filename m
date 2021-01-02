Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C50A2E885C
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 21:00:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726686AbhABUAA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 15:00:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726659AbhABT77 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 14:59:59 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26A04C061573
        for <linux-man@vger.kernel.org>; Sat,  2 Jan 2021 11:59:19 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id n42so22462147ota.12
        for <linux-man@vger.kernel.org>; Sat, 02 Jan 2021 11:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=RyWtwWeL9fQNh1BXgjZ3cFPxW5VK7O8i4+IEqpCcwC0=;
        b=E6a1gvF5gwruvoMyCr4hAd68AdGNJpyT3K2sgUXOuI1O0RN/iLGGtOyN8FoUJov5Jc
         7wT/dZLBWhqFoSG+5qA77xBdBH2OY0uXPkxXL0w4sspj7/ukOJvLyzenaNoqLtc+Hhou
         0nxqYYfm4HeTpBRNCQl5B45mH7bLcLPL31bdVZWQP9jgMwDFz5ksKrD76YHz66mM3Au+
         ABwcL5JjQpyZV5LcI7TBibjOrLkg20V2nUP+WiB2Q8vpidLEhlSiJ6RqlM5nqMgqlHFn
         /u6FVSD8Aj7O0Pfw9lO6cTeojzxwVDJxuEcoVFbhioahHajMp1bgQXnmbguseiEOA0M5
         r3fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=RyWtwWeL9fQNh1BXgjZ3cFPxW5VK7O8i4+IEqpCcwC0=;
        b=fVyX97b82nJ3eXjb74MwD7cCJpevzwd+aBOTfFbNnip5W6YLLBgxpX6F2OTG6Vq/bM
         ddYY+abulA5fxNqoe1qMub7UkP/1KqpXcr8PflBZw46O1JP1F1rVdXFCMdgVEpWa8YCf
         TaiXH4p8tmiLb/WmKBVofDeHCJL6WtWsq2ca995eqiu+ZyDOJsXIl4gug+/CFAOD8ZOA
         Rb4QGs3y5JlvE7M7dPe3eL9BKygYcFcEjkJ3OtgjKEemkkVBEhiZpoTcXUzbadS0UpNv
         l/21vkS776PSpbUGchuv0WroPBb3LS3IgwYmOIqoWLv1Epu2ZEgZPe1rcspjPkdhsfsE
         kyFQ==
X-Gm-Message-State: AOAM531FjNKRIUnLIcC8NxVTF5r9853xuOw2Zo621ji0qojvO8yAMbes
        OMAnwZe70BYTcpZLTTTpVyGSwQPj9BiekvRtVLbGEEO0
X-Google-Smtp-Source: ABdhPJx7QVVBNVl0Ct0YxyqgBdAS28EUqA4Y3kLX0fSrsTFi/75UHohvuPxxreuZhvM10J9fUPdWtcefssZJL2p4krE=
X-Received: by 2002:a9d:5e0f:: with SMTP id d15mr29446447oti.308.1609617558615;
 Sat, 02 Jan 2021 11:59:18 -0800 (PST)
MIME-Version: 1.0
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com> <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com> <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com> <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
 <4611ff34-2322-1e66-7b14-dc61200404f9@gmail.com> <8c66c28d-2ff1-b629-33f9-df057998f80e@gmail.com>
 <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
In-Reply-To: <40f1140a-496b-5b2b-c1de-4522b1ea5043@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 2 Jan 2021 20:59:07 +0100
Message-ID: <CAKgNAkiUZoV1aE10=6ehkqCKwpzrmbYt_fTjGGBEGi9=HZh7Gg@mail.gmail.com>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

HI Alex,

On Sat, 2 Jan 2021 at 17:04, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> On 1/1/21 11:29 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> [...]>>>> login.3: group
> >>
> >> ffix!!
> >
> > Done.
> >
> >> The following may help:
> >>
> >> $ for p in $(git grep -l '.SH SYN' man?); do \
> >>      echo "=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D $p"; \
> >>      man -l $p  2> /dev/null \
> >>      |sed -n '/^SYNOP/,/DESCR/p' \
> >>      |sed '/Feat/,$d'; \
> >>   done \
> >>   |grep '); *[a-zA-Z_]' \
> >>   |grep -v -e 'Note:' -e NOTES;
> >>        int brk(void *addr); void *sbrk(intptr_t increment);
> >>        set);  ssize_t  pwrite(int  fd,  const  void *buf, size_t
> >>        long a64l(const char *str64); char *l64a(long value);
> >>        double fmax(double x, double  y);  float  fmaxf(float  x,
> >>        float  y);  long  double fmaxl(long double x, long double
> >>        void  login(const struct utmp *ut); int logout(const char
> >>               place the result(s); inproc is used to encode  the
> >>               dress  of  where to place the result(s); inproc is
> >>               ter(s); procname should return a  pointer  to  its
> >>               static result(s); inproc is used to decode the pa=E2=80=
=90
> >>               RPC socket(s); rdfds is the  resultant  read  file
> >>        int wordexp(const char *s, wordexp_t *p, int flags); void
> >>               sp,MAXUN.UNSIGNED ); where MAXUN.UNSIGNED  is  the
> >>                                     (SIGEV_THREAD_ID); Linux-specific =
*/
> >
> > Thanks. I fixed a few things.
> >
>
> wordexp.3 is still broken.

Thanks. Fixed now.

> >>>> I didn't read past that.
> >>
> >> Still I didn't read past that :)
>
> Later I'll have a look past there :)

That would be great!

Cheers,

Michael
