Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 257193428BD
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 23:38:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230229AbhCSWhi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 18:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbhCSWhY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 18:37:24 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE7FC061760;
        Fri, 19 Mar 2021 15:37:23 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id t4so181027wrn.11;
        Fri, 19 Mar 2021 15:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qtPqC/b9mFCQQC954uZ+jA+CaL7CGfuo4Hx7uUK7ftE=;
        b=LCk5dKaSSSJ+ICXJC9857Z94TUz/98BHBUWJrvWAGFGx/IKwvt4Od5C208Bh6MPnY1
         UfpLZpdlORIYXGm66kJnZeD2xfxDe752ju5/IvnsnAxvi95QKDnLcqfY+HcMgT6KM3A8
         k1A/tguEU8hAMSMXtJ/DOL6XkmXIYfcxGIsfhGO+Y1LyOgp/Q+/CFlm9Et6Fi5whv68a
         66UBZMnVg7swBbv9CFR9cDz+mbeEHShs50n9dUMXWstok5crAUXPP7xiJ8RUx1LyAVmx
         x3HS3UfMfNGgNbA1dmvtvKSBz/iLjELVOKFqfoPRr31nU7e1gvRY2Jba1TLkPMsem5ci
         TZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qtPqC/b9mFCQQC954uZ+jA+CaL7CGfuo4Hx7uUK7ftE=;
        b=Ky08mqH8zYTiFxf0BzmL05s1E5sDSEV1v8pcYXOeOxSg/QVgt3U5qbzpsQe1IwiWYs
         CwIm5oJE2rzF1dzck0pwOJNU8ivcm5sLv71Va7Jl+Xm0v2K2/EfYIHSAQspeNUhQ/g8n
         qFfa05ZpQN/jF03WxwNO9mzG8UmlOvK98CBbu55aHR7nF3JvOCxEnfQ+cMU6lokeIOmM
         uJ6za23xPMEG0JtC/kNJuDX7WL47cLNT0Hcjed/VrljaouS9LEKtzU37j8T3GuAUhxH+
         92IYcNNVIqLVaz5LXW3+biQh8fdzMvQLs2q5znXmclQ04ahDmOzMzg5elOV+wkfRvB3x
         1qVA==
X-Gm-Message-State: AOAM533n5gcNfeNUUMkfy0fSzWnU/W84Ofy+VmGcUWjMuUa1yLRdnXTd
        Mj0fttdh3unTJ2z3nCZigb4=
X-Google-Smtp-Source: ABdhPJzxzxYKl1O4f75ovjJzZjs+rdqL87EN96yF6Hg3Lk3v6ODiAORvI/1Pyrr8Xy9aIKnqD3SGCQ==
X-Received: by 2002:adf:df10:: with SMTP id y16mr6682903wrl.372.1616193442341;
        Fri, 19 Mar 2021 15:37:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j4sm7499426wmo.10.2021.03.19.15.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 15:37:21 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
To:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
References: <20210310222300.200054-1-peterx@redhat.com>
 <20210310222300.200054-5-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5c533ba3-f335-0681-223f-bf2202a9b72a@gmail.com>
Date:   Fri, 19 Mar 2021 23:37:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210310222300.200054-5-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

A few more comments below.

Thanks,

Alex

On 3/10/21 11:23 PM, Peter Xu wrote:
> Userfaultfd write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/ioctl_userfaultfd.2 | 81 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 78 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index d4a8375b8..d8380896a 100644
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
> @@ -443,6 +445,13 @@ operation:
>  .TP
>  .B UFFDIO_COPY_MODE_DONTWAKE
>  Do not wake up the thread that waits for page-fault resolution
> +.TP
> +.B UFFDIO_COPY_MODE_WP
> +Copy the page with read-only permission.
> +This allows the user to trap the next write to the page, which will block and

Break at the comma instead.

> +generate another write-protect userfault message.
> +This is only used in conjunction with write-protect mode when both missing and

"when both missing"

both what?

> +write-protect modes are enabled.
>  .PP
>  The
>  .I copy
> @@ -654,6 +663,72 @@ field of the
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
> +    struct uffdio_range range;  /* Range to change write permission */
> +    __u64 mode;                 /* Mode to change write permission */
> +};
> +.EE
> +.in
> +There're two mode bits that are supported in this structure:
> +.TP
> +.B UFFDIO_WRITEPROTECT_MODE_WP
> +When this mode bit is set, the ioctl will be a write-protect operation upon the
> +memory range specified by
> +.IR range .
> +Otherwise it'll be a write-unprotect operation upon the specified range, which

Break at the comma instead.

> +can be used to resolve an userfaultfd write-protect page fault.
> +.TP
> +.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
> +When this mode bit is set, do not wake up any thread that waits for page-fault

Break at the comma.

> +resolution after the operation.
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
> +The process was interrupted and need to retry.
> +.TP
> +.B ENOENT
> +The range specified in
> +.I range
> +is not valid.
> +For example, the virtual address does not exist, or not registered with

Better break at the comma.

> +userfaultfd write-protect mode.
> +.TP
> +.B EFAULT
> +Encountered a generic fault during processing.
>  .SH RETURN VALUE
>  See descriptions of the individual operations, above.
>  .SH ERRORS
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
