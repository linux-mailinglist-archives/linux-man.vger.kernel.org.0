Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A07CD354813
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 23:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhDEVN2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 17:13:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbhDEVNZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 17:13:25 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5DF8C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 14:13:16 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e18so12020939wrt.6
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 14:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L6WyPIArejCtHoqTxh7p2XtLFavfZhsQrYIRQBCVQkk=;
        b=C1zJfTIZNuo1BcxOlYK0ISSW8nCUISLGcYoKCPTxbfhpf5S7CkB33/ZMZQ/34If3mt
         fLzqqOvxAAr9LJfQ699Asm0d8trl6kCuBnrzjsdADGp0CwcXbe5jUYDsHnKM595yysbb
         JIvcO4MxeGazP2wQcLg+hHRbnNs7zLfLMWz5ktEferkLHuiSg+qqO/4ncbEjqIDgasHn
         t+/8dglDUKaB5Pz73lgk2mVXspmFZKRPkhHgir+TE/DHsOh8BsSWWoxaZ5QWLAYFfUqt
         aJ3DDQV99FSGn3Y1V95gj+bBon8j9Y1ZwChh+tFc1Ldrc/K/oN4OMCwJHn4D+YkNntQH
         8Gww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L6WyPIArejCtHoqTxh7p2XtLFavfZhsQrYIRQBCVQkk=;
        b=hfL94TxRP/kwJYduJSBPiDpVEeRL6hWMsGPbAehJaYrtjlbohQsek/8DcmMcfEpgnY
         5a24YjND6Vl2sLjLE/5l5oWXkcOYIQo6BxFPcZfUImM9mfDdbHtIYI2Mic55ntCi8dI3
         DpRteHC/38zrUrspRZ+cMSAHYSB4LxBM4pIkmZPSvLcFSZTKva2AgBn9OputpxaFSh65
         mOsNdNaCNGy4SxLtg9GT8Y/k/pZh2IxXzxZUzgQdtBDFeCSwgMSfPEV+5gXC2umpL7YO
         XUi4RP7sISCHZBQesT0Z7OnruQFwtMNe9467lTU79mR5fhbj4xbfYNK1V7P1YyzMTzgg
         f6mA==
X-Gm-Message-State: AOAM531aKMbZcQyxiFBrWiwbpfapVTW8ri0K3/jzfMtXnYbBmVvSQZhy
        h7TyELRT4A0gTkmd2hPKDca7HKFt6k8=
X-Google-Smtp-Source: ABdhPJwxqIVo+iypwmoHk6HB4yCgVVywrkITSTgg/LFJaFWrZUr7lmVZ/pfVKdn/9ZmoA884XtxFfg==
X-Received: by 2002:adf:ef4a:: with SMTP id c10mr30235825wrp.427.1617657195369;
        Mon, 05 Apr 2021 14:13:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id a8sm9438340wro.19.2021.04.05.14.13.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 14:13:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 3/5] userfaultfd.2: Add write-protect mode
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f7496c55-600d-9ac0-fe6c-7fcc75dc6955@gmail.com>
Date:   Mon, 5 Apr 2021 23:13:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210405131307.2892-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Peter,

I've applied the patch below, but I have some questions.

On 4/5/21 3:13 PM, Alejandro Colomar wrote:
> From: Peter Xu <peterx@redhat.com>
> 
> Write-protect mode is supported starting from Linux 5.7.
> 
> Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/userfaultfd.2 | 108 +++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 104 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 8245253c3..0e9206424 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -78,6 +78,32 @@ all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
>  .PP
> +Userfaultfd supports two modes of registration:
> +.TP
> +.BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
> +When registered with
> +.B UFFDIO_REGISTER_MODE_MISSING
> +mode, the userspace will receive a page fault message
> +when a missing page is accessed.
> +The faulted thread will be stopped from execution until the page fault is
> +resolved from the userspace by either an
> +.B UFFDIO_COPY
> +or an
> +.B UFFDIO_ZEROPAGE
> +ioctl.
> +.TP
> +.BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
> +When registered with
> +.B UFFDIO_REGISTER_MODE_WP
> +mode, the userspace will receive a page fault message
> +when a write-protected page is written.
> +The faulted thread will be stopped from execution
> +until the userspace write-unprotect the page using an
> +.B UFFDIO_WRITEPROTECT
> +ioctl.
> +.PP
> +Multiple modes can be enabled at the same time for the same memory range.
> +.PP
>  Since Linux 4.14, userfaultfd page fault message can selectively embed
>  faulting thread ID information into the fault message.
>  One needs to enable this feature explicitly using the
> @@ -107,7 +133,7 @@ the process that monitors userfaultfd and handles page faults
>  needs to be aware of the changes in the virtual memory layout
>  of the faulting process to avoid memory corruption.
>  .PP
> -Starting from Linux 4.11,
> +Since Linux 4.11,
>  userfaultfd can also notify the fault-handling threads about changes
>  in the virtual memory layout of the faulting process.
>  In addition, if the faulting process invokes
> @@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
>  .\" and limitations remaining in 4.11
>  .\" Maybe it's worth adding a dedicated sub-section...
>  .\"
> +.PP
> +Since Linux 5.7, userfaultfd is able to do
> +synchronous page dirty tracking using the new write-protect register mode.
> +One should check against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.
> +Similar to the original userfaultfd missing mode, the write-protect mode will
> +generate an userfaultfd message when the protected page is written.
> +The user needs to resolve the page fault by unprotecting the faulted page and

