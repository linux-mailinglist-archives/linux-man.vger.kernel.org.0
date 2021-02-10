Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F600316AB9
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 17:07:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231876AbhBJQGn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 11:06:43 -0500
Received: from mailbackend.panix.com ([166.84.1.89]:63180 "EHLO
        mailbackend.panix.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbhBJQGm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 11:06:42 -0500
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
        by mailbackend.panix.com (Postfix) with ESMTPSA id 4DbPkW0PvnzWg8
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 11:05:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
        t=1612973155; bh=/hqAH2qLfoiYq6kUsPRKTyfVFK0TFBtvpPxzcOBuxDY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc;
        b=okPESA6T/y0nq7Kk/9zolCP/Vz6A8PMeM0SCHjtcsmNB+2pwOnEU454fpwr3jfwDP
         cE+T1eXiD58/7EzwasVxJ6/053hONtYWIse2Uk8FkdGAt5yO/XLmtoWv3Z5map1dYd
         hCcvyZxrJNbk5sV2Q9OXMqka5OH2O9m3C2wliaP8=
Received: by mail-ed1-f54.google.com with SMTP id c6so3669739ede.0
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 08:05:54 -0800 (PST)
X-Gm-Message-State: AOAM532GO6EG+DcrKI+ZUvdsn9yWUELAfM6lSRZWKKIQ/7yUaFBoCkZw
        Hn5c536dKQiKP2YM4Wy8z6Fd4aTeP++xZdw8PHw=
X-Google-Smtp-Source: ABdhPJwKr2ZOMOUvvB+QPnsW5nYn/dyJtvpeOE6SkmRNBKMZsftw3Eflf/eb2JSPN8oKG4tzcAN0DrGiNzPATaNkzyI=
X-Received: by 2002:aa7:c9cf:: with SMTP id i15mr3752307edt.296.1612973154107;
 Wed, 10 Feb 2021 08:05:54 -0800 (PST)
MIME-Version: 1.0
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com> <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
 <CAKCAbMgpXzH3nFyyn3fO3rjwNsG1ZBEkK89ce6r1JLPQL9oKZA@mail.gmail.com> <57071c04-e340-96d1-f21c-8e6f9691b351@gmail.com>
In-Reply-To: <57071c04-e340-96d1-f21c-8e6f9691b351@gmail.com>
From:   Zack Weinberg <zackw@panix.com>
Date:   Wed, 10 Feb 2021 11:05:43 -0500
X-Gmail-Original-Message-ID: <CAKCAbMitSQLQZX2T0z5TSBV+DBMONiEL5dmitqjQnjjmAtLraA@mail.gmail.com>
Message-ID: <CAKCAbMitSQLQZX2T0z5TSBV+DBMONiEL5dmitqjQnjjmAtLraA@mail.gmail.com>
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of STAILQ
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 10, 2021 at 10:53 AM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
> On 2/10/21 4:38 PM, Zack Weinberg wrote:
> >
> > I don't know about anyone else on the glibc team, but I personally
> > consider the entirety of <sys/queue.h> to be provided only for some
> > degree of backward compatibility with old applications that were
> > ported from BSD; new code should not use it.  I'd *like* to formally
> > deprecate it, but I expect that would cause too much breakage to be
> > viable.  Anyway, I hope you can understand why I'm not interested in
> > messing with its contents at all.
> >
> > (Can we add a statement to the effect that new code should not use
> > <sys/queue.h> to all of the related manpages, please?)
>
> Would you mind explaining your reasons for the deprecation?  Performance?

No, portability and reliability.   The contents of <sys/queue.h> are
not consistent among the various operating systems that offer it, and
some versions have outright bugs.

> What functions/macros should be used instead of the queue.h macros?

In C, I think applications are better off implementing these simple
data structures themselves.  In any other language, the standard
library probably has something built-in with a more stable and
probably also more ergonomic API.

zw
