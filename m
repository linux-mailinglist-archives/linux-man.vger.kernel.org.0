Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB0D4011E3
	for <lists+linux-man@lfdr.de>; Mon,  6 Sep 2021 00:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238259AbhIEVyZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 17:54:25 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:22698 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235142AbhIEVyZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 17:54:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1630878801;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=gH0aR6V8CutNTeTqdlPalyzCVz7bHlK1sKygXEnImqg=;
        b=RYeCpPxfuZVIk/wDV+Ede7JYZPS7Hr+YzddFU7BMJIxyiE0ANfF7hEK7/I2INHUzgvJayo
        q8jcxveXlkC7Qe9e4nNRaKNZUX8lG8n5umxTDGgL5wSQTyrpNBwBNtl3fQ79BuRojPtvIB
        PSaYdrOUo4bkMwVGNW8PytWBxsr+YKE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-M-a3LoBSPqq5J7PuabRWww-1; Sun, 05 Sep 2021 17:53:17 -0400
X-MC-Unique: M-a3LoBSPqq5J7PuabRWww-1
Received: by mail-qt1-f200.google.com with SMTP id x28-20020ac8701c000000b0029f4b940566so8000858qtm.19
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 14:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gH0aR6V8CutNTeTqdlPalyzCVz7bHlK1sKygXEnImqg=;
        b=cvtEzpHR7gpaOLPrdSsXBxc+B6ATDEZ5fa9LqCsTCcVWTBgXSxJ88Ipcgr03QANrsH
         SKsmzUljsC7ZL6BJBquHeo1ZK0N5i5WvbTtrfJEdHlR7Kr8U+Y4NSb/bePnmfoDGj45V
         TYe2r+4yNOM6S3zFFx9htT1V6T6lXzIT8FcYLBW3/Ad+rDFUmGUSClssDfCBVLBMe2UI
         JIgUQpl1zW+2W8fW9vDDjCiZePKa2iK+7AfNoOLsyNdZuRAc3LE8ai6wKNGnzKfuQTUX
         fXWh0+6MOMmJMasASzicNjvG83O5cn4PJlw2gJM6B44US7sF3zWaKiLBr57YMU85qWy4
         7rKQ==
X-Gm-Message-State: AOAM531niZ7swKIfbJOJJocTNuAMv29jIerMJWjkKgX4bX9T9MNXNMXw
        dcRXHkzedLmnMpLh42uqNmaprAB1t8YTEP3A8+F5wex+GON/vLRHvz7VnhYvLv8kNmf9X/qK17G
        lyDyAQ5cMtCzVL5Z6MVvMbv5jKMm7sjvM6Vid
X-Received: by 2002:a0c:e790:: with SMTP id x16mr9499598qvn.6.1630878797432;
        Sun, 05 Sep 2021 14:53:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvkVVgjPk2U1gSqAAd6GYMLq8tmxhZILtZOo9MeVHN2xZ0h0sP6uJbaoYnkPUee6hzuu8NzRIia0eEEXeBUUY=
X-Received: by 2002:a0c:e790:: with SMTP id x16mr9499590qvn.6.1630878797175;
 Sun, 05 Sep 2021 14:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210905132542.245236-1-alx.manpages@gmail.com> <20210905132542.245236-2-alx.manpages@gmail.com>
In-Reply-To: <20210905132542.245236-2-alx.manpages@gmail.com>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Sun, 5 Sep 2021 17:53:06 -0400
Message-ID: <CAC1cPGy9hwwbSuGvsneg+ePar3rgiv7Oz3Gff4RALr+wdf-kZg@mail.gmail.com>
Subject: Re: [RFC v3 1/9] LICENSES/GPL-1.0-or-later.txt, many pages: Use SPDX markings
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Sep 5, 2021 at 9:25 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> To simplify understanding which license applies to each file,
> let's use SPDX markings, which are simple, informative, and
> commonly used in many projects.
> Let's also follow REUSE <https://reuse.software/> conventions.
>
> I assime GPL-1.0-or-later is the closest thing to GPL_NOVERSION_ONELINE,
> which I couldn't find anywhere.

That's pretty unlikely what any contributor to these files intended,
but maybe harmless. But the inclusion of the GPL version 1 text (the
logic of which I understand, given the desire to follow REUSE)
emphasizes the awkwardness. If this were my project, I'd probably just
recast these as GPL-2.0-or-later (which is generally understood to be
permissible). Socially, I think by the early years of the kernel, GPL
version 1 was largely forgotten, and "the GPL" had come to mean GPL
version 2, or in some contexts GPL version 2 and (for a long time)
hypothetical future versions of the GPL.

One other thing:

> -.\" Copyright 1995-2000 David Engel (david@ods.com)
> -.\" Copyright 1995 Rickard E. Faith (faith@cs.unc.edu)
> -.\" Copyright 2000 Ben Collins (bcollins@debian.org)
> -.\"    Redone for GLibc 2.2
> -.\" Copyright 2000 Jakub Jelinek (jakub@redhat.com)
> -.\"    Corrected.
> -.\" and Copyright (C) 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
> -.\"
> -.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
> -.\" Do not restrict distribution.
> -.\" May be distributed under the GNU General Public License
> -.\" %%%LICENSE_END
> +.\" SPDX-FileCopyrightText: 1995-2000, David Engel <david@ods.com>
> +.\" SPDX-FileCopyrightText: 1995, Rickard E. Faith <faith@cs.unc.edu>
> +.\" SPDX-FileCopyrightText: 2000, Ben Collins <bcollins@debian.org>
> +.\" SPDX-FileCopyrightText: 2000, Jakub Jelinek <jakub@redhat.com>
> +.\" SPDX-FileCopyrightText: 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>

I haven't followed what the kernel has been doing around use of SPDX
expressions in source files for a long time. Is it now routinely
replacing original copyright notices with these SPDX-FileCopyrightText
statements? Without permission from the authors, this feels
questionable to me, as (in theory) this could have some sort of
unexpected legal consequence or violate the expectations of the
authors. In at least some cases, the original copyright notice might
be a formally valid copyright notice under US law (or perhaps, less
likely I think, the law of some other jurisdiction) while the
transformed version wouldn't be. To be sure, it's unlikely to matter
for various reasons, but I just hope someone has thought about this.

Ah, I also see that the SPDX speaks of SPDX-FileCopyrightText :
https://spdx.github.io/spdx-spec/appendix-IX-file-tags/

But in the examples there, it looks like the hypothetical original
copyright notice is preserved and just gets "SPDX-FIleCopyrightText"
prepended. Here you're transforming the original copyright notice into
a "date, name" string.

Richard

