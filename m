Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D490B7DD448
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 18:09:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236499AbjJaRJd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 13:09:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345989AbjJaRJU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 13:09:20 -0400
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [85.215.255.21])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD22F5
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 10:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698772086; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=J57bRcH2+r3zH7/dmUSBxXXGWlQ2x5778x84f0U9WCoAhZspJvpSJZO9bgg+7TQHUV
    ErLDrPkKQM7LUXSo2KfhiREx/Oa7VAMgdXDQv+WSrjHWbdfLkuAWQ4UMogvS64iVeiH/
    6KhMJExwuNiJfupeibapBblEdggfAuIC9FElJuH9fv4wBz9nQUigVPbfRvi0FY+bmcvP
    61bRTPAbLQgWZT+gFHY8T8FT+jWw7dnuLUgSSbYde3R3r0oBeGKfzgqbZ/XDf/mxNfs0
    dr5QUc72ro55gHDuSu3nhVlWXf4vGgGuJ+YZVRIX4weYaAQtGvIEuUIZ0T8np7BbGACM
    2TGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1698772086;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Rq4jy5h/IEsFxoslpoWD7fWJBzWmTML3K/venn7A9Z4=;
    b=RD4q0HfMyCZ4tNw0saTry4dlqd+KfrOGi5XJgo9wJfJmBt03sgIm2na7fnvLcFMtSz
    c7qN0vls6y8swjUEc4xbwAc3EFRzoI8Yq3dwzNrrbKjrraS0bgRsSf313z9nIj5JjVm/
    yPCvAPsns2nl8RQIuUz6yLqdwbiyNcQKcEzj3rhi6ym92ytOd+Rvkfejzha1IcagrABM
    0msQlIgNsYWRVSb4RqP/YKN7la+36TtKMZ9zUVEEzejdv3pKzhQ+rnrgyR/6vlTevQCP
    f2hf+vwrsNbQXjoq3+4W4Yk558wDPDjHJwdPakA7agdjgURl6+SgivV+vwvlV2RZfe2r
    FYdw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1698772086;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Rq4jy5h/IEsFxoslpoWD7fWJBzWmTML3K/venn7A9Z4=;
    b=I1+OekyVi9t935YQvzrfJtLK77HSkS1RAt56ct1YYZODymtM+1qzDoZRLVF8dNHMRb
    cyAnITutZv0UuoEB8LULDzFKG4ERVaCBO44wJtUhBUaOJy6xQkJ39fFDcl9GbJe5olP4
    X4ZfPII09e7IMw+JMQFbkqSWJuWq2F9xbm9df56OLhY8mElySRbgioRHIQIxCFkHZnFr
    SovbNLNEehJmcxNU6oo7kRkHaKWuiz0qbm5iedmV9zcONxG4wKTsDOVtKXH4ZsX3Wmci
    /dVZBMmA/d2ahixGJt3x81xSL0v5SCmHe2/+Qee6afZ8zHyQxzaaqNaOsP/D8+Ww3t31
    INFw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1698772086;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=Rq4jy5h/IEsFxoslpoWD7fWJBzWmTML3K/venn7A9Z4=;
    b=xk4mKOZ28SZbvUBedBt4Ryifm+k7qJXTGR/rI+gxFgStTHqQmf5tUchLMcWJmy+Pfv
    YIi0Uek5maQgtCf/DUBA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpOSjfYseoVYGZM+CkacbRdz+NcbVg=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 49.9.1 AUTH)
    with ESMTPSA id ecf079z9VH85T2M
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Tue, 31 Oct 2023 18:08:05 +0100 (CET)
From:   Bruno Haible <bruno@clisp.org>
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] prctl.2: Fix typo
Date:   Tue, 31 Oct 2023 18:08:05 +0100
Message-ID: <5203882.zE8UqtGg2D@nimes>
In-Reply-To: <ZUEnQmDDLwwfCd_g@debian>
References: <4678853.9Mp67QZiUf@nimes> <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com> <ZUEnQmDDLwwfCd_g@debian>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart4061143.zToM8qfIzz"
Content-Transfer-Encoding: 7Bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart4061143.zToM8qfIzz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> Yes, I don't think it means optional, but rather a choice from all the
> available operations.

IMO, a choice is an "option" only if it is possible to choose none of
the available choices.

> Would you mind checking the
> entire page for those other replacements?

Done: Find attached 0001, which replaces "option" with "operation" in those
places where it denotes the first argument.

Also 0002: a paragraph break was missing in the list of reasons for EINVAL.

I also updated the prototype of this function in IRIX. The IRIX 6.5 header
file in fact does not give a name to the first argument: it declares

  ptrdiff_t prctl(unsigned, ...);

Bruno


--nextPart4061143.zToM8qfIzz
Content-Disposition: attachment; filename="0001-prctl.2-Use-better-term.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-prctl.2-Use-better-term.patch"

