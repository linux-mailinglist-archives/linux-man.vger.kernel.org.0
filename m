Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C54C1DAF9C
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 12:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726836AbgETKDu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 May 2020 06:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726435AbgETKDu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 May 2020 06:03:50 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225B4C061A0E
        for <linux-man@vger.kernel.org>; Wed, 20 May 2020 03:03:49 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id e10so2467502edq.0
        for <linux-man@vger.kernel.org>; Wed, 20 May 2020 03:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=spaqJ80GUcHxEX/QkxaIg2/TThuijD9M74IRuwM8gWQ=;
        b=hZ+b/6GR4wPQq//Qgn4kGgb9hb6REDDuFQDgJskXzA6a6JOiwrkGxuZfPU58PU8+lc
         WNAdE02TBicUNoWVaZlZTqoI9/ZXaBWvFEtEHMDz0OTb3Vo7URdERFvbkGPOwhv9JfWS
         cA6tB5x4zSvn8q1MtG9PdzoGvZK9yYiT5zRtbdqzeiy1aRPcPVeTLiBJlNxm8ScB4duW
         Di6a0F8eIMRjGLIMfSzGOROh/oF0OXpoqpGZ4wr/Iu4V9rrz6wUr8XU7bBY84V7iO21x
         HjYYDplaOAzL7nsh7QeQjnFEGmtgXIfACSEj+2VQeMqs77Xa37RcIDHhz0AueQi2e6IU
         PiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=spaqJ80GUcHxEX/QkxaIg2/TThuijD9M74IRuwM8gWQ=;
        b=XJM2FHMuVcPEPcLMrFjdcFPzHputL3ftEaS/H3Huqaq3GW8iV9uCt4mwCMz4hXE5A5
         RiiUX/ZYsWYkNr9tpOBfl+0KkGL6gQqlp5i4oHP1n6R/paaMkZSi29Ajn0RBPOsSbggu
         grrAZ6bmVgM2Sy1vRfNkYpF6Ub2wgpVwqTvUng54vpIBQpYmqgRSJf4lArJXXVmJHIjz
         9BYTGB2iuQwHBXnWE3Ke8mv7h5vHsAMAVi3kvga0R4Vmu7YqjvfWhWeia0AuBHyoPdWw
         KKT380IYya39TI+d/4zoCpRZ7bvY9WfqFAtpKnT7V+3VokiJ5vG0qnEYWBQielg3xcP3
         KMZQ==
X-Gm-Message-State: AOAM531RdLwizZ31CZ0+54gVaQbxuqU51XKfCRk56qDYszzUWhzZBv0E
        c12WuaR3xTEp/6PouOrVV/yReDX3Yy9iUwXQAvM=
X-Google-Smtp-Source: ABdhPJzCB4q2hDGJPS0eu4QVpbffJPshQd60ivo8SHUmvWi/Fb5m9SFtq9bclFBkG3KOXwfxtUxNNl9hPjFZkv0J+gw=
X-Received: by 2002:a50:e69d:: with SMTP id z29mr2742298edm.307.1589969027854;
 Wed, 20 May 2020 03:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <CAKgNAkiLv-uhKdXRcY=5ihfRrTVnpoti46brBb2EXcQ4n8CFbA@mail.gmail.com>
 <CAK1hOcNGn7BwNNMkZZnm-d9OepuF+3UPxjL6u_6xjxFONENMKQ@mail.gmail.com> <CABV8kRxvt0EKb3VF0JKGR43Ozaujj9PB3cMx6K7e_qLoFrqemA@mail.gmail.com>
In-Reply-To: <CABV8kRxvt0EKb3VF0JKGR43Ozaujj9PB3cMx6K7e_qLoFrqemA@mail.gmail.com>
From:   Denys Vlasenko <vda.linux@googlemail.com>
Date:   Wed, 20 May 2020 12:03:35 +0200
Message-ID: <CAK1hOcMLxkoT9i8TRZhV3gcD0BKiUxXoHHXEAqL2rG5ekyF3BA@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Keno Fischer <keno@juliacomputing.com>
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

On Wed, May 20, 2020 at 12:47 AM Keno Fischer <keno@juliacomputing.com> wrote:
> > > > +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> > > > +state components must first be re-set to the correct initial state for the
> > > > +corresponding state component, and the XSTATE_BV bitfield must subsequently
> > > > +be adjusted to match the kernel xstate component bitmask (obtained as
> > > > +described above).
> >
> > The above paragraph needs a better wording. Are you saying the following? -
> >
> > "If a state component is not saved (its XSTATE_BV bit is zero) but you
> > want to modify corresponding registers in the tracee, you need to set
> > this bit to 1 and initialize the component to the desired state."
>
> Kind of, what I want to get across is a warning that the following pattern:
>
> struct iov = { ... };
> ptrace(PTRACE_GETREGSET, pid1, NT_X86_XSTATE, &iov);
> ptrace(PTRACE_SETREGSET, pid2, NT_X86_XSTATE, &iov);
>
> will not necessarily result in pid1 and pid2 having identical register states.
> If a state component was in its initial state in pid1, the XSTATE_BV
> bit will be cleared, resulting in the registers in pid2 not being modified.

Wanting to set the registers to initial state is a subset of the case where
you want to set them to some state (initial or not), so my proposed
explanation covers it too.

But your example with two separate pids makes it clearer when you would
need to be aware of it even if the state you are setting is the initial one:
you need explicitly set it, can't assume just "copying" will do.

I propose:

If a state component is not saved (its XSTATE_BV bit is zero) but you
want to modify corresponding registers in the tracee, you need to set
this bit to 1 and initialize the component to the desired state.

In particular, it means that on PTRACE_SETREGSET, not saved component
does not cause corresponding registers to be re-initialized: a naive
"copy registers from pid1 to pid2":

ptrace(PTRACE_GETREGSET, pid1, NT_X86_XSTATE, &iov);
ptrace(PTRACE_SETREGSET, pid2, NT_X86_XSTATE, &iov);

will not copy register sets which are in initial state in pid1,
they will remain unmodified in pid2.
