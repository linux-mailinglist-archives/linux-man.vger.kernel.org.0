Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7D8F3347BC
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 20:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbhCJTQd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 14:16:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232806AbhCJTQ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 14:16:28 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0204C061760;
        Wed, 10 Mar 2021 11:16:27 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id r15-20020a05600c35cfb029010e639ca09eso11786745wmq.1;
        Wed, 10 Mar 2021 11:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kNktfZy0Idj73E4lMknx/uUhRo+/Vky+oQ8WlSgBtYY=;
        b=HNTSwf0Ele/eXzWBqbonukbUPGEWRiBjZ5aAb/kJMF4zPLF6T6RTKxKFblkXDHDy3d
         Bx+IXz/2MhKBsOy4gk00mkXHNRnR5Lozq3Gap/s+3MaUi/a61Z2flNhxIWzcEPgu1DqS
         cvBfVygma/bVcgNbIj1hamcAYnGMgIr1tXS6BZU8zrqcEWLWHerfAOt5baWImfDLUbL9
         z5OKGK0sJhhqEI9VzIyc1q0EYptAhudMRs5kzF1JR7CJFNXquPplsdpVefLwpfvJiDC5
         Lx/rwMkC9B6mASyq0s2yAstdWJFnHriyovuuz7RXWYG/Vhla+fB5m/6EwFEDm84LUPja
         nXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kNktfZy0Idj73E4lMknx/uUhRo+/Vky+oQ8WlSgBtYY=;
        b=PPFMlF824ELeam9+LzZ4ue09NHMcBusE4t2wSCruIruKvh8GUezMCTwadHmhhfkmC1
         8wkGtNamJ+OGPJQiL3XEEyGcsMWvMRzL9itiEbbblpssvIpwFglOjZ+vVKGH72Uj25YD
         y+YM3fS2NBnPEX7HFSalHBrvHWLBxeJxLn+H6QAxN0V7+njhp9ejR9MQSnl729JsEWBl
         w4j0ESkc31KJ/IC592bZVhJu5/jroAe1cEg6sWup2GsokQLNZd98VV5atz+XT9H1OAn8
         r4jJKRLfBcFRam3+hi4dKuLmwm1L0iogkAU77calCc7C7tfR+eDi2/8pTOCMDA9HnyQb
         WhQg==
X-Gm-Message-State: AOAM533cgVU3NTTuWIrrhNYgfuoKqCnIkhjj2rWGK6hKyuaNpKRlAsYP
        xn16gY8Q+vIEHgIfMmqjajzmcWhYQDfmeg==
X-Google-Smtp-Source: ABdhPJxItWabQSFnVMINiQ0RVmoTU41Ve/fOdlmCCDB4YXiqfsgQ11npw7Yzj46Zhfc9Gjn8NfAYHg==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr4891290wml.4.1615403786367;
        Wed, 10 Mar 2021 11:16:26 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l21sm376718wmg.41.2021.03.10.11.16.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 11:16:25 -0800 (PST)
Subject: Re: [PATCH v2 2/4] userfaultfd.2: Add write-protect mode
To:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org
Cc:     Nadav Amit <nadav.amit@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        linux-kernel@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Linux MM Mailing List <linux-mm@kvack.org>
References: <20210304163140.543171-1-peterx@redhat.com>
 <20210304163140.543171-3-peterx@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <b81fc581-9db6-2fcb-21c2-8eab9e76a5d4@gmail.com>
Date:   Wed, 10 Mar 2021 20:16:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210304163140.543171-3-peterx@redhat.com>
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

On 3/4/21 5:31 PM, Peter Xu wrote:
> Write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>   man2/userfaultfd.2 | 98 +++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 96 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 0cd426a8a..426307bcf 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -78,6 +78,30 @@ all memory ranges that were registered with the object are unregistered
>   and unread events are flushed.
>   .\"
>   .PP
> +Currently, userfaultfd supports two modes of registration:

"Currently"

Than word is quite unstable and unprecise.
I think it would be better to use an absolute reference, such as "Since 
Linux x.y, ...".

> +.TP
> +.B UFFDIO_REGISTER_MODE_MISSING
> +When registered with
> +.B UFFDIO_REGISTER_MODE_MISSING
> +mode, the userspace will receive a page fault message when a missing page is
> +accessed.  The faulted thread will be stopped from execution until the page
> +fault is resolved from the userspace by either an
> +.B UFFDIO_COPY
> +or an
> +.B UFFDIO_ZEROPAGE
> +ioctl.
> +.TP
> +.B UFFDIO_REGISTER_MODE_WP
> +When registered with
> +.B UFFDIO_REGISTER_MODE_WP
> +mode, the userspace will receive a page fault message when a write-protected
> +page is written.  The faulted thread will be stopped from execution until the

Please, use "semantic newlines".