From 8823af7522ea7e9e2e89774e3ce7b33724ba50bf Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 29 Oct 2023 21:46:49 +0100
Subject: [PATCH 1/2] prctl.2: Use better term

The first argument of prctl() was denoted as "option" here. This makes
no sense, because
  - The first argument is not optional; it is mandatory.
    A choice is an "option" only if it is possible to choose none of
    the available choices.
  - The title of the page is "operations on a process or thread".

A better term is "operation".
---
 man2/prctl.2 | 88 ++++++++++++++++++++++++++--------------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/man2/prctl.2 b/man2/prctl.2
index f72aeb700..bcda079bb 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -46,7 +46,7 @@ Standard C library
 .nf
 .B #include <sys/prctl.h>
 .PP
-.BI "int prctl(int " option ", ..."
+.BI "int prctl(int " operation ", ..."
 .BI "          \fR/*\fP unsigned long " arg2 ", unsigned long " arg3 ,
 .BI "          unsigned long " arg4 ", unsigned long " arg5 " \fR*/\fP );"
 .fi
@@ -414,7 +414,7 @@ so FPU emulation is not required and the FPU always operates in
 .B FR=1
 mode.
 .IP
-This option is mainly intended for use by the dynamic linker
+This operation is mainly intended for use by the dynamic linker
 .RB ( ld.so (8)).
 .IP
 The arguments
@@ -2096,7 +2096,7 @@ and (if it returns)
 .B PR_GET_SECCOMP
 return the nonnegative values described above.
 All other
-.I option
+.I operation
 values return 0 on success.
 On error, \-1 is returned, and
 .I errno
@@ -2104,7 +2104,7 @@ is set to indicate the error.
 .SH ERRORS
 .TP
 .B EACCES
-.I option
+.I operation
 is
 .B PR_SET_SECCOMP
 and
@@ -2120,7 +2120,7 @@ attribute (see the discussion of
 above).
 .TP
 .B EACCES
-.I option
+.I operation
 is
 .BR PR_SET_MM ,
 and
@@ -2130,7 +2130,7 @@ is
 the file is not executable.
 .TP
 .B EBADF
-.I option
+.I operation
 is
 .BR PR_SET_MM ,
 .I arg3
@@ -2141,7 +2141,7 @@ and the file descriptor passed in
 is not valid.
 .TP
 .B EBUSY
-.I option
+.I operation
 is
 .BR PR_SET_MM ,
 .I arg3
@@ -2156,7 +2156,7 @@ symbolic link, which is prohibited.
 is an invalid address.
 .TP
 .B EFAULT
-.I option
+.I operation
 is
 .BR PR_SET_SECCOMP ,
 .I arg2
@@ -2169,7 +2169,7 @@ and
 is an invalid address.
 .TP
 .B EFAULT
-.I option
+.I operation
 is
 .B PR_SET_SYSCALL_USER_DISPATCH
 and
@@ -2178,12 +2178,12 @@ has an invalid address.
 .TP
 .B EINVAL
 The value of
-.I option
+.I operation
 is not recognized,
 or not supported on this system.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_MCE_KILL
 or
@@ -2197,10 +2197,10 @@ arguments were not specified as zero.
 .B EINVAL
 .I arg2
 is not valid value for this
-.IR option .
+.IR operation .
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_SECCOMP
 or
@@ -2209,7 +2209,7 @@ and the kernel was not configured with
 .BR CONFIG_SECCOMP .
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .BR PR_SET_SECCOMP ,
 .I arg2
@@ -2219,7 +2219,7 @@ and the kernel was not configured with
 .BR CONFIG_SECCOMP_FILTER .
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .BR PR_SET_MM ,
 and one of the following is true
@@ -2259,7 +2259,7 @@ resource limit to be exceeded.
 .RE
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_PTRACER
 and
@@ -2269,7 +2269,7 @@ is not 0,
 or the PID of an existing process.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_PDEATHSIG
 and
@@ -2277,7 +2277,7 @@ and
 is not a valid signal number.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_DUMPABLE
 and
@@ -2288,7 +2288,7 @@ nor
 .BR SUID_DUMP_USER .
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_TIMING
 and
@@ -2297,7 +2297,7 @@ is not
 .BR PR_TIMING_STATISTICAL .
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_NO_NEW_PRIVS
 and
@@ -2311,7 +2311,7 @@ or
 is nonzero.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_GET_NO_NEW_PRIVS
 and
@@ -2323,7 +2323,7 @@ or
 is nonzero.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_THP_DISABLE
 and
@@ -2334,7 +2334,7 @@ or
 is nonzero.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_GET_THP_DISABLE
 and
@@ -2346,7 +2346,7 @@ or
 is nonzero.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_CAP_AMBIENT
 and an unused argument
