Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F30A21DA72C
	for <lists+linux-man@lfdr.de>; Wed, 20 May 2020 03:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728258AbgETB13 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 21:27:29 -0400
Received: from one.firstfloor.org ([193.170.194.197]:60872 "EHLO
        one.firstfloor.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgETB13 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 21:27:29 -0400
X-Greylist: delayed 503 seconds by postgrey-1.27 at vger.kernel.org; Tue, 19 May 2020 21:27:28 EDT
Received: by one.firstfloor.org (Postfix, from userid 503)
        id 7331186866; Wed, 20 May 2020 03:19:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=firstfloor.org;
        s=mail; t=1589937541;
        bh=dFXPNpA3dq4Y0zzpC9DibjXPxh/joB9TBb0/ZLQF6UE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=xu2KSWxtHzXXuad83WxcV50u7W4Y/lWvuutsiY/s+zuf61s2kx1qCk81QTUwD5x8X
         OGNc4Kga/BzM2g9aUkdUINEHH1qBaqaqvY+eCykC+8XCvHUB5utjLLL8/apsfaznSv
         z/LQ+q8S7Hq7FPcOycL1pjiCL0mhbCXy8A9bYfxM=
Date:   Tue, 19 May 2020 18:19:01 -0700
From:   Andi Kleen <andi@firstfloor.org>
To:     Keno Fischer <keno@juliacomputing.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Andi Kleen <andi@firstfloor.org>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
Message-ID: <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
References: <20200518030053.GA72528@juliacomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200518030053.GA72528@juliacomputing.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 575062971..57958119b 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -2322,6 +2322,63 @@ result, to the real parent (to the real parent only when the
>  whole multithreaded process exits).
>  If the tracer and the real parent are the same process,
>  the report is sent only once.
> +.SS The layout and operation of the NT_X86_XSTATE regset

Should rather have a complete table of NT_* entries first. The others
can be dummies for now.

> +On x86(_64), the values of extended registers can be obtained as an xstate buffer,
> +accessed through the NT_X86_XSTATE option to
> +.B PTRACE_GETREGSET.
> +The layout of this area is relatively complex (and described below). It is
> +in general not safe to assume that a buffer obtained using
> +.B PTRACE_GETREGSET
> +may be set back to any task using
> +.B PTRACE_SETREGSET
> +while resulting in a task that has equivalent register state (see below for
> +details). It is also not safe to assume that the buffer is a valid xsave area
> +that may be restored using the
> +.I xrstor
> +instruction, nor is it safe to assume that any extended state component is
> +located at a particular fixed offset. Instead the following algorithm should be used to
> +compute the offset of any given state component within the xsave buffer:
> +.IP 1. 3
> +Obtain the kernel xsave component bitmask from the software-reserved area of the
> +xstate buffer. The software-reserved area beings at offset 464 into the xsave

It would be better to put some struct defining this into the kernel uapi
and then reference that instead of magic numbers.

> +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> +.IP 2.
> +Compute the offset of each state component by adding the sizes of all prior state
> +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> +format matches that of a compacted xsave area with XCOMP_BV set to the

The sizes of these areas should probably also be in the uapi include

> +kernel component bitmask. Further details on the layout of the compacted xsave
> +area may be found in the Intel architecture manual, but note that the xsave
> +buffer returned from ptrace will have its XCOMP_BV set to 0.

The note seems disconnected. You'll have to explain it here.

> +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> +state components must first be re-set to the correct initial state for the
> +corresponding state component, and the XSTATE_BV bitfield must subsequently
> +be adjusted to match the kernel xstate component bitmask (obtained as
> +described above).

I wonder if we shouldn't just fix the kernel to do this properly on its
own.  Presumably it won't break any existing user space.

It seems more a bug than something that should be a documented ABI.

> +
> +The value of the kernel's state component bitmask is determined on boot and
> +need not be equivalent to the maximal set of state components supported by the
> +CPU (as enumerated through CPUID).

Okay so how should someone get it? Looks like that's a hole in the
kernel API that we need to fix somehow.

> +
>  .SH RETURN VALUE
>  On success, the
>  .B PTRACE_PEEK*
> -- 
> 2.25.1
> 
