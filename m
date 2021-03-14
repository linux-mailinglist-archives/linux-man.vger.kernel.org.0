Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E1E433A866
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 23:01:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbhCNWA7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 18:00:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhCNWAa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 18:00:30 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 084E2C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 15:00:30 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 101-20020a9d04ee0000b02901b506659320so4203959otm.7
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 15:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=8SrDohDkFh1RV5i0sSgUbdaZyZknU+rp2217Wcb8O7E=;
        b=edC1opcOAwKCZVS2Q50S7DoXsk5sUeugVht25SBd1d0idtbuNtKhQ3EGJNHJDRM9eO
         xAQYNusfOHQbZMAfL58Tw0HmLF61gPxiFufQ/7fr/Vagcsxr8awOwb32O/0Iwtbaie4o
         AavLRXRizEZbs1GfKzWso5sAe2LABYxNqvLieu4K+KAg+cAlM+IqYHrENPNgNS8WTt+R
         ZNYxU5+gOTnzQL8qs6r+UIEpc/B7M1ZOqgj0VSxx9t0Ej1C+jXKxrjILn5ZtObcJWmP3
         IS0RvOneOhA3S6rJRHHThF9aJAsZSjni5UarwnCadP3DZJMDjfPqpuoBK9esZmjlVILI
         Xf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=8SrDohDkFh1RV5i0sSgUbdaZyZknU+rp2217Wcb8O7E=;
        b=YjFSy6bW4emkCb3L7d8SxVLIuoUQjAHZxeVgGJTpyULGRad6kIxuYuJB1W3on85zNM
         gKbH/kWQt6j/rBR8Mi5x/0WeYRKmVwxQYVisFzo3iJHvkDAjU+GhpGhxGGKyAkceSJJD
         UAwmkFX59Gsg48QKq3zvOHEVQlqXD8zaNaztIK8mxoWcIcBa2h0deiO8lmupkQZra2J6
         fj4Z2KuYuPhcSk1F8SkvmGPFHoUhbk1JHaogPb5QPFImsDfch5Rh3nSU9tVXjG1aSKys
         vmnbPGVLSyRfO6pwsd+PW/4M00kJGcSYB4Br02uQqnvJgRCygdWB6UZI6Oe+tVxAWCX0
         Vzxw==
X-Gm-Message-State: AOAM533ud0L5hzRcw6lBkLj6kJrIEy1wgu9dZDNbvgB+K8Yk2ulYCUnq
        8rzQ57C2Szdj+CVSggcl014Lwp5YLjSVWMzHy0E=
X-Google-Smtp-Source: ABdhPJxEHC95b79/ksjG/LPMbT3ze+IPADZDw4yPRqU4Z15mYf9/zq13JCHgcP1UrvGd030XolLO5dR6wrpEdb5EfXU=
X-Received: by 2002:a9d:7854:: with SMTP id c20mr12696413otm.114.1615759229456;
 Sun, 14 Mar 2021 15:00:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210314160134.127878-1-alx.manpages@gmail.com> <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
In-Reply-To: <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 14 Mar 2021 23:00:18 +0100
Message-ID: <CAKgNAkj7NjNMTKct3FGOZBLfZESLDo=1Le-da41LVa-PeQ9w0Q@mail.gmail.com>
Subject: Re: [PATCH] Various pages: Remove unused <sys/types.h>
To:     Zack Weinberg <zackw@panix.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Zack,

On Sun, 14 Mar 2021 at 22:40, Zack Weinberg <zackw@panix.com> wrote:
>
> On Sun, Mar 14, 2021 at 12:04 PM Alejandro Colomar via Libc-alpha
> <libc-alpha@sourceware.org> wrote:
> >
> > The manual pages are already inconsistent in which headers need
> > to be included.  Right now, not all of the types used by a
> > function have their required header included in the SYNOPSIS.
> >
> > If we were to add the headers required by all of the types used by
> > functions, the SYNOPSIS would grow too much.  Not only it would
> > grow too much, but the information there would be less precise.
> >
> > Having system_data_types(7) document each type with all the
> > information about required includes is much more precise, and the
> > info is centralized so that it's much easier to maintain.
> >
> > So let's document only the include required for the function
> > prototype, and also the ones required for the macros needed to
> > call the function.
>
> I endorse this change.

I agree. Do you want to add an "Acked-by:"?

Thanks,

Michael

> For glibc, if the header file containing the
> function prototype doesn't also provide everything you need to call
> the function, it's a bug (except for a few cases where the relevant
> standards prevent us from doing this, e.g. a function that calls
> vprintf will need the macros in <stdarg.h>, but the C standard
> specifically forbids <stdio.h> to include <stdarg.h>).
>
> > <sys/types.h> only defines types, not functions or constants, so
> > it doesn't belong to man[23] (function) pages at all.
> > I ignore if some old systems had headers that required you to
> > include <sys/types.h> *before* them (incomplete headers),
>
> Such systems did exist in the past, but they are too old to worry
> about nowadays.  I don't think it's possible for them to be compliant
> with POSIX.1-1995, and the examples I know of personally (SunOS 4, for
> instance) were not even fully compliant with C89.




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
