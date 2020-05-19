Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAE2E1DA303
	for <lists+linux-man@lfdr.de>; Tue, 19 May 2020 22:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726489AbgESUoO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 May 2020 16:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726178AbgESUoO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 May 2020 16:44:14 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C6BCC08C5C0
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 13:44:14 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id se13so562609ejb.9
        for <linux-man@vger.kernel.org>; Tue, 19 May 2020 13:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Qergd1FU9N8uaRahOQV2RRXVMuCX1OYCzaQTfT8Dh98=;
        b=jQWmleXgcS3ar4/qavadZOJPua7pIVcS/Wm/SlJFIYUrGQ+cQwDMfmkFjeM+2GpluE
         4GY2jovB3SJEQ6Co9HhNbfti2IS3L51TdT0Q0dEqIxwz6ui2eEmDgxalat9y91lqJLEr
         hbt5E2TXLaUW9b0dabIVt0HgsIcm3EMbRnZaKeOcxEPojcIdxX1H80c+rowIF/XlxLer
         6XN57dQYoYoKj9aniVizbWJxZAmOVI1Bv0jSIxItOYnD15cKf5p/emwtWNKUJNkD2qmy
         mv5nIatYfw2LGciS8unz8deR8TzbrIr37T+Id352H4OFGGiW3EDmZ9Gjjr93uCyfTCAX
         5NUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Qergd1FU9N8uaRahOQV2RRXVMuCX1OYCzaQTfT8Dh98=;
        b=NmyJujYTOzEECVLid+fnKhUvsHx1bXWdwZjWYQlPibXGO0Uoe/FActsgU5uhXNxtYA
         fN8Jtn9LwF76bQJGBwcAYdlvuNRRpPAXOzziX/j2Ph1s7Pw/NM3Neh+5TUpkbEUFCvzq
         AyXld3TOZtx1x7CD6AH2LwRLGhf94QzR4qD6ZVgUMg7Emee3ClEn/Q+7n6Xc8hf45Ccm
         Qa/WTHrJHJ8fDFa03tJTggwxVdHZRPiMzeBIhlKN4HjUx1KQXE2jFbQ5cpi6dziKnWZD
         AqVuEvJ5j2az+O7WYYvPRiBfeG7Mn5/pUHZA6lp1e6Iryu5Sov5qNj54Qbou/XQ1TdXL
         r++w==
X-Gm-Message-State: AOAM532jPbsGvLlyFkmHHWtTylFmBfpC6wftXIxGaBhtKUP+a+rpDr+s
        CqsZAnzrrnNO2kaJHR1a13TGSG91LcXXpNuFA1FLaO7r
X-Google-Smtp-Source: ABdhPJyOVn7leqgWUuRrFiHGSEs+3xHXfN2N1SV5H2/5ggjaNMHfL1UDEHokejUXu8yVkh7zEdlwuYzBrhPjvD1zEsQ=
X-Received: by 2002:a17:906:51b:: with SMTP id j27mr939528eja.246.1589921052470;
 Tue, 19 May 2020 13:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200518030053.GA72528@juliacomputing.com>
In-Reply-To: <20200518030053.GA72528@juliacomputing.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 19 May 2020 22:44:01 +0200
Message-ID: <CAKgNAkiLv-uhKdXRcY=5ihfRrTVnpoti46brBb2EXcQ4n8CFbA@mail.gmail.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Keno Fischer <keno@juliacomputing.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Andi Kleen <andi@firstfloor.org>,
        Denys Vlasenko <vda.linux@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Denys, since he's had a lot of input to ptrace(2) in the past,
and perhaps might also have a comment to this patch]

On Mon, 18 May 2020 at 05:00, Keno Fischer <keno@juliacomputing.com> wrote:
>
> Correctly using the result of this operation is quite hard,
> because the layout is not fixed and depends on the kernel
> configuration. Furthermore, because of the initial state
> optimization, parts of the layout may be missing. If ptrace
> users are not careful, it is easy to get unexpected results.
> This documents everything I know about how to use NT_X86_XSTATE
> "correctly". This should probably have been documented earlier,
> since every single ptrace application I looked at gets this wrong
> in one way or another, but hopefully having documentation will at
> least help future users cover the relevant corner cases.
>
> Signed-off-by: Keno Fischer <keno@juliacomputing.com>
>
> ---
> I'm hoping this will help. I recently had occasion to read up on
> how this actually works (finding I, too, had used it incorrectly),
> for patch in https://lkml.org/lkml/2020/4/6/1161. I'm cc'ing the
> folks who took part in that review here, since I think they would
> be interested in making sure the status quo is adequately documented.
> Please let me know if I got anything wrong, or if anything is confusing.
>
>  man2/ptrace.2 | 57 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 575062971..57958119b 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -2322,6 +2322,63 @@ result, to the real parent (to the real parent only when the
>  whole multithreaded process exits).
>  If the tracer and the real parent are the same process,
>  the report is sent only once.
> +.SS The layout and operation of the NT_X86_XSTATE regset
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
> +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
> +.IP 2.
> +Compute the offset of each state component by adding the sizes of all prior state
> +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
> +format matches that of a compacted xsave area with XCOMP_BV set to the
> +kernel component bitmask. Further details on the layout of the compacted xsave
> +area may be found in the Intel architecture manual, but note that the xsave
> +buffer returned from ptrace will have its XCOMP_BV set to 0.
> +.IP 3.
> +For the given state component of interest, check the corresponding bit
> +in the xsave header's XSTATE_BV bitfield. If this bit is zero, the corresponding
> +component is in initial state and was not written to the buffer (i.e. the kernel
> +does not touch the memory corresponding to this state component at all,
> +the start offset next active state component will not be affected unless
> +the bit is also missing from the kernel component bitmask obtained in step 1).
> +The initial state for any state component is defined in the Intel architecture manual (for
> +most state components it is the zero state).
> +.PP
> +
> +In particular, the third of these considerations results in a buffer that does
> +not round-trip through
> +.B PTRACE_SETREGSET.
> +If a given state component is missing from the XSTATE_BV bitfield, it will
> +be ignored by
> +.B PTRACE_SETREGSET
> +even if the corresponding register in the target task is currently not in
> +initial state.
> +
> +Thus, to obtain an xsave area that may be set back to the tracee, all unused
> +state components must first be re-set to the correct initial state for the
> +corresponding state component, and the XSTATE_BV bitfield must subsequently
> +be adjusted to match the kernel xstate component bitmask (obtained as
> +described above).
> +
> +The value of the kernel's state component bitmask is determined on boot and
> +need not be equivalent to the maximal set of state components supported by the
> +CPU (as enumerated through CPUID).
> +
>  .SH RETURN VALUE
>  On success, the
>  .B PTRACE_PEEK*
> --
> 2.25.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
