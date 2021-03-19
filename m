Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFCA73428A9
	for <lists+linux-man@lfdr.de>; Fri, 19 Mar 2021 23:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbhCSWZz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Mar 2021 18:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230468AbhCSWZd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Mar 2021 18:25:33 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DA62C061760;
        Fri, 19 Mar 2021 15:25:33 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id y124-20020a1c32820000b029010c93864955so8047702wmy.5;
        Fri, 19 Mar 2021 15:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0qJ0F+Ko5F17OCQ9a8TQBdPdWsAoef7x4iebSXWjHz4=;
        b=C7uO0ez3RF444hrIrM9Iv2072ivubOU3jSVQq4FnQiRqph94jp1+01AFHPyslDQK4z
         FwHTnegiI9Epb5P3F0+1/o51XHrZ6tZ7Z2phTZkNztJddgiAwR8wqukC9VJuwlJdNtpf
         aoKINvSkuG87/UoMXaR/NmpHz0tuXK0OXFT6xZxzjSlgy5rWU/wVsnF34PrEtkGyAAJb
         isjCNS2qoGg0Dc+KcaJ57Ou9VkDINw2p/JQ+21Y+AkA8sXeAVw9Du5WadIQ1fBAn1Kea
         AlSbUq0shiwS8IeM2Bm/sZXMOxwafBP7qyXFdiThNBFmdwakoPIE1Zn2CxxB55PWLJiL
         0DcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0qJ0F+Ko5F17OCQ9a8TQBdPdWsAoef7x4iebSXWjHz4=;
        b=CNftl2B8UGlV4KJrAZ46B9MSSeMMmfRmG1PmAQ0S2kCLHDIp/zFAPwLK05wFO68ET8
         6TW9by3BLBNiKDnS2ucCb4nwYSeGenmjQQf/jGQffE5fRw//HUuyEfkVNvW6+40p1a5B
         EWZAfXx1yaSliPl+zkX3PGQxzOjx6h4UfQ7eaMZlRfHPr5mPmEeURLYPTLliuVv+ol7r
         gwI8FUmBfRgKNlsDp+zVEZPwDORglEOHkKV/JS1EPo1gekYavR2KP9a0TJwCBs34NU9D
         EkWLP3Ux8OFzWNQwaIimqG09V7xYEXmvju3FCxzefHrVkUf+rtsprNL1Of07C6P9WTHc
         Bt8A==
X-Gm-Message-State: AOAM5310RJjHHHHY4Tsg8XgSKURDDAjkIeea895TUUVHBcbr8t4U/KUx
        3Jt37OY4AnUyToyB4qTHDls=
X-Google-Smtp-Source: ABdhPJwzP1ce+0dIeV/2+ib339ExEqc3pFRBnhNYzsVL1+ucoQURn/m2yADVSNoBDyWYQFZnba4coA==
X-Received: by 2002:a7b:c5c8:: with SMTP id n8mr5432346wmk.63.1616192732337;
        Fri, 19 Mar 2021 15:25:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v3sm7767424wmj.25.2021.03.19.15.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 15:25:31 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] userfaultfd.2: Add write-protect mode
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
 <20210310222300.200054-3-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <75a4cec1-dc64-1c85-19eb-655c1d4209fc@gmail.com>
Date:   Fri, 19 Mar 2021 23:25:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210310222300.200054-3-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

Please, see a few minor comments below.

Thanks,

Alex

On 3/10/21 11:22 PM, Peter Xu wrote:
> Write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/userfaultfd.2 | 103 ++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 101 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 555e37409..d1f9aad24 100644
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
> +mode, the userspace will receive a page fault message when a missing page is

SC (see below)

> +accessed.
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
> +mode, the userspace will receive a page fault message when a write-protected
> +page is written.

Prefer breaking sentences at subordinate clauses rather than at random
points:

[
mode, the userspace will receive a page fault message
when a write-protected page is written.
]

There are other similar cases around the patch, marked with SC.

> +The faulted thread will be stopped from execution until the userspace

SC

> +un-write-protect the page using an> +.B UFFDIO_WRITEPROTECT
> +ioctl.
> +.PP
> +Multiple modes can be enabled at the same time for the same memory range.
> +.PP
>  Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
>  thread ID information into the fault message.
>  One needs to enable this feature explicitly using the
> @@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
>  .\" and limitations remaining in 4.11
>  .\" Maybe it's worth adding a dedicated sub-section...
>  .\"
> +.PP
> +Starting from Linux 5.7, userfaultfd is able to do synchronous page dirty

SC

> +tracking using the new write-protection register mode.
> +One should check against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.
> +Similar to the original userfaultfd missing mode, the write-protect mode will
> +generate an userfaultfd message when the protected page is written.
> +The user needs to resolve the page fault by unprotecting the faulted page and
> +kick the faulted thread to continue.
> +For more information, please refer to "Userfaultfd write-protect mode" section.
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
>  .BR userfaultfd (),
> @@ -219,6 +256,64 @@ userfaultfd can be used only with anonymous private memory mappings.
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
> +.B UFFDIO_REGISTER
> +ioctl with mode
> +.B UFFDIO_REGISTER_MODE_WP
> +set.
> +Note that it's legal to monitor the same memory range with multiple modes.
> +For example, the user can do
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
> +.PP
> +After the
> +.B UFFDIO_REGISTER
> +ioctl completed with
> +.B UFFDIO_REGISTER_MODE_WP
> +mode set, the user can write-protect any existing memory within the range using

SC (break at the comma better)

> +the ioctl
> +.B UFFDIO_WRITEPROTECT
> +where
> +.I uffdio_writeprotect.mode
> +should be set to
> +.BR UFFDIO_WRITEPROTECT_MODE_WP .
> +.PP
> +When a write-protect event happens, the userspace will receive a page fault

SC (break at the comma better)

> +message whose
> +.I uffd_msg.pagefault.flags
> +will be with
> +.B UFFD_PAGEFAULT_FLAG_WP
> +flag set.  Note: since only writes can trigger such kind of fault,

Break at the point above too.

> +write-protect messages will always be with
> +.B UFFD_PAGEFAULT_FLAG_WRITE
> +bit set too along with bit
> +.BR UFFD_PAGEFAULT_FLAG_WP .
> +.PP
> +To resolve a write-protection page fault, the user should initiate another
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
> @@ -364,8 +459,12 @@ flag (see
>  .BR ioctl_userfaultfd (2))
>  and this flag is set, this a write fault;
>  otherwise it is a read fault.
> -.\"
> -.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
> +.TP
> +.B UFFD_PAGEFAULT_FLAG_WP
> +If the address is in a range that was registered with the
> +.B UFFDIO_REGISTER_MODE_WP
> +flag, when this bit is set it means it's a write-protect fault.  Otherwise it's
> +a page missing fault.

Break at the point.

>  .RE
>  .TP
>  .I pagefault.feat.pid
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
