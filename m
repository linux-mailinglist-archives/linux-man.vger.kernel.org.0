Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92CFE2E7776
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 10:38:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726277AbgL3JiI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 04:38:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725853AbgL3JiI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 04:38:08 -0500
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5514C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:37:27 -0800 (PST)
Received: by mail-oo1-xc29.google.com with SMTP id o5so3578701oop.12
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:37:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=xOGzbzA734HbXkWwzGRIpFzatFWA3RYw/K4TVREbK7E=;
        b=egsJ01BSdhSAEukjKnR6GUXhGvIahDShwd9QNY+Krt3C4WL5hqdIZ4G92UHMSUbq9R
         Mc0J8FO7+iBGQQNfeAI3jQa9V73F6fWXpldLJlOUpLfslkAdVWtYg37j6LYSU67w07zc
         hPUPOTnw24IYF6DDW+n049HMtYOz1lKiq+rPvquIa/SthCto8vJsj0j44k7v84ttEHAc
         yIFWZr6GqVRGPAuEDExoV+SccrntBpRE7D47Cs1SI3aR3uJCqyClK+4dJRmL1qiHwUO2
         o3WeAkDTNehOdoqKaEXKDnWt7NbcM8wlZlDlRtana2esPZc7fME8dv+MapwXHeufzBn5
         uIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=xOGzbzA734HbXkWwzGRIpFzatFWA3RYw/K4TVREbK7E=;
        b=Rh8xq0xodvLR1xKvJLgA6DbX6YySOMjUnwcXkfpSkC0fyORlASiqjUQNK9zxwY926L
         ZT0oAp2GVpp7ayltCEExSM046Wkw0dCNlkUTqcj4G4P6KUnJjyNrvRkhOsgNEZzq5/d/
         2oRMDqQdYOPeQIedawyg+U/WNs28C5kDwKjKslAqALwwbckzJC6vKx3X8LUl57ImmcZ/
         xAXsewus00MaEo+x0KCm+2tbLMM6tBGt9HqnTTuF5eN1ZqTEq4vADtXVsF14Z2zY1ZcS
         MDCf5a99+eGlF3s6+ggYpjGck2YcG+NVtehl7wDxSwSz5zveWG/IBj02ov0QEG36ASz3
         0PEw==
X-Gm-Message-State: AOAM530KWRU9CeGdmfJdwJH7XqjRFazkGORp4jXEL5BKBzE0ah44/bU7
        m12oxWVSsa7ggy4QiEFUA0DWtl62Wjm3YajrQ9RrkCsG
X-Google-Smtp-Source: ABdhPJyyY0PAk2CEpKaV3/5ST6Zpw45Zk51VJrhbAIqNBP9R/j62pi9VtfMNkmjHn7sEW5ZYt1P5I7gv4FZ/WVpA21Q=
X-Received: by 2002:a4a:e89e:: with SMTP id g30mr35621725ooe.17.1609321047117;
 Wed, 30 Dec 2020 01:37:27 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-2-alx.manpages@gmail.com> <CAKgNAkigqvTQ6Ph-ZBphuUtX+ei0R0ioqaom6-sgYjH-GZ7bnA@mail.gmail.com>
 <308ab75c-fece-c4ed-fd34-feef9898ae38@gmail.com>
In-Reply-To: <308ab75c-fece-c4ed-fd34-feef9898ae38@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 30 Dec 2020 10:37:15 +0100
Message-ID: <CAKgNAkg4a8PwUPOixx2fKTsJJva8a1FYL9i7r5gDL4v9p=yC8Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] Various pages: Normalize SYNOPSIS notes about
 non-existing glibc wrappers
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 29 Dec 2020 at 21:51, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hello Michael,
>
> A question below.
>
> Cheers,
>
> Alex
>
> On 12/29/20 9:27 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex, Ganimedes.
> >
> > In the subject line : s/non-existing/nonexistent/
>
> Ok, I'll resend in a few minutes.
>
> >
> > On Tue, 29 Dec 2020 at 15:43, Alejandro Colomar <alx.manpages@gmail.com> wrote:
> >>
> >> From: Ganimedes Colomar <gacoan.linux@gmail.com>
> >>
> >> To easily distinguish documentation about glibc wrappers from
> >> documentation about kernel syscalls, let's have a normalized
> >> 'Note' in the SYNOPSIS, and a further explanation in the page body
> >> (NOTES in most of them), as already happened in many (but not all)
> >> of the manual pages for syscalls without a wrapper.  Furthermore,
> >> let's normalize the messages, following membarrier.2 (because it's
> >> already quite extended), so that it's easy to use grep to find
> >> those pages.
> >>
> >> To find these pages, we used:
> >> $ grep -rn wrapper man? | sort -V
> >> and
> >> $ grep -rni support.*glibc | sort -V
> >>
> >> delete_module.2, init_module.2:  glibc 2.23 is no longer
> >>   maintained, so we changed the notes about wrappers, to say that
> >>   there are no glibc wrappers for these system calls; see NOTES.
> >
> > That seems fine.
> >
> >> We didn't fix some of the obsolete syscalls (create_module(2)),
> >> but if you prefer, we can fix those too.
> >
> > I think it's okay to leave it.
> >
> > The remainder of the patch looks good. The only reason that I'm not
> > applying ir yet (and fixing the subject line myself) is that I wonder
> > if the command I mentioned in response to the 0/2 mail might help you
> > find other pages to include in the patch. Let me know.
> >
> > Thanks,
> >
> > Michael
> >
> >
> >
> >>
> >>
> >> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
> >> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
> >> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> >> ---
> >>
> >> Hi Michael,
> >>
> >> Some comment:
> >>
> >>   syslog.2: Isn't the comment in SYNOPSIS wrong?
> >>         There _is_ a wrapper, which is documented just below that line.
> >>         It just has a different name.
>
> What about that?
>
> $ man 2 syslog | sed -n /^SYNOPSIS/,/^DESCRIPTION/p |sed \$d
> SYNOPSIS
>        int syslog(int type, char *bufp, int len);
>                        /* No wrapper provided in glibc */
> <<<<< I think we should remove the above comment,
> <<<<< or put it consistently everywhere else.
> <<<<< What would you do?

Yep, remove the comment.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
