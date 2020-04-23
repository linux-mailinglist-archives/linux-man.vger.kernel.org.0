Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D64801B5883
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 11:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726951AbgDWJrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 05:47:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727001AbgDWJrM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 05:47:12 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50C60C08ED7D
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 02:47:12 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id n17so4215790ejh.7
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 02:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eBjF9qj4VjUI/zoZpRsdcofUh4Hml8aXIqDYnm8I2pc=;
        b=Kqsnyt0qkv6L86PfeD2KkzVB6KcD+1wQcWQMNqF6WL3KZ5iZir2mKjmxbzENryVDmR
         h2KN673yOUpiqe96og6uDdVruUvcsVVl1dfoc8u25NFe2q3KdTuW2ZaTL0u/LLsSYeNl
         S6piTbwiNJ2aGNlQCA8j4IDc0gBm31CEqEtAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eBjF9qj4VjUI/zoZpRsdcofUh4Hml8aXIqDYnm8I2pc=;
        b=fRBPON/vCMoUGgb9bU/9/839lwhuHhaufYe9RFU5nhtvA2EnuZoXrvAw9NJ0LxCS3l
         bc4ZY4havnWUbW6eDVgS/YAcXwMxSjopMqZW/LYi0vjckMEbPNoBHMHhqPtomPMYMqjD
         wrwJN9HQMIxS4LOJgXlRmIeyhHW5z5hU5yjgv/Y9UAPZONBLtxeUJu1eXWqwY17eGzuP
         QZYvAd9X6ia9TXPIVJSx7+U4niO135kUcImRZ5rKGxJTRMtdydakAZFnu777/nJ930Qw
         xSkI4T20E7p3nA2qXfE0TDT8cft0zZ0xrkvMqEudSUcgzJcQV+grJqG29mfzbXiZJ+qZ
         /yRg==
X-Gm-Message-State: AGi0PuYtmd51I3MeQ9gC9454ONxo/auZ4XOfGbyP4ZEQ4zDtdlRUwwDp
        aByCmvK5vwK+c1G3xT4dRdKl9J9R9ewbYZJufr8qjQ==
X-Google-Smtp-Source: APiQypKzYA+RwPbSzxAVe1uCnwABFW9ULWw73H2FS4WUYBmnv7bX1P0aUaDwT6A5ceIZBB1IQHhJpijAE9OUj++HWT8=
X-Received: by 2002:a17:906:c06:: with SMTP id s6mr1856032ejf.198.1587635230925;
 Thu, 23 Apr 2020 02:47:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1587531463.git.josh@joshtriplett.org> <9873b8bd7d14ff8cd2a5782b434b39f076679eeb.1587531463.git.josh@joshtriplett.org>
 <CAKgNAkjo3AeA78XqK-RRGqJHNy1H8SbcjQQQs7+jDwuFgq4YSg@mail.gmail.com>
 <CAJfpegt=xe-8AayW2i3AYrk3q-=Pp_A+Hctsk+=sXoMed5hFQA@mail.gmail.com>
 <20200423004807.GC161058@localhost> <CAJfpegtSYKsApx2Dc6VGmc5Fm4SsxtAWAP-Zs052umwK1CjJmQ@mail.gmail.com>
 <20200423044226.GH161058@localhost> <CAJfpeguaVYo-Lf-5Bi=EYJYWdmCfo3BqZA=kj9E5UmDb0mBc1w@mail.gmail.com>
 <20200423073310.GA169998@localhost> <CAJfpegtXj4bSbhpx+=z=R0_ZT8uPEJAAev0O+DVg3AX242e=-g@mail.gmail.com>
 <CAJfpegtgrUACZpYR8wWoTE=Hh4Xi+4rRfrZTxRtaFVpT9GMPjw@mail.gmail.com> <CAJfpegvcW9Sic8ZXgWfFQ3d8JTr53XABfP8rZzsVhCDBKCgMBw@mail.gmail.com>
In-Reply-To: <CAJfpegvcW9Sic8ZXgWfFQ3d8JTr53XABfP8rZzsVhCDBKCgMBw@mail.gmail.com>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Thu, 23 Apr 2020 11:46:59 +0200
Message-ID: <CAJfpegv-zRp3a3JcmCO4JpXB=f32=TK=+jP1o-peqqxffT5ERw@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] fs: openat2: Extend open_how to allow
 userspace-selected fds
To:     Josh Triplett <josh@joshtriplett.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, io-uring@vger.kernel.org,
        "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Alexander Viro <viro@zeniv.linux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Jens Axboe <axboe@kernel.dk>,
        Aleksa Sarai <cyphar@cyphar.com>,
        linux-man <linux-man@vger.kernel.org>,
        Linux API <linux-api@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 23, 2020 at 11:20 AM Miklos Szeredi <miklos@szeredi.hu> wrote:
>
> On Thu, Apr 23, 2020 at 9:57 AM Miklos Szeredi <miklos@szeredi.hu> wrote:
> >
> > On Thu, Apr 23, 2020 at 9:45 AM Miklos Szeredi <miklos@szeredi.hu> wrote:
> >
> > > > I would prefer to not introduce that limitation in the first place, and
> > > > instead open normal file descriptors.
> > > >
> > > > > The point of O_SPECIFIC_FD is to be able to perform short
> > > > > sequences of open/dosomething/close without having to block and having
> > > > > to issue separate syscalls.
> > > >
> > > > "close" is not a required component. It's entirely possible to use
> > > > io_uring to open a file descriptor, do various things with it, and then
> > > > leave it open for subsequent usage via either other io_uring chains or
> > > > standalone syscalls.
> > >
> > > If this use case arraises, we could add an op to dup/move a private
> > > descriptor to a public one.  io_uring can return values, right?
> > >
> > > Still not convinced...
> >
> > Oh, and we haven't even touched on the biggest advantage of a private
> > fd table: not having to dirty a cacheline on fdget/fdput due to the
> > possibility of concurrent close() in a MT application.
> >
> > I believe this is a sticking point in some big enterprise apps and it
> > may even be a driving force for io_uring.
>
> https://lwn.net/Articles/787473/
>
> And an interesting (very old) article referenced from above, that
> gives yet a new angle on fd allocation issues:
>
> https://lwn.net/Articles/236843/
>
> A private fd space would be perfect for libraries such as glibc.

Ah, io_uring already implements a fixed private fd table via
io_uring_register(IORING_REGISTER_FILES,...), we just need a way to
wire up open, socket, accept, etc. to fill a slot in that table
instead of, or in addition to allocating a slot in the fd_table.

Thanks,
Miklos
