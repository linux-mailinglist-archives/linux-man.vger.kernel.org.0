Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB4122C3E5
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 12:57:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726553AbgGXK5g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 06:57:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbgGXK5g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 06:57:36 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB2C5C0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:57:35 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id n2so6733935edr.5
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 03:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m64UqtJAf3FW2fZKnRJhGkH4kOrf823CcpX7fHHu5bM=;
        b=QwR4/wG3DDJ+29thS1xzDcnqWW9TJ583VS+yb7S1u+xyFtN7naRcGTk+OU1CPXLvpc
         rr5qcC/wZfc7+gDlBlOfqSd0i5RbUKs0nIUo59Kk2X1m//unRHNXzlkdF0P3py5SyUiB
         hmybgw3d/9V9Ie6QHEvjhQ1bUZAbPHfQghvuLqKIQ7RkMAjScOQp74dyJsCPLQEREsol
         6klC9aI8eHaag7PF3tYO83PJWZIXLUCrWtIkSP4igFchb/W9cXmajRtptEoYGDldGU/5
         +7K7MoFKRMFWDjjKiuHkgHW8l+bGE66I9+a/2l5u0mqOojc1KzpL8EUaSbKdwZFhBTRz
         0C1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m64UqtJAf3FW2fZKnRJhGkH4kOrf823CcpX7fHHu5bM=;
        b=gVXtWihX15ml+BZ18HNXfTITGds7fXoBgLlVGvoUBFPwl/2yrZheFrcxAiYh5SiqYe
         9OmKpHs9Zn73YSWDQcVvAaZH6ZdL0zPUODppB3q3DPeSwcjh91rVTi84Vw51/K34KzdZ
         6wMQwQ0x24pUp8BK9MXJyge87beVflEXz3q8MRs36Jz9OuGg8fD2D7SW04aCLy1MIyt1
         ye7TFb4HxL9xE2GmWO+2BAzhHdlRCSsKifsN7iGrJTN0CY8wYUWMGoP2oXuAVyLcL47B
         YxALkF+7+Ay6bDk8Axvef3MImc/OwDuy/JOCBE36jg72CLWy3eq332l/4rcG3fcRovwM
         LUoA==
X-Gm-Message-State: AOAM5305wuf1GvngjXL4d8A6hFPSGYM5EJNlFHvDBygHScZL1ceNLwLl
        nkQ4/em3yxaZTLgExwx4UyWMFO4q
X-Google-Smtp-Source: ABdhPJzjcaBmnjAk7kUQ9el8GHBpJL59gbmBDnENTX/r1uvsqwaaAK0+U98WBkpqvISVKIByCC/oUA==
X-Received: by 2002:aa7:dbd9:: with SMTP id v25mr6659550edt.137.1595588254018;
        Fri, 24 Jul 2020 03:57:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id bw7sm407480ejb.5.2020.07.24.03.57.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 03:57:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] use standard .\" comment style
To:     Mike Frysinger <vapier@gentoo.org>
References: <20200723215337.13823-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4557e7e6-f134-695d-2b4e-cba6a03be1b4@gmail.com>
Date:   Fri, 24 Jul 2020 12:57:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200723215337.13823-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Mike,

On 7/23/20 11:53 PM, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
> 
> The \" comment produces blank lines.  Use the .\" that the vast
> majority of the codebase uses instead.

Thanks. Applied.

Cheers,

Michael