You use "user-space" elsewhere, but "the user" here. What is the difference?

More generally, What is "the user" in this context? I think you 
really mean  something like "the trap-handling thread"" or something
like that? The same statement applies for various pieces below.

> +kick the faulted thread to continue.

What does "kick" mean here. This should be explained.

> +For more information, please refer to "Userfaultfd write-protect mode" section.
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
>  .BR userfaultfd (),
> @@ -179,7 +216,7 @@ or
>  .BR ioctl (2)
>  operations to resolve the page fault.
>  .PP
> -Starting from Linux 4.14, if the application sets the
> +Since Linux 4.14, if the application sets the
>  .B UFFD_FEATURE_SIGBUS
>  feature bit using the
>  .B UFFDIO_API
> @@ -219,6 +256,65 @@ userfaultfd can be used only with anonymous private memory mappings.
>  Since Linux 4.11,
>  userfaultfd can be also used with hugetlbfs and shared memory mappings.
>  .\"
> +.SS Userfaultfd write-protect mode (since 5.7)
> +Since Linux 5.7, userfaultfd supports write-protect mode.
> +The user needs to first check availability of this feature using
> +.B UFFDIO_API
> +ioctl against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.
> +.PP
> +To register with userfaultfd write-protect mode, the user needs to initiate the

You use "user-space" elsewhere, but "the user" here. What is the difference?

> +.B UFFDIO_REGISTER
> +ioctl with mode
> +.B UFFDIO_REGISTER_MODE_WP
> +set.
> +Note that it's legal to monitor the same memory range with multiple modes.
> +For example, the user can do

You use "user-space" elsewhere, but "the user" here. What is the difference?

> +.B UFFDIO_REGISTER
> +with the mode set to
> +.BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
> +When there is only
> +.B UFFDIO_REGISTER_MODE_WP
> +registered, the userspace will
> +.I not
> +receive any message when a missing page is written.
> +Instead, the userspace will only receive a write-protect page fault message
> +when an existing but write-protected page got written.

The wording here is a bit off. What does it mean: "an existing but 
write-protected page"?

> +.PP
> +After the
> +.B UFFDIO_REGISTER
> +ioctl completed with
> +.B UFFDIO_REGISTER_MODE_WP
> +mode set,
> +the user can write-protect any existing memory within the range using the ioctl

You use "user-space" elsewhere, but "the user" here. What is the difference?

> +.B UFFDIO_WRITEPROTECT
> +where
> +.I uffdio_writeprotect.mode
> +should be set to
> +.BR UFFDIO_WRITEPROTECT_MODE_WP .
> +.PP
> +When a write-protect event happens,
> +the userspace will receive a page fault message whose
> +.I uffd_msg.pagefault.flags
> +will be with
> +.B UFFD_PAGEFAULT_FLAG_WP
> +flag set.
> +Note: since only writes can trigger such kind of fault,
> +write-protect messages will always be with
> +.B UFFD_PAGEFAULT_FLAG_WRITE
> +bit set too along with bit
> +.BR UFFD_PAGEFAULT_FLAG_WP .
> +.PP
> +To resolve a write-protection page fault, the user should initiate another

You use "user-space" elsewhere, but "the user" here. What is the difference?

> +.B UFFDIO_WRITEPROTECT
> +ioctl, whose
> +.I uffd_msg.pagefault.flags
> +should have the flag
> +.B UFFDIO_WRITEPROTECT_MODE_WP
> +cleared upon the faulted page or range.
> +.PP
> +Write-protect mode only supports private anonymous memory.
>  .SS Reading from the userfaultfd structure
>  Each
>  .BR read (2)
> @@ -364,8 +460,12 @@ flag (see
>  .BR ioctl_userfaultfd (2))
>  and this flag is set, this a write fault;
>  otherwise it is a read fault.
> -.\"
> -.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
> +.TP
> +.B UFFD_PAGEFAULT_FLAG_WP
> +If the address is in a range that was registered with the
> +.B UFFDIO_REGISTER_MODE_WP
> +flag, when this bit is set it means it's a write-protect fault.
> +Otherwise it's a page missing fault.
>  .RE
>  .TP
>  .I pagefault.feat.pid

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
