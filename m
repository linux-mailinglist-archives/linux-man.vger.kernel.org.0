Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2384354816
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 23:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhDEVOV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 17:14:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232650AbhDEVOU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 17:14:20 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E41BC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 14:14:13 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j18so12019565wra.2
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 14:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EUHv8I+Tkjfds9k7frl9zcBN4u74MYTd7KTxdYcZP80=;
        b=VfSCWIetav0j1ty4zNn9Pt11dbOMHyEkZzfTVdJE9EqNOygpusd6jpqT3/4fPt/Pjp
         fXGC7FQfpkZ5pjsQ6SNfNJMOWrEZRCyGn0WKKn0EGV5ZHo80irzshpvgPuGoJocj4gI2
         plIo8+e7syu22mHumr/+pRKytcT5//hniTAR9UHmPMNGKUNGxunaq8kWIKcrgwM+0Szz
         EEGvWT1ha70LAK3ZSsdY2wW823Bp34VbWfbvTtNXfvJpxfs8M9WO8fgTOIU7IuI23Nn5
         C+aDwFixFNw3Z+hGVZIeIXvSIejHLODvFe61agaj5KTH3/h4HJHpjeAB280ujC5a5yD9
         lXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EUHv8I+Tkjfds9k7frl9zcBN4u74MYTd7KTxdYcZP80=;
        b=K6KiWtKBTmr5R0e9NpvZgpKIGGJoxR4odnjAzCgiNvfQnaMlpn8uRf1MJLNkDnK9QP
         mobf9yeOpd0JrcJ887Dx7nBtyJM0oxE+l8DwjoE2R2kXdRsVMqtE4kCS83Ua8nQwnzln
         YMbAqj/3NsN/r1toJ/9qGxI5yv0CIBS/7TAezCBQtYGQkBt9AHo6jCkSGLOwaybY09R0
         ZgRD9qtINwr0p81hBodMueuparFRkp+r34+pf0qgKT0MVsewg5tUlhBktGhqCY/tazZ1
         0Uld1NZC6SjB5wCPA/ndxIGXyBF3wmDVEaLrsl5gnuPnIKuMg3VNuwi+fUm2WrPgiEtF
         3ILQ==
X-Gm-Message-State: AOAM531UQlk2k5CjthWuFk8TVtZU5cw4lCd7+sTpTCv2oKDC5r+gbRsx
        SlbkvEUtHkbpfuzD4ahyOzg=
X-Google-Smtp-Source: ABdhPJzQYmJ/jV+PU+kpMizkkGljI8YV25eb438kGI3qvuFX26ZRd9snjkdEfztE4enUAZ2JuY0o5A==
X-Received: by 2002:adf:9d82:: with SMTP id p2mr31053510wre.234.1617657251896;
        Mon, 05 Apr 2021 14:14:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id v189sm726455wme.39.2021.04.05.14.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 14:14:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH 5/5] ioctl_userfaultfd.2: Add write-protect mode docs
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
 <20210405131307.2892-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ba53034c-582f-1df9-73b5-bfbca109213a@gmail.com>
Date:   Mon, 5 Apr 2021 23:14:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210405131307.2892-6-alx.manpages@gmail.com>
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
> Userfaultfd write-protect mode is supported starting from Linux 5.7.
> 
> Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
> Signed-off-by: Peter Xu <peterx@redhat.com>
> [alx: ffix + srcfix]
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/ioctl_userfaultfd.2 | 86 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 83 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 014c0b5c1..c29e0bb6a 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -234,6 +234,11 @@ operation is supported.
>  The
>  .B UFFDIO_UNREGISTER
>  operation is supported.
> +.TP
> +.B 1 << _UFFDIO_WRITEPROTECT
> +The
> +.B UFFDIO_WRITEPROTECT
> +operation is supported.
>  .PP
>  This
>  .BR ioctl (2)
> @@ -322,9 +327,6 @@ Track page faults on missing pages.
>  .B UFFDIO_REGISTER_MODE_WP
>  Track page faults on write-protected pages.
>  .PP
> -Currently, the only supported mode is
> -.BR UFFDIO_REGISTER_MODE_MISSING .
> -.PP
>  If the operation is successful, the kernel modifies the
>  .I ioctls
>  bit-mask field to indicate which
> @@ -443,6 +445,16 @@ operation:
>  .TP
>  .B UFFDIO_COPY_MODE_DONTWAKE
>  Do not wake up the thread that waits for page-fault resolution
> +.TP
> +.B UFFDIO_COPY_MODE_WP
> +Copy the page with read-only permission.
> +This allows the user to trap the next write to the page,

What is "the user" in this context? I think you really mean 
something like "the fault-handling thread"" or something
like that?

> +which will block and generate another write-protect userfault message.
> +This is only used when both
> +.B UFFDIO_REGISTER_MODE_MISSING
> +and
> +.B UFFDIO_REGISTER_MODE_WP
> +modes are enabled for the registered range.
>  .PP
>  The
>  .I copy
> @@ -654,6 +666,74 @@ field of the
>  structure was not a multiple of the system page size; or
>  .I len
>  was zero; or the specified range was otherwise invalid.
> +.SS UFFDIO_WRITEPROTECT (Since Linux 5.7)
> +Write-protect or write-unprotect an userfaultfd registered memory range
> +registered with mode
> +.BR UFFDIO_REGISTER_MODE_WP .
> +.PP
> +The
> +.I argp
> +argument is a pointer to a
> +.I uffdio_range
> +structure as shown below:
> +.PP
> +.in +4n
> +.EX
> +struct uffdio_writeprotect {
> +    struct uffdio_range range; /* Range to change write permission*/
> +    __u64 mode;                /* Mode to change write permission */
> +};
> +.EE
> +.in
> +.PP
> +There're two mode bits that are supported in this structure:
> +.TP
> +.B UFFDIO_WRITEPROTECT_MODE_WP
> +When this mode bit is set,
> +the ioctl will be a write-protect operation upon the memory range specified by
> +.IR range .
> +Otherwise it'll be a write-unprotect operation upon the specified range,
> +which can be used to resolve an userfaultfd write-protect page fault.
> +.TP
> +.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
> +When this mode bit is set,
> +do not wake up any thread that waits for
> +page-fault resolution after the operation.
> +This could only be specified if
> +.B UFFDIO_WRITEPROTECT_MODE_WP
> +is not specified.
> +.PP
> +This
> +.BR ioctl (2)
> +operation returns 0 on success.
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +Possible errors include:
> +.TP
> +.B EINVAL
> +The
> +.I start
> +or the
> +.I len
> +field of the
> +.I ufdio_range
> +structure was not a multiple of the system page size; or
> +.I len
> +was zero; or the specified range was otherwise invalid.
> +.TP
> +.B EAGAIN
> +The process was interrupted; retry this call.
> +.TP
> +.B ENOENT
> +The range specified in
> +.I range
> +is not valid.
> +For example, the virtual address does not exist,
> +or not registered with userfaultfd write-protect mode.
> +.TP
> +.B EFAULT
> +Encountered a generic fault during processing.
>  .SH RETURN VALUE
>  See descriptions of the individual operations, above.
>  .SH ERRORS

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
