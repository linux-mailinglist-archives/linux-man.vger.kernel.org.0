Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 624541F21BB
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 00:08:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726725AbgFHWIF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 18:08:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726723AbgFHWIE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 18:08:04 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68D0BC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 15:08:03 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id i25so5911358iog.0
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 15:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CNjsMdsAbgx6mHRCV+Kn49CvW8PX3XKBqQtHYkGN1d8=;
        b=Ix8qvLb1THRxAB4H002XQjejUI1QBM5zexZesPyQOPeeJoIEtG7vQtAc7fRbfQjG24
         mes9HgziWK3ncvQdAR0YDUwvY1hxtjden1u++a1kujB/SC7rXoQeJp3cd/gioXq0x86r
         d427wc5uDS7fcoAwtDymzlKRzeyrxWBWHhxw+XItJ/EH5PuIbAkyDZczQyGGR0ecrnSY
         MkmXl4pnJiWfuGwZT2MSDeqfpdDD8dgH0rU970H+740TngkWeM8PJBxkcWQs1ZJruyZU
         iQNGqtHaAAwFzqZQ297PTIqbNW2y0s5RLOx3y0uMaGQu7qCEdaRySevqHbpbLbcArmaM
         //pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CNjsMdsAbgx6mHRCV+Kn49CvW8PX3XKBqQtHYkGN1d8=;
        b=QgySL2O021GdyNDhvR6TihohJFmsoJ2OD8uwO9m6TnJZBpNlEe9iJi/Okdcg0yX/n5
         nLGkHZSsoj3kTrUS+ASjQppkbTpXlpd/PQD6Szx1Sb6DMlpUjx3fCB0s/HbVFUfrfHHy
         hKGFHts316/F0HX0vqgXz19tMO8kRs+VwGPWXg8ezZnbbooIR3ZS9GS+yOQgTflhst0V
         uPvQwadBx6yb2Uv/8CfzwMihNqULy1b5VT2lGaUdvtwPQmnJU/Ly2K1VawRm5b1iurjE
         opQzAvcklPhGWP6EBKZzKWUtfiUibvvW9gcW4N06UFSwWG6v20R3M0QBB/Vvfuev9pgA
         ihtQ==
X-Gm-Message-State: AOAM532nEUBmraHksc60yeuApx2xfX9R1rcjIMIzsjVajESNTmdxlxgz
        JtL5H9uDvyS3NFKvM9oSM40NltkeZqmunAtHfM/Aaw==
X-Google-Smtp-Source: ABdhPJyNnNz23065p8oYGGFk38i37stc81t3EkZdy2BPtqzzqlD6Lgv5l2HO8SpNiueEedFtc1CBxiAwAS6Cmd82n48=
X-Received: by 2002:a02:a91a:: with SMTP id n26mr24266960jam.104.1591654082647;
 Mon, 08 Jun 2020 15:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
 <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com> <8b8cb10d-6d53-d54e-1034-df2cca9a5442@gmail.com>
In-Reply-To: <8b8cb10d-6d53-d54e-1034-df2cca9a5442@gmail.com>
From:   Keno Fischer <keno@juliacomputing.com>
Date:   Mon, 8 Jun 2020 18:07:26 -0400
Message-ID: <CABV8kRzKL8kYQ1Ca7MRrU3JujbocXN6FYLcgmUZm+Nasq-mAVw@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Andi Kleen <andi@firstfloor.org>,
        linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

not yet - my apologies. I have a few other things I need to take care
of with higher priority, but fixing up ptrace.2 is still on my todo
list.

Keno

On Mon, Jun 8, 2020 at 11:46 AM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> Hi Keno,
>
> Any progress on a v2 patch?
>
> Thanks,
>
> Michael
>
> On 5/20/20 5:30 AM, Keno Fischer wrote:
> >>> +.SS The layout and operation of the NT_X86_XSTATE regset
> >>
> >> Should rather have a complete table of NT_* entries first. The others
> >> can be dummies for now.
> >
> > Oh boy, I'm not sure my man-page-formatting-fu is up to the task of
> > creating a nice looking table :).
> > Michael, can you help?
> >
> >>> +Obtain the kernel xsave component bitmask from the software-reserved area of the
> >>> +xstate buffer. The software-reserved area beings at offset 464 into the xsave
> >>
> >> It would be better to put some struct defining this into the kernel uapi
> >> and then reference that instead of magic numbers.
> >
> > We have user_xstateregs in the kernel, but that's not in the uapi.
> > I suppose we should move it, given that it is exposed here.
> >
> >>> +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> >>> +.IP 2.
> >>> +Compute the offset of each state component by adding the sizes of all prior state
> >>> +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> >>> +format matches that of a compacted xsave area with XCOMP_BV set to the
> >>
> >> The sizes of these areas should probably also be in the uapi include
> >
> > Yes, that seems like a good idea.
> > What's the policy on helper functions in uapi includes?
> > Can we have helper functions that given a buffer and the kernel xstate mask,
> > does this computation for you?
> >
> >>> +kernel component bitmask. Further details on the layout of the compacted xsave
> >>> +area may be found in the Intel architecture manual, but note that the xsave
> >>> +buffer returned from ptrace will have its XCOMP_BV set to 0.
> >>
> >> The note seems disconnected. You'll have to explain it here.
> >
> > Ok, I'll elaborate. The point I wanted to make is that even though the buffer
> > looks compressed, XCOMP_BV is 0, so it's not a valid compressed buffer
> > that can be xrstor'ed.
> >
> >>> +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> >>> +state components must first be re-set to the correct initial state for the
> >>> +corresponding state component, and the XSTATE_BV bitfield must subsequently
> >>> +be adjusted to match the kernel xstate component bitmask (obtained as
> >>> +described above).
> >>
> >> I wonder if we shouldn't just fix the kernel to do this properly on its
> >> own.  Presumably it won't break any existing user space.
> >>
> >> It seems more a bug than something that should be a documented ABI.
> >
> > I'd be happy to see this interface improved, since I do think it wasn't quite
> > intended to work this way when originally conceived (i.e. originally, before
> > the init optimization and before we had flags that turn off various xstate
> > components resulting in a compressed buffer).
> >
> > As I said in the other email thread, I think it would be reasonable to change
> > the offsets to always be non-compressed, which would at least make this
> > a normal xsave buffer. No ptracer that I looked at knows that this buffer
> > can be compressed, so changing the kernel behavior here would actually
> > make it closer to what existing userspace expects ;).
> >
> > I'm not sure what to do about the getregset/setregset mismatch. On the one
> > hand it's pretty bad, but on the other hand, I'm not really sure what to do
> > about it, short of introducing a different NT_X86_* constant that behaves
> > differently.
> >
> >>> +
> >>> +The value of the kernel's state component bitmask is determined on boot and
> >>> +need not be equivalent to the maximal set of state components supported by the
> >>> +CPU (as enumerated through CPUID).
> >>
> >> Okay so how should someone get it? Looks like that's a hole in the
> >> kernel API that we need to fix somehow.
> >
> > The cpuid enumerated value does still represent a maximum so that can be used
> > to size the buffer and the actual value can then be read from the software saved
> > area as described here. Is that what you were asking? Not sure I understood
> > correctly.
> >
> >
> >
> > Keno
> >
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
