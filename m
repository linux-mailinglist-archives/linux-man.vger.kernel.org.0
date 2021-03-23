Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C150334674A
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 19:11:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbhCWSLO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 14:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231218AbhCWSLI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 14:11:08 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECA25C061574;
        Tue, 23 Mar 2021 11:11:07 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id d191so11572596wmd.2;
        Tue, 23 Mar 2021 11:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/3n6/hjBeKG9YY5D/RNZJFxIplip8JKuOKCUvPOqsyg=;
        b=To17+Rs+T5WPTHvuDG3BGBgm8g5YIPCce2xRsDeuS4+gc5INAL99XSzlDw2T8BKDBK
         KD15Y8sCX1q8Z/mY4s7FdHNe8AlsjQUXFRIKs3WtLdeVdqXszcryOGDEFkhkHkRZbcfM
         iETMdKgZ+4C5phdJzPnGkegivlmVEGM27hSRzRsfF0Xm1B80rqVksIQ7uIGqS9sKSAcB
         FjCF84FgZxHFv5WNidIz3iEyHrVRiNJ4Fzzr24BCj7yKRhqXqjGkgsEGD4BoFm8cdr9K
         kClv+wN/BqY4FNZEgNmMmJPlrdHCDxb0TlcLNpTWAx3u1J2yjhfRhxfVjyWP8S5HYysg
         MKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/3n6/hjBeKG9YY5D/RNZJFxIplip8JKuOKCUvPOqsyg=;
        b=UMgB2rVR3xz7Oz+Q0ctKw1E3u8aW/XpRDvr1g74QVSwxdxpVgseiAk0s57ivFIxWGc
         VrbH1JoXhuBqm6AnvyMbNYasjJM9y3fKTUU4wtOCFiKR84kKfJ1b3FpzLG+aOidkDtc5
         YMgTkT92eH1YwoefI150retEzWOEbtKTV5o9UWzdwK2t6Z2bhHGhA6nQVQVYc711g+sl
         rnacyyihVVG7D5xilBTM19SfVErIav7qb3Qi12nJt38Wo0cOjLJgL1dVwqtWEAC0XGXR
         JiDduvnDw4hb0sHpuM8opCKjYPv69L4nlh/hPvaVDGxRgN+p8K5CgGJkW3eq2gZwpc1U
         CsOg==
X-Gm-Message-State: AOAM531fu95utEQt+5n41IQKUuBG8a3wT9dxZRppk//ENagFH7DXwIZn
        kAaeXIlYtfCua6JfEqVdEs0=
X-Google-Smtp-Source: ABdhPJwbogAK01BZyOnaAQboki65TGpfbdsETa9yYXZOlcn2lwwNcqX+bzYBcjbiCHt67q5Y6O7IEg==
X-Received: by 2002:a7b:c1c4:: with SMTP id a4mr4612562wmj.122.1616523066666;
        Tue, 23 Mar 2021 11:11:06 -0700 (PDT)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p12sm24239866wrx.28.2021.03.23.11.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:11:06 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
To:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-5-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c65b5f04-4620-4c7e-e71f-91fc8394d164@gmail.com>
Date:   Tue, 23 Mar 2021 19:11:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322220848.52162-5-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

Please see a few comments below.

Thanks,

Alex

On 3/22/21 11:08 PM, Peter Xu wrote:
> Userfaultfd write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>   man2/ioctl_userfaultfd.2 | 84 ++++++++++++++++++++++++++++++++++++++--
>   1 file changed, 81 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index d4a8375b8..5419687a6 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -234,6 +234,11 @@ operation is supported.
>   The
>   .B UFFDIO_UNREGISTER
>   operation is supported.
> +.TP
> +.B 1 << _UFFDIO_WRITEPROTECT
> +The
> +.B UFFDIO_WRITEPROTECT
> +operation is supported.
>   .PP
>   This
>   .BR ioctl (2)
> @@ -322,9 +327,6 @@ Track page faults on missing pages.
>   .B UFFDIO_REGISTER_MODE_WP
>   Track page faults on write-protected pages.
>   .PP
> -Currently, the only supported mode is
> -.BR UFFDIO_REGISTER_MODE_MISSING .
> -.PP
>   If the operation is successful, the kernel modifies the
>   .I ioctls
>   bit-mask field to indicate which
> @@ -443,6 +445,16 @@ operation:
>   .TP
>   .B UFFDIO_COPY_MODE_DONTWAKE
>   Do not wake up the thread that waits for page-fault resolution
> +.TP
> +.B UFFDIO_COPY_MODE_WP
> +Copy the page with read-only permission.
> +This allows the user to trap the next write to the page,
> +which will block and generate another write-protect userfault message.

s/write-protect/write-protected/
?

> +This is only used when both
> +.B UFFDIO_REGISTER_MODE_MISSING
> +and
> +.B UFFDIO_REGISTER_MODE_WP
> +modes are enabled for the registered range.
>   .PP
>   The
>   .I copy
> @@ -654,6 +666,72 @@ field of the
>   structure was not a multiple of the system page size; or
>   .I len
>   was zero; or the specified range was otherwise invalid.
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
> +Otherwise it'll be a write-unprotect operation upon the specified range,
> +which can be used to resolve an userfaultfd write-protect page fault.
> +.TP
> +.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
> +When this mode bit is set,
> +do not wake up any thread that waits for page-fault resolution after the operation.
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

Maybe: "The process was interrupted; retry this call."?
I don't know what other pager say about this kind of error.

> +.TP
> +.B ENOENT
> +The range specified in
> +.I range
> +is not valid.

I'm not sure how this is different from the wording above in EINVAL.  An 
"otherwise invalid range" was already giving EINVAL?

> +For example, the virtual address does not exist,
> +or not registered with userfaultfd write-protect mode.
> +.TP
> +.B EFAULT
> +Encountered a generic fault during processing.

What is a "generic fault"?

>   .SH RETURN VALUE
>   See descriptions of the individual operations, above.
>   .SH ERRORS
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
