Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC93A34676C
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 19:20:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231146AbhCWSTb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 14:19:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231243AbhCWSTS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 14:19:18 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 462B0C061574;
        Tue, 23 Mar 2021 11:19:15 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x16so21777840wrn.4;
        Tue, 23 Mar 2021 11:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ca1Tuwhu5omAYPstfde+it7eK74ixpm8NMvNQMQFKWE=;
        b=SoQHhDCi88HemNMTFU8Xmq/0h+uYUn7HXkpJFAEqrZbk52+0U+n7mTSC08d2oZV0KS
         iWfdH7UItmXdeEyfaSdor4Ws1SvIBQst2GliHMtdVoBp1vixbD61zKveaadRdbhoLJw7
         7upSHgGEp+cdEhfuR5NEq9oybIn8j5v3k4ao7vloe6UpPY5zThYFfyBzYQJsOHgnQUh2
         wxb1w61FmThHDVySdE6KFafleUVHFD4MR8npKFMVvCWAa8mSdqoVzhXl9CnN9sj52qw/
         mb7dtDI0t0gHRinnd2MMgZk89tnkFLK3dVIKxel6FXmv5lm20ieTPwvuoBreGMxNILOp
         Br/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ca1Tuwhu5omAYPstfde+it7eK74ixpm8NMvNQMQFKWE=;
        b=IuZtwRNKxkQPgO/QiLFxvVOusDbaDN7DivrhpVj2jUaiIWFbgy2L+UpdhFA9AILOtR
         6KfoApFNeU7BIjXDvVhTcNzF6OqwES51IIZY2dcwSP6yUvQ122uIzAsZsIlmJx4xTAiI
         7WXX+Gw98kq1ult9p5mOXYSAWHlsYwcqLusowmyATXP7RiZuaSz1tWDf8IF6F0wTUQUN
         tq5jeLhIvIeHImjUy0SdkyoMWsh7QAxkM/GES9Qs0xuw//sHw/VnQ5fh4ueC4SZYmQgu
         Tdmp6m2mhkjbi1/vUmdKrHcwZfV749ReBrCXXCm6xtu3fjlw5ex9j7kPz7MyveojDM5I
         zNpA==
X-Gm-Message-State: AOAM533yKLYQKUaYuKu2Istq/527fUxnE/tDG2X1saFc+50qGs8tSGC5
        mAKVJ4+tZaejwFqB0brLDch5bUMGbgE=
X-Google-Smtp-Source: ABdhPJzhYMIoiz7bly4TNvwy50fv9d5a96W9TKxOnzC0CLnSERhxeq1TA/+QghHlrHPr0JbBUOOzng==
X-Received: by 2002:a05:6000:18f:: with SMTP id p15mr5350393wrx.23.1616523554001;
        Tue, 23 Mar 2021 11:19:14 -0700 (PDT)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c9sm24034820wrr.78.2021.03.23.11.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 11:19:13 -0700 (PDT)
Subject: Re: [PATCH v4 2/4] userfaultfd.2: Add write-protect mode
To:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-3-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9c5a6fd4-e0f6-026a-e6a2-db34234a56c8@gmail.com>
Date:   Tue, 23 Mar 2021 19:19:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210322220848.52162-3-peterx@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Peter,

Please see a few more comments below.

Thanks,

Alex

On 3/22/21 11:08 PM, Peter Xu wrote:
> Write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>   man2/userfaultfd.2 | 104 ++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 102 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 555e37409..8ad4a71b5 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -78,6 +78,32 @@ all memory ranges that were registered with the object are unregistered
>   and unread events are flushed.
>   .\"
>   .PP
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
> +until the userspace un-write-protect the page using an

Here you use un-write-protect, but in the other patch you use 
write-unprotect.  Please, use a consistent wording if it's the same 
thing (if there are other similar things with different wordings in 
different pages, please fix them too, but I didn't see more of those). 
If there's already a wording for that in any page, please reuse it (I 
ignore it).

> +.B UFFDIO_WRITEPROTECT
> +ioctl.
> +.PP
> +Multiple modes can be enabled at the same time for the same memory range.
> +.PP
>   Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
>   thread ID information into the fault message.
>   One needs to enable this feature explicitly using the
> @@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
>   .\" and limitations remaining in 4.11
>   .\" Maybe it's worth adding a dedicated sub-section...
>   .\"
> +.PP
> +Starting from Linux 5.7, userfaultfd is able to do

The previous paragraph uses "Siince Linux 4.14".  For consistency, 
please use that same wording here.

> +synchronous page dirty tracking using the new write-protection register mode.
> +One should check against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.
> +Similar to the original userfaultfd missing mode, the write-protect mode will
> +generate an userfaultfd message when the protected page is written.
> +The user needs to resolve the page fault by unprotecting the faulted page and
> +kick the faulted thread to continue.
> +For more information, please refer to "Userfaultfd write-protect mode" section.
>   .SS Userfaultfd operation
>   After the userfaultfd object is created with
>   .BR userfaultfd (),
> @@ -219,6 +256,65 @@ userfaultfd can be used only with anonymous private memory mappings.
>   Since Linux 4.11,
>   userfaultfd can be also used with hugetlbfs and shared memory mappings.
>   .\"
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
> +mode set,
> +the user can write-protect any existing memory within the range using the ioctl
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
> +.B UFFDIO_WRITEPROTECT
> +ioctl, whose
> +.I uffd_msg.pagefault.flags
> +should have the flag
> +.B UFFDIO_WRITEPROTECT_MODE_WP
> +cleared upon the faulted page or range.
> +.PP
> +Write-protect mode only supports private anonymous memory.
>   .SS Reading from the userfaultfd structure
>   Each
>   .BR read (2)
> @@ -364,8 +460,12 @@ flag (see
>   .BR ioctl_userfaultfd (2))
>   and this flag is set, this a write fault;
>   otherwise it is a read fault.
> -.\"
> -.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
> +.TP
> +.B UFFD_PAGEFAULT_FLAG_WP
> +If the address is in a range that was registered with the
> +.B UFFDIO_REGISTER_MODE_WP
> +flag, when this bit is set it means it's a write-protect fault.
> +Otherwise it's a page missing fault.
>   .RE
>   .TP
>   .I pagefault.feat.pid
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
