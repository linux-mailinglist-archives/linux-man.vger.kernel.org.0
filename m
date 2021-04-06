Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02D7D355950
	for <lists+linux-man@lfdr.de>; Tue,  6 Apr 2021 18:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346485AbhDFQih (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Apr 2021 12:38:37 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:24027 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1346415AbhDFQif (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Apr 2021 12:38:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617727106;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=9XksUS1P3hDhzGh2GkxOetd6qUKlIttGQpWbBqYVSVQ=;
        b=G2s+L6laPYZBj06bQoiDB1i8DG4XvCOR/TgBDna9+8fQ2GL+Vo5hjn8mAXSpwK442X9rTy
        JsuOcrIhr4T47vryvNNPiUAfe2bT0WmW30GEIIfrAE3Gzs2HGcZcslZ3lp1OFO1SQQIT0e
        sm+Evbf8lgvkNWXiBo7F9tOupy9/lNY=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-8-9WKkacBtOlCJYmGzrkfHMg-1; Tue, 06 Apr 2021 12:38:23 -0400
X-MC-Unique: 9WKkacBtOlCJYmGzrkfHMg-1
Received: by mail-qk1-f199.google.com with SMTP id h21so12976366qkl.12
        for <linux-man@vger.kernel.org>; Tue, 06 Apr 2021 09:38:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9XksUS1P3hDhzGh2GkxOetd6qUKlIttGQpWbBqYVSVQ=;
        b=uRm5Zu17OpiianfzVyUHeX0ByVRDM/jiaOEhfsJ1QJCo99RAjm54RIqXHzR6ykoA2O
         UVSpEdNM18pd7sUUNWVBSI0mnyZkyy7CyU8V/+OIxGHrUkE+aap2qWZKpkJUIzhy78le
         CFP7gg3tUom87NlYzCS3zcnQUYm2/rZA2H6sabBmZxWqLAX0P0ETWPAyJMmAkJYrrb5d
         uE1odTqCae7uOMT0dKIqdu87ypDX+NiMo04GQskKtq6dNL3W9cZtVBn0TWnKicLEc4rL
         yXjb8BOURszgDCUvZnTnAftAdMJVdq4UGrmmuXH5NL37H6qxcf3U5iX+JgJ7NsL8FBm2
         EPbw==
X-Gm-Message-State: AOAM533dYqgCqfwHNE6Vm3IaTPIh3R7CmegQ1TgBz8pknTOtJnltzih8
        AwpPD9jYBw/NMzS8s3IdKqeaGzE8FolGTK+2B4GvdFT4JCG017JNq//YwQY6bC6eIqvg93BtGkI
        f9zrwfPcrIfzG/fNjQ6Gt
X-Received: by 2002:a05:622a:1704:: with SMTP id h4mr28637528qtk.30.1617727103186;
        Tue, 06 Apr 2021 09:38:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFBa5tFkVX25o27rBxAOFqdc+e+YLAe6uOG6/zYsejAlh9gWIPNtKs/ZVtP76kfBpqNDBl5w==
X-Received: by 2002:a05:622a:1704:: with SMTP id h4mr28637501qtk.30.1617727102849;
        Tue, 06 Apr 2021 09:38:22 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id 75sm15943783qkd.114.2021.04.06.09.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 09:38:22 -0700 (PDT)
Date:   Tue, 6 Apr 2021 12:38:21 -0400
From:   Peter Xu <peterx@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Mike Rapoport <rppt@linux.vnet.ibm.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Tweaks to your recent userfaultfd patches
Message-ID: <20210406163821.GI628002@xz-x1>
References: <CAKgNAkhzkmGavKg47RmmK0n8cqC_OxdJ3oVw1N6iOvWEMoGSHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAKgNAkhzkmGavKg47RmmK0n8cqC_OxdJ3oVw1N6iOvWEMoGSHw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Apr 06, 2021 at 10:09:15AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Peter,

Hi, Michael,

> 
> I made a number of tweaks to your recent patches to userfaultfd.2 and
> ioctl_userfaultfd.2. Many of the changes are cosmetic language
> fix-ups, but also I reworded a few things, notably "message" ==>
> "notification" for consistency (I think) with the rest of the page.
> 
> Could you take a look at the patch below please, and let me know if
> there are any problems?

Sorry to reply late - below look all good to me.  Thanks for help reworking the
series.

> 
> Thanks,
> 
> Michael
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index c29e0bb6a..365c1fa7b 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -212,7 +212,7 @@ memory accesses to the regions registered with userfaultfd.
>  .BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
>  If this feature bit is set,
>  .I uffd_msg.pagefault.feat.ptid
> -will be set to the faulted thread ID for each page fault message.
> +will be set to the faulted thread ID for each page-fault message.
>  .PP
>  The returned
>  .I ioctls
> @@ -450,7 +450,7 @@ Do not wake up the thread that waits for
> page-fault resolution
>  Copy the page with read-only permission.
>  This allows the user to trap the next write to the page,
>  which will block and generate another write-protect userfault message.
> -This is only used when both
> +This is used only when both
>  .B UFFDIO_REGISTER_MODE_MISSING
>  and
>  .B UFFDIO_REGISTER_MODE_WP
> @@ -667,7 +667,7 @@ structure was not a multiple of the system page size; or
>  .I len
>  was zero; or the specified range was otherwise invalid.
>  .SS UFFDIO_WRITEPROTECT (Since Linux 5.7)
> -Write-protect or write-unprotect an userfaultfd registered memory range
> +Write-protect or write-unprotect a userfaultfd-registered memory range
>  registered with mode
>  .BR UFFDIO_REGISTER_MODE_WP .
>  .PP
> @@ -693,13 +693,13 @@ When this mode bit is set,
>  the ioctl will be a write-protect operation upon the memory range specified by
>  .IR range .
>  Otherwise it'll be a write-unprotect operation upon the specified range,
> -which can be used to resolve an userfaultfd write-protect page fault.
> +which can be used to resolve a userfaultfd write-protect page fault.
>  .TP
>  .B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
>  When this mode bit is set,
>  do not wake up any thread that waits for
>  page-fault resolution after the operation.
> -This could only be specified if
> +This can be specified only if
>  .B UFFDIO_WRITEPROTECT_MODE_WP
>  is not specified.
>  .PP
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 0e9206424..3ff05af90 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -83,10 +83,10 @@ Userfaultfd supports two modes of registration:
>  .BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
>  When registered with
>  .B UFFDIO_REGISTER_MODE_MISSING
> -mode, the userspace will receive a page fault message
> +mode, user-space will receive a page-fault notification
>  when a missing page is accessed.
>  The faulted thread will be stopped from execution until the page fault is
> -resolved from the userspace by either an
> +resolved from user-space by either an
>  .B UFFDIO_COPY
>  or an
>  .B UFFDIO_ZEROPAGE
> @@ -95,17 +95,17 @@ ioctl.
>  .BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
>  When registered with
>  .B UFFDIO_REGISTER_MODE_WP
> -mode, the userspace will receive a page fault message
> +mode, user-space will receive a page-fault notification
>  when a write-protected page is written.
>  The faulted thread will be stopped from execution
> -until the userspace write-unprotect the page using an
> +until user-space write-unprotects the page using an
>  .B UFFDIO_WRITEPROTECT
>  ioctl.
>  .PP
>  Multiple modes can be enabled at the same time for the same memory range.
>  .PP
> -Since Linux 4.14, userfaultfd page fault message can selectively embed
> -faulting thread ID information into the fault message.
> +Since Linux 4.14, a userfaultfd page-fault notification can selectively embed
> +faulting thread ID information into the notification.
>  One needs to enable this feature explicitly using the
>  .B UFFD_FEATURE_THREAD_ID
>  feature bit when initializing the userfaultfd context.
> @@ -177,10 +177,12 @@ One should check against the feature bit
>  .B UFFD_FEATURE_PAGEFAULT_FLAG_WP
>  before using this feature.
>  Similar to the original userfaultfd missing mode, the write-protect mode will
> -generate an userfaultfd message when the protected page is written.
> +generate a userfaultfd notification when the protected page is written.
>  The user needs to resolve the page fault by unprotecting the faulted page and
> -kick the faulted thread to continue.
> -For more information, please refer to "Userfaultfd write-protect mode" section.
> +kicking the faulted thread to continue.
> +For more information,
> +please refer to the "Userfaultfd write-protect mode" section.
> +.\"
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
>  .BR userfaultfd (),
> @@ -276,11 +278,11 @@ with the mode set to
>  .BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
>  When there is only
>  .B UFFDIO_REGISTER_MODE_WP
> -registered, the userspace will
> +registered, user-space will
>  .I not
> -receive any message when a missing page is written.
> -Instead, the userspace will only receive a write-protect page fault message
> -when an existing but write-protected page got written.
> +receive any notification when a missing page is written.
> +Instead, user-space will receive a write-protect page-fault notification
> +only when an existing but write-protected page got written.
>  .PP
>  After the
>  .B UFFDIO_REGISTER
> @@ -295,16 +297,17 @@ should be set to
>  .BR UFFDIO_WRITEPROTECT_MODE_WP .
>  .PP
>  When a write-protect event happens,
> -the userspace will receive a page fault message whose
> +user-space will receive a page-fault notification whose
>  .I uffd_msg.pagefault.flags
>  will be with
>  .B UFFD_PAGEFAULT_FLAG_WP
>  flag set.
> -Note: since only writes can trigger such kind of fault,
> -write-protect messages will always be with
> +Note: since only writes can trigger this kind of fault,
> +write-protect notifications will always have the
>  .B UFFD_PAGEFAULT_FLAG_WRITE
> -bit set too along with bit
> -.BR UFFD_PAGEFAULT_FLAG_WP .
> +bit set along with the
> +.BR UFFD_PAGEFAULT_FLAG_WP
> +bit.
>  .PP
>  To resolve a write-protection page fault, the user should initiate another
>  .B UFFDIO_WRITEPROTECT
> @@ -314,7 +317,7 @@ should have the flag
>  .B UFFDIO_WRITEPROTECT_MODE_WP
>  cleared upon the faulted page or range.
>  .PP
> -Write-protect mode only supports private anonymous memory.
> +Write-protect mode supports only private anonymous memory.
>  .SS Reading from the userfaultfd structure
>  Each
>  .BR read (2)
> @@ -464,8 +467,8 @@ otherwise it is a read fault.
>  .B UFFD_PAGEFAULT_FLAG_WP
>  If the address is in a range that was registered with the
>  .B UFFDIO_REGISTER_MODE_WP
> -flag, when this bit is set it means it's a write-protect fault.
> -Otherwise it's a page missing fault.
> +flag, when this bit is set, it means it's a write-protect fault.
> +Otherwise it's a page-missing fault.
>  .RE
>  .TP
>  .I pagefault.feat.pid
> 

-- 
Peter Xu

