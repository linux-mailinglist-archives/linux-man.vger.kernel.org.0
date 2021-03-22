Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01F90345233
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCVWGu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:06:50 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:49911 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229673AbhCVWGn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:06:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616450803;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=F0xmtxsbrSY/EqwRbgt4RPB4j15Yx4zHQ1t04X/H0aY=;
        b=ZbHfY9Cy1pjTpqMY+9RcTceYU9hwZ+YUlg2tBjSvVloVJD0Tpk22FjfLtMF6C8Zkho8UtU
        Ryau3ThyvMVIrbQLonP7i/bqnDWwyEDTxqrWEtKP3EzLk8bb+ZzsfsAxg26dLl53CT9fCr
        2GIoKWdvGTGUK8sqyjcni9s2XMDSXT0=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-268-9wMfhOAfOA2oUEnB_eAXBQ-1; Mon, 22 Mar 2021 18:06:39 -0400
X-MC-Unique: 9wMfhOAfOA2oUEnB_eAXBQ-1
Received: by mail-qk1-f200.google.com with SMTP id v136so557625qkb.9
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 15:06:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=F0xmtxsbrSY/EqwRbgt4RPB4j15Yx4zHQ1t04X/H0aY=;
        b=AVAOJJd/6YvcpvxotUFj+KE24D9abCn5a/5ycWrXYvk8f7vM1w0DsylG/5FUE3bIfB
         9hNYfve3uDbCNHjPVUBL1mE35jujqYBEWxubRKrlzIZM11tX5F+HVGqkL9hVu/NyzzRB
         J1AYYvp9ZH9fcrKZuj9mI2LSUWChre6knoZOF32FHbzjk3ZoEOeL8C6rDREs6iG1r5uX
         HT5zFobuxlxT4zg5Lbvx3OCeI084mzYWMmS/+XEenObJhDC6z/V6d5GAJCg6me67JB7q
         /AmJEVx2MqwjybKqXtwt0Gdc0QvI5vkQJUbEyhuz3uYrIvcfdrEJ15A5p+V0BY27o20h
         x86Q==
X-Gm-Message-State: AOAM532r1uoz7OoibuDHYQ059f+O0j0jt4nlzMh3wFZGkrThEbsXcEGR
        BVipOhrSVLsYu+XJ/Lj9zjxRTgn1iyooA0L8zc1ei3LN4Z/Nral29TRRmZnwG2qps4D7A7DFQQA
        xJBDROAnJNIAXPaONkf83
X-Received: by 2002:a05:620a:13a6:: with SMTP id m6mr2400192qki.64.1616450798823;
        Mon, 22 Mar 2021 15:06:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBNVJY3fOU+3jm44Dl1dmP6P13HIl+FnxCKWahujf02BY3Hnwz4gLC5NeCUL7ioqbJgIVFxw==
X-Received: by 2002:a05:620a:13a6:: with SMTP id m6mr2400163qki.64.1616450798573;
        Mon, 22 Mar 2021 15:06:38 -0700 (PDT)
Received: from xz-x1 (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id 85sm12351357qkf.58.2021.03.22.15.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 15:06:37 -0700 (PDT)
Date:   Mon, 22 Mar 2021 18:06:36 -0400
From:   Peter Xu <peterx@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: Re: [PATCH v3 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Message-ID: <20210322220636.GI16645@xz-x1>
References: <20210310222300.200054-1-peterx@redhat.com>
 <20210310222300.200054-5-peterx@redhat.com>
 <5c533ba3-f335-0681-223f-bf2202a9b72a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5c533ba3-f335-0681-223f-bf2202a9b72a@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Mar 19, 2021 at 11:37:20PM +0100, Alejandro Colomar (man-pages) wrote:
> Hi Peter,

Hi, Alex,

> > +generate another write-protect userfault message.
> > +This is only used in conjunction with write-protect mode when both missing and
> 
> "when both missing"
> 
> both what?

I modified it to:

        This is only used when both
        .B UFFDIO_REGISTER_MODE_MISSING
        and
        .B UFFDIO_REGISTER_MODE_WP
        modes are enabled for the registered range.

And I fixed all the rest, including all the comments in patch 3.

Thanks for looking, I'll repost shortly.

-- 
Peter Xu

