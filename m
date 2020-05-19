Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B025B1DA39B
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 23:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726651AbgESV3w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 17:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725998AbgESV3w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 17:29:52 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9302C08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 14:29:51 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id n24so763780ejd.0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 14:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+hFzg76uPMUINhzIOoOlJJ9Pdfv4uRDysVWm/PH56ak=;
        b=OrNxaZE+4O66sZ3jU8sqOjV1uABYl8imia0xEpSwOHzkajj4HZgmMjYG6JhWYp4IF6
         YT1O3J1N7WqXyUk6HzUiScKKK492csj2qVQVY4AuM5EEhtp2RVrdGYSKacn7HXpu8WpP
         fgM+oS3BB28X7VxVpZThq5HqbYvVn9YItdvYpntfOwmlE+E/yb5brCmfAdCfLQQaTsYm
         JK6Qgy/k/cBW+8WBsOgDZThc5l8n6ghTPfIhdN2ayRQMwa/ot/vT1Wdxf0ukmlJ2Cq2X
         7CVWSp2Pd3lrcmq22PSUVjcyfCgmZ+nI7B/eqkbBXlGEnlP89eT1CTxdwHoytGUdKSaM
         NMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+hFzg76uPMUINhzIOoOlJJ9Pdfv4uRDysVWm/PH56ak=;
        b=nehJZU6E/V73bCYDl+duJ4PNeDVZ30jPoc51DCasXhvecE9wQJStvxB4iYyBxacMof
         gCWMzmsmIWnAEQngD4qJcYsayDELE2nBtGb2arJE49w7ZHKNeNSbgyJvS7Bvws5gqrvN
         57wd7xrR7UqBgJbQD/GKsXhm/XqhAtkWP64huNfCGiu03UMtV3oM9J2uIO0lcA8yo2uO
         UWVIQAU0GcUq9q+N6oP1X+ot1j+pMPcwnVfB8Pq7Dg9V1LCnv+y+dg7eWqZuh7ONvs1H
         2CccUNtYJ2eum0NcdkS+nfvWOQbBGzYNK9SOrIFqKOq0uch279Qqa97/KftQWYqnmNx9
         MWkg==
X-Gm-Message-State: AOAM5324sscJCf8BZT2Kt5i6fgw0iFjN6C+YfY+OjHS4sNkdXaFAdGz3
        a2zxRVqzfogWVeX++zruRGLllcRwEobfCkpHK48=
X-Google-Smtp-Source: ABdhPJzTSXQM4cr2GNCkgJQHOKnt2eOyRxXdlwZqjFd7K8KBE8x59d9p6HV5YFu2LgTLyKg2zUCOehsLKJfqKziJTC4=
X-Received: by 2002:a17:906:1b48:: with SMTP id p8mr978531ejg.399.1589923790542;
 Tue, 19 May 2020 14:29:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <CAKgNAkiLv-uhKdXRcY=5ihfRrTVnpoti46brBb2EXcQ4n8CFbA@mail.gmail.com>
