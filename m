Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F227301419
	for <lists+linux-man@lfdr.de>; Sat, 23 Jan 2021 10:16:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726032AbhAWJQb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jan 2021 04:16:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726539AbhAWJQS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jan 2021 04:16:18 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60722C06174A
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 01:15:36 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id w124so8950445oia.6
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 01:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=OS2joqGZkJDGxgyHKo455IMdsizDv5loL+X12nsNJaY=;
        b=Xq6O/1kpKdhb+oeAZqDWWqjvxe3fjHIJEcKY+3bTMqX5K8goLCoHVJQLE3Uc/EThFA
         uKHVAPk3IJ98HMhR5zaFkZw4AjhBNotEDNrasBgO5b6wGZBNOjK/grPGRX3k+kbRXrZd
         4wwNkRBr3NU/KHmQgFI3MEfCON9FpjAEjQFu+otDit3NUorLP9RBbT6bf/jZ7B9Wozxb
         d+nx4Us4AqZ/owDDILrlI74sHjNFQpOLHeWQAt4S33Nwztk6gway9jocRFzUuuR+hUzk
         tvEHbRhUJEi9AKi4hmG5CquEGxgIKetOJ3WtaHRDDSC1BlkvRqwz6OH2GcUkNL3/Msax
         tOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=OS2joqGZkJDGxgyHKo455IMdsizDv5loL+X12nsNJaY=;
        b=CqW9gocu/4qMyt2qnhioEnizcFtI3p0rELUAAKkPgeUoJrHTKD0rLJi7INGpHpZYKZ
         b9f14Lz3EXcMaSwg7qxBqDpj57pSCLGS4unsEm+GFmqLVpGe+N/Ej8zeWfoqGGzZG0v4
         TJ3Qtn9FWyqFJMybruwA3u6B43wIyfj+BafP0e7jrAzl4NVqwhg1ZmK2W4JIb/ZDm8gJ
         4RCRSXAG3i5LbRO53U1Jat2BR5rm2b/5XqHLUKwJRc/efhChtb1NB8J3/mN+9nDxtKul
         S45SL5Qvct66ILcjXucBUUXLmTBFPW/m7+EPS9nvBt5MwVaPUvtOyWzChQ9SD05A2j4R
         NtSQ==
X-Gm-Message-State: AOAM53074CJdTpVDnzDsuEZ1t5/x3Xu91q9iqAm+SiDMpGjxoZD0dUrR
        1bcnTQ22VrZjhxtYpKk96tw2amn9gkFLzoQYqBk=
X-Google-Smtp-Source: ABdhPJzomI4OVFluGQqWZCiJWAltZkeb+m1sxVYavxo+A2QFpXPlJtZHFmjWYCsizHfdY3UWVu4Vgr8RgD1ZGkJ9JbY=
X-Received: by 2002:aca:48c6:: with SMTP id v189mr5888938oia.177.1611393335481;
 Sat, 23 Jan 2021 01:15:35 -0800 (PST)
MIME-Version: 1.0
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <b5c59c50-3d98-8835-0c26-90fa6bfaf08b@gmail.com> <CAKgNAkhHLw2gwrnquOq8nbFSoydkSyoWivgeHrh2CH4QY3PdDg@mail.gmail.com>
 <bdc24ecd-bb92-5d9a-4461-f3d3640f6457@gmail.com>
In-Reply-To: <bdc24ecd-bb92-5d9a-4461-f3d3640f6457@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 23 Jan 2021 10:15:24 +0100
Message-ID: <CAKgNAkga9D8iY-iZXJAh80NcjpyOb4ZMikiivMT6wEmKy31uDA@mail.gmail.com>
Subject: Re: Ping: [PATCH] posix.py: ffix: Correctly format URIs
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 22 Jan 2021 at 19:19, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> On 1/22/21 4:13 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> >
> > On Fri, 22 Jan 2021 at 13:37, Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:

[...]

> >>> That was a very interesting read.
> >>> I got why you tend to use "xxxx (xxxx.)" and not "xxxx (xxxx).",
> >
> > Sorry... I don't understand what you are referring to in the previous line.
>
> It has happened already a few times that you corrected a patch of mine
> (or you corrected the corrections I sent to others' patches), because of
> using "... foo)." and you changed it to be "... foo.)" (see
> <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>) as an example).

I don't know what the reference you cite resolves to...

> >>> the latter being _much_ more common in Spanish (and other languages)
> >>> (actually, I've never read the former in Spanish).
> >>
> >> Hey Michael,
> >>
> >> Ping!
> >>
> >> I'm still very interested in knowing your thoughts about the Hacker
> >> Writing Style from the Jargon File, and more specifically about the
> >> so-called `new' or `logical' quoting method[1].  Especially you being
> >> both a hacker and a writer :-).
> >>
> >> [1]: http://www.catb.org/jargon/html/writing-style.html
> >
> > So, I regard the Jargon File and HWS as no real authority on anything,
> > and I'm not even sure we should refer to them in a manual page. Much
> > of the writing there is rather polemical. But, that said...
> >
>
> I don't regard it as an authority either, and yes, it's unnecessarily
> polemical, but there are still some entries that have some useful
> information, like this one about the different quoting methods, IMHO.

[...]

> > Like many programmers, I find the Logical Style, ahhh, logical. And in
> > a fixed-width font, the visual argument for putting periods and commas
> > inside the quotes (the American style) doesn't apply. The
> > counterargument is that in most every other aspect, man-pages follows
> > American conventions.
>
> For that counterpart I'd argue an easy one: we already made some
> rational exceptions, such as s/dgment/dgement/ ;-).

I knew you'd do that ;-).

> > I imagine that in man-pages there's a mix of both styles, since I'm
> > not sure if I've ever taken care about this.
> >
>
> Yes, there is.
>
> > So, what to do... Given that man-pages are primarily rendered to
> > fix-width displays, and the confusion that can sometimes occur in a
> > technical context if following the American style, I would not oppose
> > switching everything British/Logical style.
> >
> > Maybe others have opinions to offer.
>
> I strongly vote for the European quoting method, for logical reasons.
> Pun intended :-).

I'm okay with making the switch to Logical Style.

> >> BTW, I should remind myself to fix the link in uri.7.
> >
> > I'd be inclined to remove the URL. Mention of the Logical Style in
> > Hart's rules and the British style is good enough, I think.
>
> I'm not against keeping the link, but I wouldn't oppose a removal either.

I removed it.

Thanks,

Michael
