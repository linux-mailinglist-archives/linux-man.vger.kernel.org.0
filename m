Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 091CD2E86CC
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 09:42:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726548AbhABImb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 03:42:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726502AbhABIma (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Jan 2021 03:42:30 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C2E8C0613C1;
        Sat,  2 Jan 2021 00:41:50 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id y23so13227085wmi.1;
        Sat, 02 Jan 2021 00:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hYRNLwP/1NHa6zEvTv7qIkbCBu4POuScMjOVnSMcf/o=;
        b=R5l/Oce8djFCHnAzbrVK/epG7AldU/phdM2ChCjKbRUSXRJUkDWNfgLIsB+wqAwOFp
         VZwciRNZr77jd8EcpOAw8rMlTKDoJgPWfXleLXwOA9iuiuLJue13fKoOyUhNBUKl2WWp
         VFpCQcZnb7wLrHoXt9RdOSlwXuTHQkgH6d5T8LOc5+uHXnQKUA6G3NEp/TvtvfK2ptYq
         2dIoxFlWUarlVuJ0z6sGOJaCKe+vkM31qGiQEgXe2zglOzsOcXEoG+zqR8PqC5g0klah
         NunXytXie5rM0OwaBCWnl2oSJrg7UvuHPaHnbxyah2JLULSCX7UQUnfCNp+DdP5lNrSv
         96zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hYRNLwP/1NHa6zEvTv7qIkbCBu4POuScMjOVnSMcf/o=;
        b=jQwhhevSVu7HPgmTVRxU1LEGoFqoB5PuxrRjK2wjN/mb5cnEy1GcNQDnhqEFazsImd
         ydw7Cffl3Hih4DzTcj91S4YAjZwlDDqq9XodyJEK3vZSHGDmVcfO0fqnH1WW3OTkctNK
         Wzf9jevalCYmw4osayN1lA2Nm/hI4xHyswf1aT5GfL8Kpo8z15sPIJ3RRlUFc6HZb/Nv
         uM+TmPVpD2PaCo0V0zAM16C5P0AsmZHmNm2GifMqt72wGDBi7HCim308slc8N54NyCt3
         mlYzxqEdFytJMlrQGiFZWZSQnYshYi2MRpQAQrsBK/7vg0jEEXZbq0uNhs6dbSc0Cdj7
         9d5Q==
X-Gm-Message-State: AOAM532FxVhSf1OnY6Gqn1dswW86hhKBPXrFv8Opa0ALA7XFjjtv1+6B
        kr6Evgvw4DPoTG4XS+dPWqFWljhpFiU=
X-Google-Smtp-Source: ABdhPJzRbwGyDSYrcZauzdkzcSqqSDAiaqxnKFd230u3XCuuMoE3NwVooEV1q3xulqmaW408RJ9oVQ==
X-Received: by 2002:a7b:c145:: with SMTP id z5mr18361281wmi.164.1609576908494;
        Sat, 02 Jan 2021 00:41:48 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id t10sm76532602wrp.39.2021.01.02.00.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Jan 2021 00:41:47 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] getcpu.2: Document glibc wrapper instead of kernel
 syscall
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201230214147.874671-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9a4fecc5-be0a-99a9-a101-ca956cdceaa8@gmail.com>
Date:   Sat, 2 Jan 2021 09:41:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201230214147.874671-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/30/20 10:41 PM, Alejandro Colomar wrote:
> The glibc wrapper doesn't provide the third argument.
> Simplify the info about the (unused) kernel parameter
> to the minimum that is useful.
> 
> kernels <=2.6.23 are EOL since a long time ago.
> 
> The old info is commented out instead of removed.

I tend to be rather conservative about preserving historical
detail in the manual pages. Yes, 2.6.23 may be EOL from the
kernel community's point of view, but even in quite recent
times I've run into folk in the embedded world that who have
to at the very least support 2.6.* systems. So, as a general
principle, I'm inclined to retain the kind of info that this
patch removes. (I admit though that this is an extreme case:
historical behavior in a system call that is not frequently
used.)

There are exceptions. Occassionaly I run into historical 
info in manual pages that is clearly wrong, or incomplete.
In such cases, I am sometimes inclined to trim the details,
rather than invest the effort in working out all of the
historical details.

Clearly though, some fix is needed, since we now have 
a glibc wrapper that has just two arguments. I've applied
the patch below.

Cheers,

Michael

diff --git a/man2/getcpu.2 b/man2/getcpu.2
index a75123f97..59089bd74 100644
--- a/man2/getcpu.2
+++ b/man2/getcpu.2
@@ -14,10 +14,10 @@
 getcpu \- determine CPU and NUMA node on which the calling thread is running
 .SH SYNOPSIS
 .nf
-.B #include <linux/getcpu.h>
+.BR "#define _GNU_SOURCE" "             /* See feature_test_macros(7) */"
+.B #include <sched.h>
 .PP
-.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node \
-", struct getcpu_cache *" tcache );
+.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node );
 .fi
 .SH DESCRIPTION
 The
@@ -37,10 +37,6 @@ or
 .I node
 is NULL nothing is written to the respective pointer.
 .PP
-The third argument to this system call is nowadays unused,
-and should be specified as NULL
-unless portability to Linux 2.6.23 or earlier is required (see NOTES).
-.PP
 The information placed in
 .I cpu
 is guaranteed to be current only at the time of the call:
@@ -82,16 +78,31 @@ The intention of
 .BR getcpu ()
 is to allow programs to make optimizations with per-CPU data
 or for NUMA optimization.
+.\"
+.SS C library/kernel differences
+The kernel system call has a third argument:
+.PP
+.in +4n
+.nf
+.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
+.BI "           struct getcpu_cache *" tcache );
+.fi
+.in
 .PP
 The
 .I tcache
-argument is unused since Linux 2.6.24.
+argument is unused since Linux 2.6.24,
+and (when invoking the system call directly)
+should be specified as NULL,
+unless portability to Linux 2.6.23 or earlier is required.
+.PP
 .\" commit 4307d1e5ada595c87f9a4d16db16ba5edb70dcb1
 .\" Author: Ingo Molnar <mingo@elte.hu>
 .\" Date:   Wed Nov 7 18:37:48 2007 +0100
 .\" x86: ignore the sys_getcpu() tcache parameter
-In earlier kernels,
-if this argument was non-NULL,
+In Linux 2.6.23 and earlier, if the
+.I tcache
+argument was non-NULL,
 then it specified a pointer to a caller-allocated buffer in thread-local
 storage that was used to provide a caching mechanism for
 .BR getcpu ().

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
