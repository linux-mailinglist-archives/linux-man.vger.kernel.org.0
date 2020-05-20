Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2E0D1DA894
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 05:30:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728129AbgETDaj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 23:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727029AbgETDaj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 23:30:39 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23128C061A0E
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 20:30:39 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id t15so1651319ios.4
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 20:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dwO1qVAlXNMxWl1lXiIS6Z54Qko/AqiuU4Xp+tnyRrI=;
        b=L5mf/KMhlMfvx8PhrmfW3YEhordF/lHMSKBQVuqMVQ7S/y6CpM+lrV1THd8qj2+q6g
         B/CuOdxxYTG+ZNM3+vG5+lXlMMI34j2/Vre+cBtXT905AWD2I0gkMWAxF4CxtnjdRrvn
         jacB3tdNYkYZ+DwAwu5LvFvYP6/M0F2tHgOzHF26hrVjUwMyhXQ2rUVUaLgGatCbdCFc
         x+pwWZoilZ6F3jdEesuz3teCvAKSN6cpf6oNl2PzOX5Zh2DgAfvBC80+FMPcBH3Sn1KI
         AQQiwU9DEjRkJPa/Z83vbMUJG3AQIY//m3S+RJ0o6kzAvLQOaHsB9QffeSehFzTzCImE
         Ee0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dwO1qVAlXNMxWl1lXiIS6Z54Qko/AqiuU4Xp+tnyRrI=;
        b=qih9Q3rWHW1KQRNbJ1a4FuNB9SexnJj0w8kxK4dRNGA+i5++tB5T0YQQbJOftiABvs
         N2onBNH7s6+Rs60xhasq/+BcOTIqGSu2YAJyWsr/6QNBnsa+9Ni6KePw2fm4WwSQXGF5
         vovxDtYDO7p56J3wzf8/omRQKJbcEXv+BzYQs66SqbqpUroBMH3IT/4+x9Q9Wgb7CbMo
         S8IqFQy75KeD6jh3eU+i4+EuI+rIL8UXaUlaRYDPMY9UE3gIpn7i3KMXGJKZzWKa9LRZ
         XVSC8rUga1/bMRckcCga4a5CpPkywGGbWl4OC2AY7bdEoiODOqol8VGKldMMjhc1CLQN
         sFiQ==
X-Gm-Message-State: AOAM532kKcJbq1QMw18cOEOQblecE1rOaIJp7io3QLftAP8z+M/0xKiz
        dKzSARv3tNI1Z46C1nD2EJinIjEpSQvVrPI/TqFPNQ==
X-Google-Smtp-Source: ABdhPJzhA2mbZa4KQkmrsz38QFL/QglQSowwFm+WlFWuXzewt6Wxuy4pUb/iP4KstTqFBo8NYJcsuSfiThVQhNTL/j8=
X-Received: by 2002:a02:4446:: with SMTP id o67mr2622600jaa.25.1589945438260;
 Tue, 19 May 2020 20:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com> <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
In-Reply-To: <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
From:   Keno Fischer <keno@juliacomputing.com>
Date:   Tue, 19 May 2020 23:30:02 -0400
Message-ID: <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Andi Kleen <andi@firstfloor.org>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
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

> > +.SS The layout and operation of the NT_X86_XSTATE regset
>
> Should rather have a complete table of NT_* entries first. The others
> can be dummies for now.

Oh boy, I'm not sure my man-page-formatting-fu is up to the task of
creating a nice looking table :).
Michael, can you help?

> > +Obtain the kernel xsave component bitmask from the software-reserved area of the
> > +xstate buffer. The software-reserved area beings at offset 464 into the xsave
>
> It would be better to put some struct defining this into the kernel uapi
> and then reference that instead of magic numbers.

We have user_xstateregs in the kernel, but that's not in the uapi.
I suppose we should move it, given that it is exposed here.

> > +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> > +.IP 2.
> > +Compute the offset of each state component by adding the sizes of all prior state
> > +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> > +format matches that of a compacted xsave area with XCOMP_BV set to the
>
> The sizes of these areas should probably also be in the uapi include

Yes, that seems like a good idea.
What's the policy on helper functions in uapi includes?
Can we have helper functions that given a buffer and the kernel xstate mask,
does this computation for you?

> > +kernel component bitmask. Further details on the layout of the compacted xsave
> > +area may be found in the Intel architecture manual, but note that the xsave
> > +buffer returned from ptrace will have its XCOMP_BV set to 0.
>
> The note seems disconnected. You'll have to explain it here.

Ok, I'll elaborate. The point I wanted to make is that even though the buffer
looks compressed, XCOMP_BV is 0, so it's not a valid compressed buffer
that can be xrstor'ed.

> > +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> > +state components must first be re-set to the correct initial state for the
> > +corresponding state component, and the XSTATE_BV bitfield must subsequently
> > +be adjusted to match the kernel xstate component bitmask (obtained as
> > +described above).
>
> I wonder if we shouldn't just fix the kernel to do this properly on its
> own.  Presumably it won't break any existing user space.
>
> It seems more a bug than something that should be a documented ABI.

I'd be happy to see this interface improved, since I do think it wasn't quite
intended to work this way when originally conceived (i.e. originally, before
the init optimization and before we had flags that turn off various xstate
components resulting in a compressed buffer).

As I said in the other email thread, I think it would be reasonable to change
the offsets to always be non-compressed, which would at least make this
a normal xsave buffer. No ptracer that I looked at knows that this buffer
can be compressed, so changing the kernel behavior here would actually
make it closer to what existing userspace expects ;).

I'm not sure what to do about the getregset/setregset mismatch. On the one
hand it's pretty bad, but on the other hand, I'm not really sure what to do
about it, short of introducing a different NT_X86_* constant that behaves
differently.

> > +
> > +The value of the kernel's state component bitmask is determined on boot and
> > +need not be equivalent to the maximal set of state components supported by the
> > +CPU (as enumerated through CPUID).
>
> Okay so how should someone get it? Looks like that's a hole in the
> kernel API that we need to fix somehow.

The cpuid enumerated value does still represent a maximum so that can be used
to size the buffer and the actual value can then be read from the software saved
area as described here. Is that what you were asking? Not sure I understood
correctly.



Keno