@@ -2371,7 +2371,7 @@ and
 does not specify a valid capability.
 .TP
 .B EINVAL
-.I option
+.I operation
 was
 .B PR_GET_SPECULATION_CTRL
 or
@@ -2380,7 +2380,7 @@ and unused arguments to
 .BR prctl ()
 are not 0.
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_PAC_RESET_KEYS
 and the arguments are invalid or unsupported.
@@ -2389,7 +2389,7 @@ See the description of
 above for details.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SVE_SET_VL
 and the arguments are invalid or unsupported,
@@ -2399,13 +2399,13 @@ See the description of
 above for details.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SVE_GET_VL
 and SVE is not available on this platform.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_SYSCALL_USER_DISPATCH
 and one of the following is true:
@@ -2427,7 +2427,7 @@ is invalid.
 .RE
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_SET_TAGGED_ADDR_CTRL
 and the arguments are invalid or unsupported.
@@ -2436,7 +2436,7 @@ See the description of
 above for details.
 .TP
 .B EINVAL
-.I option
+.I operation
 is
 .B PR_GET_TAGGED_ADDR_CTRL
 and the arguments are invalid or unsupported.
@@ -2445,13 +2445,13 @@ See the description of
 above for details.
 .TP
 .B ENODEV
-.I option
+.I operation
 was
 .B PR_SET_SPECULATION_CTRL
 the kernel or CPU does not support the requested speculation misfeature.
 .TP
 .B ENXIO
-.I option
+.I operation
 was
 .B PR_MPX_ENABLE_MANAGEMENT
 or
@@ -2460,7 +2460,7 @@ and the kernel or the CPU does not support MPX management.
 Check that the kernel and processor have MPX support.
 .TP
 .B ENXIO
-.I option
+.I operation
 was
 .B PR_SET_SPECULATION_CTRL
 implies that the control of the selected speculation misfeature is not possible.
@@ -2469,7 +2469,7 @@ See
 for the bit fields to determine which option is available.
 .TP
 .B EOPNOTSUPP
-.I option
+.I operation
 is
 .B PR_SET_FP_MODE
 and
@@ -2477,7 +2477,7 @@ and
 has an invalid or unsupported value.
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .BR PR_SET_SECUREBITS ,
 and the caller does not have the
@@ -2489,7 +2489,7 @@ or tried to set a flag whose corresponding locked flag was set
 .BR capabilities (7)).
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .B PR_SET_SPECULATION_CTRL
 wherein the speculation was disabled with
@@ -2497,7 +2497,7 @@ wherein the speculation was disabled with
 and caller tried to enable it again.
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .BR PR_SET_KEEPCAPS ,
 and the caller's
@@ -2507,7 +2507,7 @@ flag is set
 .BR capabilities (7)).
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .BR PR_CAPBSET_DROP ,
 and the caller does not have the
@@ -2515,7 +2515,7 @@ and the caller does not have the
 capability.
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .BR PR_SET_MM ,
 and the caller does not have the
@@ -2523,7 +2523,7 @@ and the caller does not have the
 capability.
 .TP
 .B EPERM
-.I option
+.I operation
 is
 .B PR_CAP_AMBIENT
 and
@@ -2538,7 +2538,7 @@ or the
 securebit has been set.
 .TP
 .B ERANGE
-.I option
+.I operation
 was
 .B PR_SET_SPECULATION_CTRL
 and
@@ -2558,11 +2558,11 @@ with prototype
 .PP
 .in +4n
 .EX
-.BI "ptrdiff_t prctl(int " option ", int " arg2 ", int " arg3 );
+.BI "ptrdiff_t prctl(int " operation ", int " arg2 ", int " arg3 );
 .EE
 .in
 .PP
-and options to get the maximum number of processes per user,
+and operations to get the maximum number of processes per user,
 get the maximum number of processors the calling process can use,
 find out whether a specified process is currently blocked,
 get or set the maximum stack size, and so on.
-- 
2.34.1


--nextPart4061143.zToM8qfIzz
Content-Disposition: attachment; filename="0002-prctl.2-Add-a-missing-paragraph-break.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0002-prctl.2-Add-a-missing-paragraph-break.patch"

From d1ae2b0b32e837476467397ce1f9d81e347621da Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Tue, 31 Oct 2023 18:02:43 +0100
Subject: [PATCH 2/2] prctl.2: Add a missing paragraph break.

A paragraph break was missing in the enumeration of possible reasons for EINVAL.
---
 man2/prctl.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/prctl.2 b/man2/prctl.2
index bcda079bb..b97f3fb53 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2379,6 +2379,7 @@ or
 and unused arguments to
 .BR prctl ()
 are not 0.
+.TP
 .B EINVAL
 .I operation
 is
-- 
2.34.1


--nextPart4061143.zToM8qfIzz--