$ man 7 man-pages |sed -n '/semantic newlines/,/^$/p'
    Use semantic newlines
        In the source of a manual page,  new  sentences  should  be
        started  on new lines, and long sentences should split into
        lines at clause breaks (commas, semicolons, colons, and  so
        on).   This  convention,  sometimes known as "semantic new-
        lines", makes it easier to see the effect of patches, which
        often  operate at the level of individual sentences or sen-
        tence clauses.



> +userspace un-write-protect the page using an
> +.B UFFDIO_WRITEPROTECT
> +ioctl.
> +.PP
> +Multiple modes can be enabled at the same time for the same memory range.
> +.PP
>   Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
>   thread ID information into the fault message.  One needs to enable this feature
>   explicitly using the
> @@ -144,6 +168,16 @@ single threaded non-cooperative userfaultfd manager implementations.
>   .\" and limitations remaining in 4.11
>   .\" Maybe it's worth adding a dedicated sub-section...
>   .\"
> +.PP
> +Starting from Linux 5.7, userfaultfd is able to do synchronous page dirty
> +tracking using the new write-protection register mode.  One should check
> +against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.  Similar to the original userfaultfd missing mode,
> +the write-protect mode will generate an userfaultfd message when the protected
> +page is written.  The user needs to resolve the page fault by unprotecting the
> +faulted page and kick the faulted thread to continue.  For more information,
> +please read the "Userfaultfd write-protect mode" section below.
>   .SS Userfaultfd operation
>   After the userfaultfd object is created with
>   .BR userfaultfd (),
> @@ -219,6 +253,62 @@ userfaultfd can be used only with anonymous private memory mappings.
>   Since Linux 4.11,
>   userfaultfd can be also used with hugetlbfs and shared memory mappings.
>   .\"
> +.SS Userfaultfd write-protect mode
> +Since Linux 5.7, userfaultfd supports write-protect mode.  The user needs to
> +first check availability of this feature using
> +.B UFFDIO_API
> +ioctl against the feature bit
> +.BR UFFD_FEATURE_PAGEFAULT_FLAG_WP .
> +.PP
> +To register with userfaultfd write-protect mode, the user needs to initiate the
> +.B UFFDIO_REGISTER
> +ioctl with mode
> +.B UFFDIO_REGISTER_MODE_WP
> +set.  Note that it's legal to monitor the same memory range with multiple
> +modes.  For example, the user can do
> +.B UFFDIO_REGISTER
> +with the mode set to
> +.BR UFFDIO_REGISTER_MODE_MISSING\ |\ UFFDIO_REGISTER_MODE_WP .

Please use quotes when possible:

.BR "asdasd asdsadf dfgsdfg dsf" .

> +When there is only
> +.B UFFDIO_REGISTER_MODE_WP
> +registered, the userspace will
> +.I not
> +receive any message when a missing page is written.  Instead, the userspace
> +will only receive a write-protect page fault message when an existing but
> +write-protected page got written.
> +.PP
> +After the
> +.B UFFDIO_REGISTER
> +ioctl completed with
> +.B UFFDIO_REGISTER_MODE_WP
> +mode set, the user can write-protect any existing memory within the range using
> +the ioctl
> +.B UFFDIO_WRITEPROTECT
> +where
> +.I uffdio_writeprotect.mode
> +should be set to
> +.BR UFFDIO_WRITEPROTECT_MODE_WP .
> +.PP
> +When a write-protect event happens, the userspace will receive a page fault
> +message whose
> +.I uffd_msg.pagefault.flags
> +will be with
> +.B UFFD_PAGEFAULT_FLAG_WP
> +flag set.  Note: since only writes can trigger such kind of fault,
> +write-protect messages will always be with
> +.B UFFD_PAGEFAULT_FLAG_WRITE
> +bit set too along with
> +.BR UFFD_PAGEFAULT_FLAG_WP .
> +.PP
> +To resolve a write-protection page fault, the user should initiate another
> +.B UFFDIO_WRITEPROTECT
> +ioctl whose
> +.I uffd_msg.pagefault.flags
> +should have the flag
> +.BR UFFDIO_WRITEPROTECT_MODE_WP

.B

> +cleared upon the faulted page or range.
> +.PP
> +Currently, write-protect mode only supports private anonymous memory.
>   .SS Reading from the userfaultfd structure
>   Each
>   .BR read (2)
> @@ -364,8 +454,12 @@ flag (see
>   .BR ioctl_userfaultfd (2))
>   and this flag is set, this a write fault;
>   otherwise it is a read fault.
> -.\"
> -.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
> +.TP
> +.B UFFD_PAGEFAULT_FLAG_WP
> +If the address is in a range that was registered with the
> +.B UFFDIO_REGISTER_MODE_WP
> +flag, when this bit is set it means it's a write-protect fault.  Otherwise it's
> +a page missing fault.
>   .RE
>   .TP
>   .I pagefault.feat.pid
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
