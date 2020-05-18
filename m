Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 636AA1D6F35
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2020 05:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727035AbgERDA6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 May 2020 23:00:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727037AbgERDA5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 May 2020 23:00:57 -0400
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FBA5C061A0C
        for <linux-man@vger.kernel.org>; Sun, 17 May 2020 20:00:57 -0700 (PDT)
Received: by mail-qk1-x744.google.com with SMTP id f189so8785230qkd.5
        for <linux-man@vger.kernel.org>; Sun, 17 May 2020 20:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=juliacomputing-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=1cpZcYjqPlSjUbV3lSBGjRgE9D7q9dVCNk5DaSv1mXQ=;
        b=cdKve8yDztKJ5hfqQdP6D2wkVnDq9ja2NwchMH6LuiGecYk3I3mcRN4IcAZO7rsW7B
         qNkK5R+CYllWVoeIIF2Sdu/coiozUo1X6F42g30bgk+bG5grTuDwSxy2iTK2UwAg3O+w
         WMwSejfMr8l+xZhkSgwvJdo/mcuZoWK9E2acRlDH4pHvpcZdAo9rYYXTEO5nJDzgz9pZ
         WiM3x6v3wAe+Je5iaDSazLmuGCumlo3V60hMJpJfzisLCW1MVnK0Fv8Q7Gn/MneUARHt
         Js9f6iAXkoJL2jO1JGasiQ9Vs61hu7rRHqP+wtjHwe0sr0YK6BOtCXTS3sJOwzvBNjG5
         kWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=1cpZcYjqPlSjUbV3lSBGjRgE9D7q9dVCNk5DaSv1mXQ=;
        b=lh6D8rOd6jGOohOdA3SqOyPflySSHKMyUTVcjJLHGpJ85kZ6agSdQ/7aX+0jHtEgnU
         YBbiCX+lukfLTwjB/pLzkjQdCGdwz3Ye6Ca9WBx1+rmT5YwtMoAsttK0ntwwMFlZNDca
         ozMMfoARRwszMqL6Rslkuqy97BarMdG6s2jVZckyALl+a6QzWLkq2Lasiuj3boQAqX9u
         b74EKzlYwMpkqB7ORrSZm+VkBRmHN9LcikPIT8J339F9Z8/5TeMP1K3uLpHGBJjY+ZdF
         MSNYx47b347LlHrf8F2eoB1yzyIJ6YrwXRTuzynnE3kzOLGughhISgj6GZv3UErcoVGl
         PChg==
X-Gm-Message-State: AOAM531pBst4o57/dcw/qO/+p4R6z4KDG6e/mdvjgIdilVxnSemBLnwk
        PSqkbm1BnagOtvUH9bqjd3UdE93F96g3Cg==
X-Google-Smtp-Source: ABdhPJxHKEvDg4eNeLpOdvZABAl8ukYd064NvxMnOr4Br4RhvRLQsD+C7+xA2oqg+Ax8lG4Yh6A1/g==
X-Received: by 2002:a05:620a:7f0:: with SMTP id k16mr13371781qkk.18.1589770856658;
        Sun, 17 May 2020 20:00:56 -0700 (PDT)
Received: from juliacomputing.com ([2601:184:4780:3aef:f953:4b7a:4834:ed91])
        by smtp.gmail.com with ESMTPSA id 124sm7192450qkl.76.2020.05.17.20.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2020 20:00:56 -0700 (PDT)
Date:   Sun, 17 May 2020 23:00:53 -0400
From:   Keno Fischer <keno@juliacomputing.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Andi Kleen <andi@firstfloor.org>
Subject: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
Message-ID: <20200518030053.GA72528@juliacomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Correctly using the result of this operation is quite hard,
because the layout is not fixed and depends on the kernel
configuration. Furthermore, because of the initial state
optimization, parts of the layout may be missing. If ptrace
users are not careful, it is easy to get unexpected results.
This documents everything I know about how to use NT_X86_XSTATE
"correctly". This should probably have been documented earlier,
since every single ptrace application I looked at gets this wrong
in one way or another, but hopefully having documentation will at
least help future users cover the relevant corner cases.

Signed-off-by: Keno Fischer <keno@juliacomputing.com>

---
I'm hoping this will help. I recently had occasion to read up on
how this actually works (finding I, too, had used it incorrectly),
for patch in https://lkml.org/lkml/2020/4/6/1161. I'm cc'ing the
folks who took part in that review here, since I think they would
be interested in making sure the status quo is adequately documented.
Please let me know if I got anything wrong, or if anything is confusing.

 man2/ptrace.2 | 57 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 575062971..57958119b 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -2322,6 +2322,63 @@ result, to the real parent (to the real parent only when the
 whole multithreaded process exits).
 If the tracer and the real parent are the same process,
 the report is sent only once.
+.SS The layout and operation of the NT_X86_XSTATE regset
+On x86(_64), the values of extended registers can be obtained as an xstate buffer,
+accessed through the NT_X86_XSTATE option to
+.B PTRACE_GETREGSET.
+The layout of this area is relatively complex (and described below). It is
+in general not safe to assume that a buffer obtained using
+.B PTRACE_GETREGSET
+may be set back to any task using
+.B PTRACE_SETREGSET
+while resulting in a task that has equivalent register state (see below for
+details). It is also not safe to assume that the buffer is a valid xsave area
+that may be restored using the
+.I xrstor
+instruction, nor is it safe to assume that any extended state component is
+located at a particular fixed offset. Instead the following algorithm should be used to
+compute the offset of any given state component within the xsave buffer:
+.IP 1. 3
+Obtain the kernel xsave component bitmask from the software-reserved area of the
+xstate buffer. The software-reserved area beings at offset 464 into the xsave
+buffer and the first 64 bits of this area contain the kernel xsave component bitmask
+.IP 2.
+Compute the offset of each state component by adding the sizes of all prior state
+components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
+format matches that of a compacted xsave area with XCOMP_BV set to the
+kernel component bitmask. Further details on the layout of the compacted xsave
+area may be found in the Intel architecture manual, but note that the xsave
+buffer returned from ptrace will have its XCOMP_BV set to 0.
+.IP 3.
+For the given state component of interest, check the corresponding bit
+in the xsave header's XSTATE_BV bitfield. If this bit is zero, the corresponding
+component is in initial state and was not written to the buffer (i.e. the kernel
+does not touch the memory corresponding to this state component at all,
+the start offset next active state component will not be affected unless
+the bit is also missing from the kernel component bitmask obtained in step 1).
+The initial state for any state component is defined in the Intel architecture manual (for
+most state components it is the zero state).
+.PP
+
+In particular, the third of these considerations results in a buffer that does
+not round-trip through
+.B PTRACE_SETREGSET.
+If a given state component is missing from the XSTATE_BV bitfield, it will
+be ignored by
+.B PTRACE_SETREGSET
+even if the corresponding register in the target task is currently not in
+initial state.
+
+Thus, to obtain an xsave area that may be set back to the tracee, all unused
+state components must first be re-set to the correct initial state for the
+corresponding state component, and the XSTATE_BV bitfield must subsequently
+be adjusted to match the kernel xstate component bitmask (obtained as
+described above).
+
+The value of the kernel's state component bitmask is determined on boot and
+need not be equivalent to the maximal set of state components supported by the
+CPU (as enumerated through CPUID).
+
 .SH RETURN VALUE
 On success, the
 .B PTRACE_PEEK*
-- 
2.25.1

