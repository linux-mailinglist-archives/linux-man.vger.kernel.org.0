Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B31853EEBB
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 21:40:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232154AbiFFTke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 15:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232529AbiFFTkd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 15:40:33 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ADF8FD4A39
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 12:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654544431;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BHWgePvsgocymAfwWHluoqF9NXAEWWcWv6LxbnaOXDA=;
        b=HuYSq32Q2uSj/9mafcUk2UJLnnDB34s/TBd57xDlbv6JkwnaZ+oNShF/NuPPArg3dW22Sr
        AAh3BKVuOr4jumf7Skv9d0Eitgs/PsjZMyJzUFgB6TbtphmZGb4myuOMdhASJ2IWfZfVnY
        OcMVo8W7MuF3qNKh87zLv5zCSzjG53U=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-tRaHDEIJN2GaKw_7Y2X3xg-1; Mon, 06 Jun 2022 15:40:11 -0400
X-MC-Unique: tRaHDEIJN2GaKw_7Y2X3xg-1
Received: by mail-io1-f71.google.com with SMTP id e2-20020a5ede02000000b006695f3d239aso1467677iok.17
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 12:40:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BHWgePvsgocymAfwWHluoqF9NXAEWWcWv6LxbnaOXDA=;
        b=gIzo8gOHxgzHRmvJbCiMABplwK6BdH1GHmrtzjV2xUvF4CU0q2VWAGiOGX0fOvr/3R
         t2LeJUWaKhYtH+jQRIro5U621E93gHscZtM9FGtZ59X9OgQyo+j63hspQyvpw4um0SZJ
         F/k9wHmAiBVXBiVTF/eFw1jXQL/LrmVUvwyOHTT0jaZrrPCIwJb5bHl1dm+ef5BwzG53
         BuFInJRlf7668HZ0tPDsCdeouvqm4gy2rzn/F7igxcHvqcxF9f2Ghw2XNa+/i7lafvLt
         PaBF6o1kmBTg3Er6xGA/Hz5Y7Tlv8unAowRf0zOuv0untfg6Yr7Ryz0zHwhAwMDeuvDH
         WBwg==
X-Gm-Message-State: AOAM533RGdOC5D/kxQ06yZu7h/ce7cbwNTjHF6IQ/TXkqOCVRdxDx549
        SdDLMBvkeIP8cmuS9x1EjddHKEiWgUm8U2xfnOtWcXTMWPurNPjGT4IBuo40HYCh8SsGmZfKy7N
        rGnEPZPQXiH3qu6HIqeyb
X-Received: by 2002:a5d:9342:0:b0:654:9336:81d7 with SMTP id i2-20020a5d9342000000b00654933681d7mr12060091ioo.136.1654544410964;
        Mon, 06 Jun 2022 12:40:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyuTKxZdnLSXq6Q+yjA59OHzqCNYnL821EC8c6pW3mzs2G+oMyIYxeKfNMpC3h6b3zlhRSLcw==
X-Received: by 2002:a5d:9342:0:b0:654:9336:81d7 with SMTP id i2-20020a5d9342000000b00654933681d7mr12060081ioo.136.1654544410731;
        Mon, 06 Jun 2022 12:40:10 -0700 (PDT)
Received: from xz-m1.local (cpec09435e3e0ee-cmc09435e3e0ec.cpe.net.cable.rogers.com. [99.241.198.116])
        by smtp.gmail.com with ESMTPSA id n29-20020a02711d000000b00331a94f2b04sm1676363jac.105.2022.06.06.12.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 12:40:09 -0700 (PDT)
Date:   Mon, 6 Jun 2022 15:40:08 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org, Andrea Arcangeli <aarcange@redhat.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Message-ID: <Yp5YGMFJWLtthc8U@xz-m1.local>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jun 06, 2022 at 08:52:25PM +0200, Alejandro Colomar wrote:
> Hi Peter,

Hi, Alex,

> 
> On 6/3/22 19:37, Peter Xu wrote:
> > v2:
> > - Use semantic newlines always in patch 1 [Alex]
> > - Fix s/.BR/.B/ in patch 2 [Alex]
> > - Rebased to http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git
> > 
> > Add the two missing pieces till latest 5.19-rc1: the UFFD_USER_MODE_ONLY
> > flag, and also the recent wr-protect support on shmem and hugetlbfs.
> > 
> > Please review, thanks.
> > 
> > Peter Xu (2):
> >    userfaultfd.2: Add section for UFFD_USER_MODE_ONLY
> >    userfaultfd.2: Update on write-protection support
> > 
> >   man2/userfaultfd.2 | 23 ++++++++++++++++++-----
> >   1 file changed, 18 insertions(+), 5 deletions(-)
> > 
> 
> 
> I think the patch below would improve a little bit the wording (and
> newlines).  I still have a bit of trouble understanding "When a
> kernel-originated fault was triggered on the registered range with this
> userfaultfd".  Did you maybe mean "range registered" instead of "registered
> range"?

Since I'm not a native speaker I don't immediately see the difference
between the two..  What I wanted to express is all the memory ranges that
we registered with UFFDIO_REGISTER ioctl, and further it was trying to
describe what the kernel will do when there're any page faults that were
triggered upon those ranges from a kernel context.

It's always challenging for me to grasp how you prefer the newlines are
made, but anyway below changes looks good to me.  Thanks,

> 
> Thanks,
> 
> Alex
> 
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 9b5ec0358..0c0a4f687 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -62,11 +62,11 @@ flag in
>  .BR open (2).
>  .TP
>  .B UFFD_USER_MODE_ONLY
> -This is an userfaultfd specific flag that was introduced since Linux 5.11.
> -When set, the userfaultfd object will only be able to handle page faults
> -originated from the userspace on the registered regions.
> -When a kernel originated fault was triggered on the registered range with
> -this userfaultfd, a
> +This is an userfaultfd-specific flag that was introduced in Linux 5.11.
> +When set, the userfaultfd object will only be able to handle
> +page faults originated from the user space on the registered regions.
> +When a kernel-originated fault was triggered
> +on the registered range with this userfaultfd, a
>  .B SIGBUS
>  signal will be delivered.
>  .PP
> @@ -277,8 +277,9 @@ ioctl against the feature bit
>  .B UFFD_FEATURE_PAGEFAULT_FLAG_WP
>  before using this feature.
>  .PP
> -Since Linux 5.19, the write-protection mode was also supported on shmem and
> hugetlbfs
> -memory types.
> +Since Linux 5.19,
> +the write-protection mode was also supported on
> +shmem and hugetlbfs memory types.
>  It can be detected with the feature bit
>  .BR UFFD_FEATURE_WP_HUGETLBFS_SHMEM .
>  .PP
> 
> 
> -- 
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>




-- 
Peter Xu

