Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A886F4E207A
	for <lists+linux-man@lfdr.de>; Mon, 21 Mar 2022 07:11:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234584AbiCUGM1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Mar 2022 02:12:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231917AbiCUGM0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Mar 2022 02:12:26 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1A28663534
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 23:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647843061;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=odBINnMgIi0tgmQ8mhF4tk+Kj1bfTM5xyu8TMVAPo04=;
        b=EEa2t43UlJJwmSsqsZPJE2aNesaVAZPow2LY+joXafBkOtZ2RLoe8r1yrCbYjOd875o2Pi
        nvSww03Olxmz9HCR1z1Hhw2kk+RcEli2HdINtfzzZcO4iheI9QQ9wQfY6zTw01RiaAI+Hc
        DhOdk+BiRoa3/YpSqtwg0rmaM3s4G2g=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-203-XuQU9pWeOGaimTIkO1EgMA-1; Mon, 21 Mar 2022 02:10:59 -0400
X-MC-Unique: XuQU9pWeOGaimTIkO1EgMA-1
Received: by mail-pj1-f70.google.com with SMTP id mq8-20020a17090b380800b001c6f8962e95so1313156pjb.1
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 23:10:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=odBINnMgIi0tgmQ8mhF4tk+Kj1bfTM5xyu8TMVAPo04=;
        b=onACQnKBEGv/IhX4gOxuD131WktdQirwpcfcONOiwEwKCpwunRGaCmf40RA4NUMVAL
         DuR1s2BYnsRu85wZMyNWoEx5Z2SdHRGRW5xyHux3H8DdDcNCHZYHZqHjpNvbNTDFksgD
         pp2UJihMv7XMurRJ5EE+HMoQZcf1v/XkX842A48LvHMptPxaC/agwlpl4CyF7jdT2KdC
         2d7rhTi59Y6cl6FvJjEmG4NmMhKOs1ENi2I/KgRsrxfm4lauaxrwcxzcAj+aU9tBoOe1
         txx4bAOg8cfH2hf4O0lHFBTWwHeMxO36jbZXL8hHSiq4wXIv3HGIZ3w6qoHqEsmceyZz
         U4rg==
X-Gm-Message-State: AOAM532l4hB7hUAE0egzFgSsB7K5lfjFn4FSVErmXK+QnWjpLFw/saqD
        6/SNc2+eZ/wSRiLJ9z+T8xYqsBZWOGWhpDprB/hg6V3xeSOtdQy6n9s8lwlp/PreHS5DpvMDlzZ
        eKahuQUverQgnq3SI3kQZ
X-Received: by 2002:a17:903:3014:b0:153:a200:fb5 with SMTP id o20-20020a170903301400b00153a2000fb5mr11234654pla.25.1647843058485;
        Sun, 20 Mar 2022 23:10:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy4nBZxz0/jlFlP6K79zZR1DPic/SPTE+MsIPT9iiUjWK0KlRkg2Czy6k20MK9pMR111MHYeg==
X-Received: by 2002:a17:903:3014:b0:153:a200:fb5 with SMTP id o20-20020a170903301400b00153a2000fb5mr11234637pla.25.1647843058174;
        Sun, 20 Mar 2022 23:10:58 -0700 (PDT)
Received: from xz-m1.local ([191.101.132.87])
        by smtp.gmail.com with ESMTPSA id m123-20020a633f81000000b0038256b22e74sm4753853pga.82.2022.03.20.23.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Mar 2022 23:10:57 -0700 (PDT)
Date:   Mon, 21 Mar 2022 14:10:52 +0800
From:   Peter Xu <peterx@redhat.com>
To:     Ian Abbott <abbotti@mev.co.uk>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Subject: Re: [PATCH] ioctl_userfaultfd.2: Corrections for returned .ioctls
 members
Message-ID: <YjgW7L77+Y2fylcR@xz-m1.local>
References: <20220318191343.72812-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220318191343.72812-1-abbotti@mev.co.uk>
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Mar 18, 2022 at 07:13:43PM +0000, Ian Abbott wrote:
> Support for the `UFFDIO_WRITEPROTECT` operation is not indicated in the
> `ioctls` member of `struct uffdio_api`.  It is indicated in the `ioctls`
> member of `struct uffdio_register` along with indications of support for
> the `UFFDIO_COPY`, `UFFDIO_WAKE` and `UFFDIO_ZEROPAGE` operations (and
> also the `UFFDIO_CONTINUE` operation supported since Linux 5.13 but
> that is not documented by this man page yet.)

I thought it should have landed but indeed it's not.  Copying Axel.

> 
> Fixes: f559fa36a678 ("ioctl_userfaultfd.2: Add write-protect mode docs")
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>

The patch looks correct to me, thanks for fixing it.

Acked-by: Peter Xu <peterx@redhat.com>

> ---
>  man2/ioctl_userfaultfd.2 | 27 ++++++++++++++++++++-------
>  1 file changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index 504f61d4b..e930af520 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -235,11 +235,6 @@ operation is supported.
>  The
>  .B UFFDIO_UNREGISTER
>  operation is supported.
> -.TP
> -.B 1 << _UFFDIO_WRITEPROTECT
> -The
> -.B UFFDIO_WRITEPROTECT
> -operation is supported.
>  .PP
>  This
>  .BR ioctl (2)
> @@ -333,8 +328,26 @@ If the operation is successful, the kernel modifies the
>  bit-mask field to indicate which
>  .BR ioctl (2)
>  operations are available for the specified range.
> -This returned bit mask is as for
> -.BR UFFDIO_API .
> +This returned bit mask can contain the following bits:
> +.TP
> +.B 1 << _UFFDIO_COPY
> +The
> +.B UFFDIO_COPY
> +operation is supported.
> +.TP
> +.B 1 << _UFFDIO_WAKE
> +The
> +.B UFFDIO_WAKE
> +operation is supported.
> +.TP
> +.B 1 << _UFFDIO_WRITEPROTECT
> +The
> +.B UFFDIO_WRITEPROTECT
> +.TP
> +.B 1 << _UFFDIO_ZEROPAGE
> +The
> +.B UFFDIO_ZEROPAGE
> +operation is supported.
>  .PP
>  This
>  .BR ioctl (2)
> -- 

-- 
Peter Xu

