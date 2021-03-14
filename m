Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B89833A84D
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 22:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233966AbhCNVkk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 17:40:40 -0400
Received: from mailbackend.panix.com ([166.84.1.89]:21433 "EHLO
        mailbackend.panix.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234065AbhCNVkf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 17:40:35 -0400
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
        by mailbackend.panix.com (Postfix) with ESMTPSA id 4DzCdt2pzKz1Dw1
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 17:40:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
        t=1615758034; bh=VH7OWqmKP1K+3Gqx0YjUL/k/ECc59WT1KiNLy3oiNRg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc;
        b=NJzjIDN0F3vVtDg0v7ezbhQMr6iKi94ePIOcKyHK+9/3DURXitMqsR684pj5A6B4K
         +7B/K+ZdD84nSkMzeZMpNU1rL1OGJ29FgYtV+r5h45PIugfN8uz+3YnN1gU4QvmDrT
         X85Ba6CZ96EiwHKjXh8tXJEDfjo+94/XgaOtvrqc=
Received: by mail-ed1-f52.google.com with SMTP id x21so15044734eds.4
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 14:40:34 -0700 (PDT)
X-Gm-Message-State: AOAM533VrJrODyhWCobdjEfo7fGtShVGbzT+BeqhostqQGgEKbxF8oom
        pbBV+UoC0DwUoNgAQ22+udXVVaeZizoEi9O8ODQ=
X-Google-Smtp-Source: ABdhPJyGc99PnGPTK9D08Ib+nUgMWPyUJMeh+YBoKHTK4EEsjqJObW5KSbhC4+YbNmWIBfpxbRuRHBGcmwhS09dbUZE=
X-Received: by 2002:aa7:db01:: with SMTP id t1mr26691060eds.77.1615758033090;
 Sun, 14 Mar 2021 14:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210314160134.127878-1-alx.manpages@gmail.com>
In-Reply-To: <20210314160134.127878-1-alx.manpages@gmail.com>
From:   Zack Weinberg <zackw@panix.com>
Date:   Sun, 14 Mar 2021 17:40:21 -0400
X-Gmail-Original-Message-ID: <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
Message-ID: <CAKCAbMiJO8gq7LoDi-iTvmqvDpwUXXnTs8ABHXvin-psyo3+QQ@mail.gmail.com>
Subject: Re: [PATCH] Various pages: Remove unused <sys/types.h>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Mar 14, 2021 at 12:04 PM Alejandro Colomar via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> The manual pages are already inconsistent in which headers need
> to be included.  Right now, not all of the types used by a
> function have their required header included in the SYNOPSIS.
>
> If we were to add the headers required by all of the types used by
> functions, the SYNOPSIS would grow too much.  Not only it would
> grow too much, but the information there would be less precise.
>
> Having system_data_types(7) document each type with all the
> information about required includes is much more precise, and the
> info is centralized so that it's much easier to maintain.
>
> So let's document only the include required for the function
> prototype, and also the ones required for the macros needed to
> call the function.

I endorse this change.  For glibc, if the header file containing the
function prototype doesn't also provide everything you need to call
the function, it's a bug (except for a few cases where the relevant
standards prevent us from doing this, e.g. a function that calls
vprintf will need the macros in <stdarg.h>, but the C standard
specifically forbids <stdio.h> to include <stdarg.h>).

> <sys/types.h> only defines types, not functions or constants, so
> it doesn't belong to man[23] (function) pages at all.
> I ignore if some old systems had headers that required you to
> include <sys/types.h> *before* them (incomplete headers),

Such systems did exist in the past, but they are too old to worry
about nowadays.  I don't think it's possible for them to be compliant
with POSIX.1-1995, and the examples I know of personally (SunOS 4, for
instance) were not even fully compliant with C89.

zw