In-Reply-To: <CAKgNAkiLv-uhKdXRcY=5ihfRrTVnpoti46brBb2EXcQ4n8CFbA@mail.gmail.com>
From:   Denys Vlasenko <vda.linux@googlemail.com>
Date:   Tue, 19 May 2020 23:29:38 +0200
Message-ID: <CAK1hOcNGn7BwNNMkZZnm-d9OepuF+3UPxjL6u_6xjxFONENMKQ@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Keno Fischer <keno@juliacomputing.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Andi Kleen <andi@firstfloor.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, May 19, 2020 at 10:44 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> [CC += Denys, since he's had a lot of input to ptrace(2) in the past,
> and perhaps might also have a comment to this patch]
>
> On Mon, 18 May 2020 at 05:00, Keno Fischer <keno@juliacomputing.com> wrote:
> >
> > Correctly using the result of this operation is quite hard,
> > because the layout is not fixed and depends on the kernel
> > configuration. Furthermore, because of the initial state
> > optimization, parts of the layout may be missing. If ptrace
> > users are not careful, it is easy to get unexpected results.
> > This documents everything I know about how to use NT_X86_XSTATE
> > "correctly". This should probably have been documented earlier,
> > since every single ptrace application I looked at gets this wrong
> > in one way or another, but hopefully having documentation will at
> > least help future users cover the relevant corner cases.
> >
> > Signed-off-by: Keno Fischer <keno@juliacomputing.com>
> >
> > ---
> > I'm hoping this will help. I recently had occasion to read up on
> > how this actually works (finding I, too, had used it incorrectly),
> > for patch in https://lkml.org/lkml/2020/4/6/1161. I'm cc'ing the
> > folks who took part in that review here, since I think they would
> > be interested in making sure the status quo is adequately documented.
> > Please let me know if I got anything wrong, or if anything is confusing.
> >
> >  man2/ptrace.2 | 57 +++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >
> > diff --git a/man2/ptrace.2 b/man2/ptrace.2
> > index 575062971..57958119b 100644
> > --- a/man2/ptrace.2
> > +++ b/man2/ptrace.2
> > @@ -2322,6 +2322,63 @@ result, to the real parent (to the real parent only when the
> >  whole multithreaded process exits).
> >  If the tracer and the real parent are the same process,
> >  the report is sent only once.
> > +.SS The layout and operation of the NT_X86_XSTATE regset
> > +On x86(_64), the values of extended registers can be obtained as an xstate buffer,
> > +accessed through the NT_X86_XSTATE option to
> > +.B PTRACE_GETREGSET.
> > +The layout of this area is relatively complex (and described below). It is
> > +in general not safe to assume that a buffer obtained using
> > +.B PTRACE_GETREGSET
> > +may be set back to any task using
> > +.B PTRACE_SETREGSET
> > +while resulting in a task that has equivalent register state (see below for
> > +details). It is also not safe to assume that the buffer is a valid xsave area
> > +that may be restored using the
> > +.I xrstor
> > +instruction, nor is it safe to assume that any extended state component is
> > +located at a particular fixed offset. Instead the following algorithm should be used to
> > +compute the offset of any given state component within the xsave buffer:
> > +.IP 1. 3
> > +Obtain the kernel xsave component bitmask from the software-reserved area of the
> > +xstate buffer. The software-reserved area beings at offset 464 into the xsave
> > +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> > +.IP 2.
> > +Compute the offset of each state component by adding the sizes of all prior state
> > +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> > +format matches that of a compacted xsave area with XCOMP_BV set to the
> > +kernel component bitmask. Further details on the layout of the compacted xsave
> > +area may be found in the Intel architecture manual, but note that the xsave
> > +buffer returned from ptrace will have its XCOMP_BV set to 0.

I propose s/will have its XCOMP_BV set to 0/may have its XCOMP_BV set to 0/
(future-proofing for the case that kernel may change this behavior).

> > +.IP 3.
> > +For the given state component of interest, check the corresponding bit
> > +in the xsave header's XSTATE_BV bitfield.

"...(the 64-bit field at 512 byte offset in the area)".

> If this bit is zero, the corresponding
> > +component is in initial state and was not written to the buffer (i.e. the kernel
> > +does not touch the memory corresponding to this state component at all,

We probably can not guarantee these "untouched" parts
retain their contents before syscall, it's possible future kernels may zero-fill
it - I propose to not over-promise here. How about "the contents is undefined,
it may remain untouched, or be filled with dummy data"?

> > +the start offset next active state component will not be affected unless
> > +the bit is also missing from the kernel component bitmask obtained in step 1).
> > +The initial state for any state component is defined in the Intel architecture manual (for
> > +most state components it is the zero state).
> > +.PP
> > +
> > +In particular, the third of these considerations results in a buffer that does
> > +not round-trip through
> > +.B PTRACE_SETREGSET.
> > +If a given state component is missing from the XSTATE_BV bitfield, it will
> > +be ignored by
> > +.B PTRACE_SETREGSET
> > +even if the corresponding register in the target task is currently not in
> > +initial state.
> > +
> > +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> > +state components must first be re-set to the correct initial state for the
> > +corresponding state component, and the XSTATE_BV bitfield must subsequently
> > +be adjusted to match the kernel xstate component bitmask (obtained as
> > +described above).

The above paragraph needs a better wording. Are you saying the following? -

"If a state component is not saved (its XSTATE_BV bit is zero) but you
want to modify corresponding registers in the tracee, you need to set
this bit to 1 and initialize the component to the desired state."

> > +
> > +The value of the kernel's state component bitmask is determined on boot and
> > +need not be equivalent to the maximal set of state components supported by the
> > +CPU (as enumerated through CPUID).
