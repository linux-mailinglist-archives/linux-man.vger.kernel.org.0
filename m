Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B632316B73
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 17:40:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232490AbhBJQjj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 11:39:39 -0500
Received: from mailbackend.panix.com ([166.84.1.89]:17372 "EHLO
        mailbackend.panix.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232596AbhBJQhm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 11:37:42 -0500
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
        by mailbackend.panix.com (Postfix) with ESMTPSA id 4DbQQ96QZjzZ87
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 11:36:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
        t=1612975009; bh=UxVCLMdoUqv4rYBe5w3zWvKDRZ1jOcZaGqysV2PHlTA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc;
        b=QntaG3/Hq7t4D/x1GeVauN/isdL7Pb2T026A83EUMG/AST1hHiSZQoblgIWi9KlJO
         XFlaa22npNbMFCNbou9gRHmkcOe9no8kV7xCW46bpgg6w69i3ypJESBoFABdJwWoe0
         CLsR1UNmilmE8KVI5HDffiZlbsSimrKbA9QQ0ojI=
Received: by mail-ej1-f43.google.com with SMTP id hs11so5359724ejc.1
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 08:36:49 -0800 (PST)
X-Gm-Message-State: AOAM530uUI9QIi1DiyEhPc3nhh7IjUI2VNQRYh1xNv4WOLNK0fWF2H77
        +PkTrKmHzw/TRClYduqVJA+9kbU3RTWFP7GmeIU=
X-Google-Smtp-Source: ABdhPJxG7ziVpCrtuZf5BpN2xgV4p9QR6C72OCxny0iRWhPbj60YzT8M0FhalhDawhlgAZgGNKHJ30GBS6T6K6axbRg=
X-Received: by 2002:a17:906:6095:: with SMTP id t21mr3754574ejj.384.1612975008883;
 Wed, 10 Feb 2021 08:36:48 -0800 (PST)
MIME-Version: 1.0
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com> <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
 <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com>
 <57071c04-e340-96d1-f21c-8e6f9691b351@gmail.com> <CAKCAbMitSQLQZX2T0z5TSBV+DBMONiEL5dmitqjQnjjmAtLraA@mail.gmail.com>
 <23e5f038-19e0-f326-0f6b-81e3c7953293@gmail.com>
In-Reply-To: <23e5f038-19e0-f326-0f6b-81e3c7953293@gmail.com>
From:   Zack Weinberg <zackw@panix.com>
Date:   Wed, 10 Feb 2021 11:36:37 -0500
X-Gmail-Original-Message-ID: <CAKCAbMikiKcGVHFrFrfWx-6ap5t4O7YYHYEf9kw8Zp93HOZiUQ@mail.gmail.com>
Message-ID: <CAKCAbMikiKcGVHFrFrfWx-6ap5t4O7YYHYEf9kw8Zp93HOZiUQ@mail.gmail.com>
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of STAILQ
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 10, 2021 at 11:24 AM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 2/10/21 5:05 PM, Zack Weinberg wrote:
> > On Wed, Feb 10, 2021 at 10:53 AM Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >> On 2/10/21 4:38 PM, Zack Weinberg wrote:
> >>>
> >>> I don't know about anyone else on the glibc team, but I personally
> >>> consider the entirety of <sys/queue.h> to be provided only for some
> >>> degree of backward compatibility with old applications that were
> >>> ported from BSD; new code should not use it.  I'd *like* to formally
> >>> deprecate it, but I expect that would cause too much breakage to be
> >>> viable.  Anyway, I hope you can understand why I'm not interested in
> >>> messing with its contents at all.
> >>>
> >>> (Can we add a statement to the effect that new code should not use
> >>> <sys/queue.h> to all of the related manpages, please?)
> >>
> >> Would you mind explaining your reasons for the deprecation?  Performance?
> >
> > No, portability and reliability.   The contents of <sys/queue.h> are
> > not consistent among the various operating systems that offer it, and
> > some versions have outright bugs.
>
> About portability, I guess you are referring to the fact that some
> systems don't provide some of the newest macros?  Such as OpenBSD not
> providing SIMPLEQ_LAST()?
>
> But for those that offer macros of the same family (with the same name),
> I guess they all offer the same interface, don't they?

I don't remember specific details anymore -- the troubles I had with
it were going on ten years ago now -- but based on experience
tinkering with user space applications and libraries that tried to use
queue.h, missing macros were unpredictable and varied, and macros with
the same name did *not* reliably provide the same interfaces.

> About bugs, I don't know which, but considering that the BSDs use these
> macros, I guess they'll fix whatever new bugs they find.

The trouble here is that the BSDs' unified source tree means that they
can and do address problems by changing all *their* users to avoid the
bug, rather than fixing the bug in the header.  (This may sound
ridiculous but I've seen it happen dozens of times and not just with
sys/queue.h.)  glibc doesn't have that luxury -- but that means code
developed on Linux becomes unportable by virtue of not having to avoid
bugs that are present on the BSDs.

> If you need to have a high performance linked list, yes, probably it
> pays off writing your own.  But for a prototype or some code that isn't
> critical, having a libc interface that already provides (somewhat
> standard) linked lists is great, IMHO.

Again, it's about correctness, not performance.  I just don't *trust*
sys/queue.h.

zw
