Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CF35305846
	for <lists+linux-man@lfdr.de>; Wed, 27 Jan 2021 11:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S314251AbhAZXCQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jan 2021 18:02:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390134AbhAZRvC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jan 2021 12:51:02 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75731C06174A
        for <linux-man@vger.kernel.org>; Tue, 26 Jan 2021 09:50:21 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id z22so6113687edb.9
        for <linux-man@vger.kernel.org>; Tue, 26 Jan 2021 09:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YDZ9xoM4vkjgG3VDn83cus2ZyU7tS/ImHr1EbR40OHE=;
        b=iC68VBpaq64YNVQ0gyie62K2q0gqKG2wunAeMFJligWQ54mFY6PLhbrOxMmB1Snsrn
         0iShrefSXyHlxlN+8Q01JLqZUHgUdC4dPm083RP/P3G/HjqXJvx5QaNoLA+/CSe5uglG
         oCWZXKNRQA8x+9nVwamn+mDCLqUFyKlzOV+3EpXHa8AaC5IVSJx910YSC18RZPWc81FJ
         ltKjl4opEIguMtRBiMwBDki887zMS5XWqqiJz+57O7hld88oTYnoGPI1DqSPOACvYHV6
         26MiLHaOJpXDLenM4lVZhCqcgeWByzzXB8oi3MdeA4rODu556+k1D2I+NKeM2iME7D/w
         wH+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YDZ9xoM4vkjgG3VDn83cus2ZyU7tS/ImHr1EbR40OHE=;
        b=j8GW2RQhnXJ4hVsMtBWsyE82EECnO7gp7A0NvnhMN+vktstGCprNg75dAM8G5typOy
         lQUXKoJjGyfwxtD2Qnb4nTfjedA5YQ0Y7deWr/bI0+tAtww15zKECu3lbcK1py09Blfe
         8wP0zO0ajag9QUoOytlz5wRPsdbRdEMMV9oE8Rg1Zw4T9d9aZWuaYJcaN+scA8wbw18O
         N9pQ60H6YBjAEUsgHqJRkCH+KAaQ1VvrHTExXSRYB90HvnmpsPYfqAq7dkbbObhs6Ibv
         jB3wSnieZdnCyYOWzkRvYalOya8eO57kDb1hhuT+mYS3PeNxKdI4ZsnGMJSyhTA6gnJ8
         7f5A==
X-Gm-Message-State: AOAM530yrQeuAeHKw7spvHb6/F7FRxeEb5xkgS6FwQ83BQcCJmffFupA
        bhmuqtJWrOT7bsmGJGMOXm7d8mtuF1AhKeKQXpQpYcivHdY=
X-Google-Smtp-Source: ABdhPJx3Yv1kBkYCpT7b1VeYY0tK4Gs4XrFwiszGuqBHo9jL/4XtOW+Fht+NXcjZCRLEkjSwZDjZJ0Ui6hVhT9ALTl8=
X-Received: by 2002:aa7:d4c8:: with SMTP id t8mr5784370edr.199.1611683419835;
 Tue, 26 Jan 2021 09:50:19 -0800 (PST)
MIME-Version: 1.0
References: <20210126014450.1901335-1-lokeshgidra@google.com>
In-Reply-To: <20210126014450.1901335-1-lokeshgidra@google.com>
From:   Lokesh Gidra <lokeshgidra@google.com>
Date:   Tue, 26 Jan 2021 09:50:08 -0800
Message-ID: <CA+EESO5MafN2aa8+BC_KP+BfRNqw9ySpQJwymuuZd4BBxPn4fA@mail.gmail.com>
Subject: Re: [PATCH v1] userfaultfd.2: Add UFFD_USER_MODE_ONLY flag
To:     linux-man@vger.kernel.org
Cc:     Daniel Colascione <dancol@dancol.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Kalesh Singh <kaleshsingh@google.com>,
        Calin Juravle <calin@google.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Jeffrey Vander Stoep <jeffv@google.com>,
        "Cc: Android Kernel" <kernel-team@android.com>,
        Peter Xu <peterx@redhat.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        "open list:MEMORY MANAGEMENT" <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 25, 2021 at 5:44 PM Lokesh Gidra <lokeshgidra@google.com> wrote:
>
> Add description of UFFD_USER_MODE_ONLY flag to userfaultfd(2) manual
> page, which is required after [1]. Also updated the description of
> unprivileged_userfaultfd file in proc(5) as per [2].
>
> [1] https://lore.kernel.org/linux-mm/20201215031349.NXimL388W%25akpm@linux-foundation.org/
> [2] https://lore.kernel.org/linux-mm/20201215031354.gUsHJUpKo%25akpm@linux-foundation.org/
>
> Signed-off-by: Lokesh Gidra <lokeshgidra@google.com>
> ---
>  man2/userfaultfd.2 |  5 +++++
>  man5/proc.5        | 12 ++++++++++++
>  2 files changed, 17 insertions(+)
>
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index e7dc9f813..792a49d52 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -72,6 +72,11 @@ See the description of the
>  .BR O_NONBLOCK
>  flag in
>  .BR open (2).
> +.TP
> +.BR UFFD_USER_MODE_ONLY " (Since Linux 5.11)"
> +Allow handling of user-mode page-faults only. See the description of the
> +unprivileged_userfaultfd file in
> +.BR proc (5).
>  .PP
>  When the last file descriptor referring to a userfaultfd object is closed,
>  all memory ranges that were registered with the object are unregistered
> diff --git a/man5/proc.5 b/man5/proc.5
> index f16a29d6e..cb2350c0c 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -5905,6 +5905,18 @@ If this file has the value 0, then only processes that have the
>  capability may employ
>  .BR userfaultfd (2).
>  The default value in this file is 1.
> +.IP
> +Starting with Linux 5.11,
> +.BR userfaultfd (2)
> +can be used by all processes, however, if this file has the value 0, then
> +.BR UFFD_USER_MODE_ONLY
> +flag must be passed to it, which restricts page-fault handling to only
> +user-mode faults. This restriction is not applicable for processes with
> +.B CAP_SYS_PTRACE
> +capability, or if this file has the value 1. Furthermore, the default
> +value in this file is changed to 0. For further details see the
> +Linux kernel source file
> +.I Documentation/admin\-guide/sysctl/vm.rst.
>  .TP
>  .IR /proc/sysrq\-trigger " (since Linux 2.4.21)"
>  Writing a character to this file triggers the same SysRq function as
> --

Adding the right linux-mm mailing list. Mistakenly used
linux-mm@kvack.kernel.org earlier.

> 2.30.0.280.ga3ce27912f-goog
>
