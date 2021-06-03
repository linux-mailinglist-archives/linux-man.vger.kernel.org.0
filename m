Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66E4839AAF2
	for <lists+linux-man@lfdr.de>; Thu,  3 Jun 2021 21:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbhFCTav (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Jun 2021 15:30:51 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:41194 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229719AbhFCTav (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Jun 2021 15:30:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1622748546;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=x/gj4fleOURiB06FpwTyo6dG+WTMtW3dGT0Tg+4lxHw=;
        b=eCE85GiJ3yiqHNWHzIL5gz6Tuvuxkg/sPbkQ9xg/aPxQUoDurNtJ3QKEM2fKB4mkQEiASt
        74rDk/qopat1swMhxm4K8yEYN3wGtt3GahCMNHceuXeecosnotwU2xKyzK2CnkIMZYmZbQ
        NgvKJpmc1NfzroJiP9BxVJTFOoM2fII=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-qHzgqUCHO3ydxYOCfgKbQw-1; Thu, 03 Jun 2021 15:29:00 -0400
X-MC-Unique: qHzgqUCHO3ydxYOCfgKbQw-1
Received: by mail-qv1-f72.google.com with SMTP id w4-20020a0c8e440000b02901f0640ffdafso5172230qvb.13
        for <linux-man@vger.kernel.org>; Thu, 03 Jun 2021 12:29:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=x/gj4fleOURiB06FpwTyo6dG+WTMtW3dGT0Tg+4lxHw=;
        b=su8rrap/gakT83XsEsIC7DtlI0TXJK49sjIPtbtpegWNmCxql8WaxYo2XLo9axWe6j
         60S/dJOTomCUJpehNJ/JLTKsAPLmR6O6nLjAN9i8pOdiHIvXqdaPUuN0CYYR/1ZeD9mL
         Xdy12CHdfl9dGQusfmgsenZIXMqxBwiBGtLVCeXl1DtfWulmq+3BSf2jOIqjxZBE82Ko
         hxEJgxn3abWmi4fxLiWYGYR5hodYuWzKyDu6JV0/L5GoYZBpFuHO+XYWx8IXzK8JpQEe
         InJsk+m3B4xk1F216LdKNfiaFax5Nw0e3yKcBvws5YuwhJrZZezRLz6YwL3T3jEbvFyo
         g/kw==
X-Gm-Message-State: AOAM531wTNPyYREO3nX+Ja1BKylL48nmLSIi/Sbln5mrm0COYyTZb6IS
        F0UzDTjGnzVw5I1EVJVqCXKk+ojui4Lo/Cmv3W732ANjIUGJd4wwbA8bOa6i4jJiiQwm5Py4aMb
        vkuYvjEXUb2WTvlBAQ5fO
X-Received: by 2002:a05:620a:448c:: with SMTP id x12mr839817qkp.52.1622748539795;
        Thu, 03 Jun 2021 12:28:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLUjjqgS6V5SzDAJv1efAuEwlyGvFi855kq2nrnnQnLUOJ5tlxqeQcaZvh3Y3jB/o7M29QhQ==
X-Received: by 2002:a05:620a:448c:: with SMTP id x12mr839796qkp.52.1622748539589;
        Thu, 03 Jun 2021 12:28:59 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-61-184-147-118-108.dsl.bell.ca. [184.147.118.108])
        by smtp.gmail.com with ESMTPSA id p12sm2476522qkm.23.2021.06.03.12.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 12:28:59 -0700 (PDT)
Date:   Thu, 3 Jun 2021 15:28:57 -0400
From:   Peter Xu <peterx@redhat.com>
To:     Axel Rasmussen <axelrasmussen@google.com>
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Hugh Dickins <hughd@google.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
        linux-mm@kvack.org
Subject: Re: [PATCH] ioctl_userfaultfd.2, userfaultfd.2: add minor fault mode
Message-ID: <YLkteUqSmXFxSJNt@t490s>
References: <20210603183216.939169-1-axelrasmussen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210603183216.939169-1-axelrasmussen@google.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jun 03, 2021 at 11:32:16AM -0700, Axel Rasmussen wrote:

[...]

Not a native speaker, feel free to take anything I said with a grain of salt..

> @@ -278,14 +287,8 @@ by the current kernel version.
>  (Since Linux 4.3.)
>  Register a memory address range with the userfaultfd object.
>  The pages in the range must be "compatible".
> -.PP
> -Up to Linux kernel 4.11,
> -only private anonymous ranges are compatible for registering with
> -.BR UFFDIO_REGISTER .
> -.PP
> -Since Linux 4.11,
> -hugetlbfs and shared memory ranges are also compatible with
> -.BR UFFDIO_REGISTER .
> +What constitutes "compatible" depends on the mode(s) being used, as described
> +below.

Would below be slightly better?

  Please refer to the list of register modes below for the compatible memory
  backends for each mode.

[...]

> @@ -735,6 +745,109 @@ or not registered with userfaultfd write-protect mode.
>  .TP
>  .B EFAULT
>  Encountered a generic fault during processing.
> +.\"
> +.SS UFFDIO_CONTINUE
> +(Since Linux 5.13.)
> +Used for resolving minor faults specifically.
> +Take the existing page(s) in the range registered with
> +.B UFFDIO_REGISTER_MODE_MINOR
> +and install page table entries for them.

"Take the existing page" reads a bit weird to me.  How about something like:
"Resolving minor-mode trapped page faults by installing page table entries with
pages in the page cache"?

[...]

> +.TP
> +.B EINVAL
> +An invalid bit was specified in the
> +.IR mode
> +field.
> +.TP
> +.B EEXIST
> +One or more pages were already mapped in the given range.

I'd think this sentence is good enough; slightly prefer dropping the latter one
"In other words..." below, as "mapped" should mean the same to me (and the
wording "fully mapped" is a bit confusing too..).

> +In other words, not only did pages exist in the page cache, but page table
> +entries already existed for those pages and they were fully mapped.

[...]

Thanks,

-- 
Peter Xu