> Signed-off-by: Mike Frysinger <vapier@gentoo.org>
> ---
>  man2/keyctl.2          |  8 ++++----
>  man2/perf_event_open.2 | 10 +++++-----
>  man3/makecontext.3     |  2 +-
>  man7/keyrings.7        |  6 +++---
>  man7/pid_namespaces.7  |  2 +-
>  5 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/man2/keyctl.2 b/man2/keyctl.2
> index b758f331bd28..ea954d7fab85 100644
> --- a/man2/keyctl.2
> +++ b/man2/keyctl.2
> @@ -592,9 +592,9 @@ Writing to the buffer is attempted only when
>  is non-NULL and the specified buffer size
>  is large enough to accept the descriptive string
>  (including the terminating null byte).
> -'\" Function commentary says it copies up to buflen bytes, but see the
> -'\" (buffer && buflen >= ret) condition in keyctl_describe_key() in
> -'\" security/keyctl.c
> +.\" Function commentary says it copies up to buflen bytes, but see the
> +.\" (buffer && buflen >= ret) condition in keyctl_describe_key() in
> +.\" security/keyctl.c
>  In order to determine whether the buffer size was too small,
>  check to see if the return value of the operation is greater than
>  .IR arg4 .
> @@ -963,7 +963,7 @@ Use the UID-specific session keyring
>  as the new default keyring.
>  .TP
>  .BR KEY_REQKEY_DEFL_REQUESTOR_KEYRING " (since Linux 2.6.29)"
> -'\" 8bbf4976b59fc9fc2861e79cab7beb3f6d647640
> +.\" 8bbf4976b59fc9fc2861e79cab7beb3f6d647640
>  Use the requestor keyring.
>  .\" FIXME The preceding explanation needs to be expanded.
>  .\" Is the following correct:
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index eee3b887074b..2492fc75a815 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -2601,7 +2601,7 @@ is a string describing the backing of the allocated memory.
>  .RE
>  .TP
>  .BR PERF_RECORD_AUX " (since Linux 4.1)"
> -\" commit 68db7e98c3a6ebe7284b6cf14906ed7c55f3f7f0
> +.\" commit 68db7e98c3a6ebe7284b6cf14906ed7c55f3f7f0
>  This record reports that new data is available in the separate
>  AUX buffer region.
>  .IP
> @@ -2638,7 +2638,7 @@ if set, then the data returned has overwritten previous data.
>  .RE
>  .TP
>  .BR PERF_RECORD_ITRACE_START " (since Linux 4.1)"
> -\" ec0d7729bbaed4b9d2d3fada693278e13a3d1368
> +.\" ec0d7729bbaed4b9d2d3fada693278e13a3d1368
>  This record indicates which process has initiated an instruction
>  trace event, allowing tools to properly correlate the instruction
>  addresses in the AUX buffer with the proper executable.
> @@ -2661,7 +2661,7 @@ thread ID of the thread starting an instruction trace.
>  .RE
>  .TP
>  .BR PERF_RECORD_LOST_SAMPLES " (since Linux 4.2)"
> -\" f38b0dbb491a6987e198aa6b428db8692a6480f8
> +.\" f38b0dbb491a6987e198aa6b428db8692a6480f8
>  When using hardware sampling (such as Intel PEBS) this record
>  indicates some number of samples that may have been lost.
>  .IP
> @@ -2680,7 +2680,7 @@ the number of potentially lost samples.
>  .RE
>  .TP
>  .BR PERF_RECORD_SWITCH " (since Linux 4.3)"
> -\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
> +.\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
>  This record indicates a context switch has happened.
>  The
>  .B PERF_RECORD_MISC_SWITCH_OUT
> @@ -2698,7 +2698,7 @@ struct {
>  .EE
>  .TP
>  .BR PERF_RECORD_SWITCH_CPU_WIDE " (since Linux 4.3)"
> -\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
> +.\" commit 45ac1403f564f411c6a383a2448688ba8dd705a4
>  As with
>  .B PERF_RECORD_SWITCH
>  this record indicates a context switch has happened,
> diff --git a/man3/makecontext.3 b/man3/makecontext.3
> index 1d8429fa45db..c311f49f9496 100644
> --- a/man3/makecontext.3
> +++ b/man3/makecontext.3
> @@ -1,4 +1,4 @@
> -\" Copyright (C) 2001 Andries Brouwer (aeb@cwi.nl)
> +.\" Copyright (C) 2001 Andries Brouwer (aeb@cwi.nl)
>  .\" and Copyright (C) 2006 Michael Kerrisk <mtk.manpages@gmail.com>
>  .\"
>  .\" %%%LICENSE_START(VERBATIM)
> diff --git a/man7/keyrings.7 b/man7/keyrings.7
> index 0e0bd0a9514a..0983a4da948e 100644
> --- a/man7/keyrings.7
> +++ b/man7/keyrings.7
> @@ -105,9 +105,9 @@ the key is scheduled for garbage collection.
>  The kernel provides several basic types of key:
>  .TP
>  .I """keyring"""
> -'\" Note that keyrings use different fields in struct key in order to store
> -'\" their data - index_key instead of type/description and name_link/keys
> -'\" instead of payload.
> +.\" Note that keyrings use different fields in struct key in order to store
> +.\" their data - index_key instead of type/description and name_link/keys
> +.\" instead of payload.
>  Keyrings are special keys which store a set of links
>  to other keys (including other keyrings),
>  analogous to a directory holding links to files.
> diff --git a/man7/pid_namespaces.7 b/man7/pid_namespaces.7
> index f2aa25884de3..9d893fcf26c1 100644
> --- a/man7/pid_namespaces.7
> +++ b/man7/pid_namespaces.7
> @@ -262,7 +262,7 @@ namespace that is the
>  .I parent
>  of the child's PID namespace,
>  rather than the "init" process in the child's own PID namespace.
> -\" Furthermore, by definition, the parent of the "init" process
> +.\" Furthermore, by definition, the parent of the "init" process
>  .\" of a PID namespace resides in the parent PID namespace.
>  .\"
>  .\" ============================================================
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
