Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ACD81DA4ED
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 00:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726344AbgESWrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 18:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgESWrC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 18:47:02 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97540C061A0E
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 15:47:01 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id l20so1102336ilj.10
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 15:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I89CMGh8BE3cc+a3sO6pSy8EaHj4LL1m61N4+Choy34=;
        b=zGmlZ3rIpOP1GoOnyg/8VGrWKP+jCAhbYlq6GRZN1KPD49aqUWaNPkycswA4Kpxjm6
         gNzFLu+toPoNIeyDA2hnjtXo5Xnxm5HX/yPOdYjumPGWyswmNrUS+/krwJxSjaqSnVwp
         ysLDmi5XNn/lJdud+trWdL78WvcY06i8a/puM74TgXPne3sO5GW++pO2rqJ4mfXdC0wZ
         HQXhfbxqZEIXUCYdY0hgQvPU5uKTLeBi08ld8uNG9B3CB90o6pvXWIo085cpV68lsBpC
         noiFLYo7auIS4Qwtx0yA5/VuZK2JkuE+qSbqNIGEYmxfpMeDwdXOsC9HMQBdYprD4l/W
         5EJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I89CMGh8BE3cc+a3sO6pSy8EaHj4LL1m61N4+Choy34=;
        b=jFJmTdbAKG9g/geU66JRrPPwezkXbCp9PahEmVLbvCwKJkmswGhYmmDHoIkCKHHmvL
         zKSqQzmdqHH7bhzUKJcZvSqfc02mLq+I+KGSvrdSLFqBAc4B4mJwomEcM6ZYdSUG+ZLq
         xYFPh+SEi+6h0LIuXDdq3pUfiBfcaD/2ZEIjzRJO8OEn8OJnqDmgkwKDJRxe3ZsRqQDh
         kGL4Y+gv/8FTxTRFqT/7utALx5E2xGgqTcdU70eeZs7K/VfL6OOZFcDezV821QjIb0q/
         36va9CNIpGWk3lkD6uuswaqYobGqT1yKR4M7bJwtb6B4gRraZwvtGkHydzlHW74lT9vg
         L6Eg==
X-Gm-Message-State: AOAM53246W78+Rpqu9kyzeclYmJwRT0ffQ0ZiSbV17+o0Sdhb6uvrlAs
        c+jydl0wis7NZRQTOe0NMAcmwaVHmUAZtczg5gbdQg==
X-Google-Smtp-Source: ABdhPJy42hpYrpvXUj1yGF/MVEgFANIj78YDTfkr7YniK8D6zLdspGvz+JffAjclqGBcQ6rZvEtO6a9I3bHboUigzrU=
X-Received: by 2002:a05:6e02:6c1:: with SMTP id p1mr1328854ils.181.1589928420854;
 Tue, 19 May 2020 15:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <CAKgNAkiLv-uhKdXRcY=5ihfRrTVnpoti46brBb2EXcQ4n8CFbA@mail.gmail.com>
 <CAK1hOcNGn7BwNNMkZZnm-d9OepuF+3UPxjL6u_6xjxFONENMKQ@mail.gmail.com>
In-Reply-To: <CAK1hOcNGn7BwNNMkZZnm-d9OepuF+3UPxjL6u_6xjxFONENMKQ@mail.gmail.com>
From:   Keno Fischer <keno@juliacomputing.com>
Date:   Tue, 19 May 2020 18:46:24 -0400
Message-ID: <CABV8kRxvt0EKb3VF0JKGR43Ozaujj9PB3cMx6K7e_qLoFrqemA@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Denys Vlasenko <vda.linux@googlemail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
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

> > > Further details on the layout of the compacted xsave
> > > +area may be found in the Intel architecture manual, but note that the xsave
> > > +buffer returned from ptrace will have its XCOMP_BV set to 0.
>
> I propose s/will have its XCOMP_BV set to 0/may have its XCOMP_BV set to 0/
> (future-proofing for the case that kernel may change this behavior).

Sounds good, though I would hope that this behavior change comes with some
flag to enable it :).

> > > +.IP 3.
> > > +For the given state component of interest, check the corresponding bit
> > > +in the xsave header's XSTATE_BV bitfield.
>
> "...(the 64-bit field at 512 byte offset in the area)".

applied. Will send out with v2 once I have all the comments in v1.

> > If this bit is zero, the corresponding
> > > +component is in initial state and was not written to the buffer (i.e. the kernel
> > > +does not touch the memory corresponding to this state component at all,
>
> We probably can not guarantee these "untouched" parts
> retain their contents before syscall, it's possible future kernels may zero-fill
> it - I propose to not over-promise here. How about "the contents is undefined,
> it may remain untouched, or be filled with dummy data"?

Sounds reasonable. Applied.

> > > +
> > > +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> > > +state components must first be re-set to the correct initial state for the
> > > +corresponding state component, and the XSTATE_BV bitfield must subsequently
> > > +be adjusted to match the kernel xstate component bitmask (obtained as
> > > +described above).
>
> The above paragraph needs a better wording. Are you saying the following? -
>
> "If a state component is not saved (its XSTATE_BV bit is zero) but you
> want to modify corresponding registers in the tracee, you need to set
> this bit to 1 and initialize the component to the desired state."

Kind of, what I want to get across is a warning that the following pattern:

struct iov = { ... };
ptrace(PTRACE_GETREGSET, pid1, NT_X86_XSTATE, &iov);
ptrace(PTRACE_SETREGSET, pid2, NT_X86_XSTATE, &iov);

will not necessarily result in pid1 and pid2 having identical register states.
If a state component was in its initial state in pid1, the XSTATE_BV
bit will be cleared, resulting in the registers in pid2 not being modified.
Perhaps the easiest thing is just to include this example as well as
some pseudo-code like the following:

struct user_xstateregs *buffer = ...;
struct iov = { iov_base=(uint8_t*)buffer, iov_len=... };
ptrace(PTRACE_GETREGSET, pid1, NT_X86_XSTATE, &iov);
uint64_t kernel_xmask = buffer->i387.xstate_fx_sw[0];
uint64_t active_mask = buffer->header.xfeatures;
for (int i = 0; i < XFEATURES_MAX; ++i) {
    uint64_t bit = (uint64_t)1 << i;
    if ((kernel_mask & big) && !(active_mask & bit)) {
        reset_state_component(buffer, i);
    }
}
ptrace(PTRACE_SETREGSET, pid2, NT_X86_XSTATE, &iov);

to show how to make sure that pid2 ends up with the same register
state as pid1.
