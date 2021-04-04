Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79CEA35397C
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 21:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbhDDT3J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 15:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231284AbhDDT3J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 15:29:09 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3BEC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 12:29:02 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id qo10so3850967ejb.6
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 12:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HiAma/qe4iIIrWu6pHYC3rIKh/v2lyq0uR0iXhX0v3g=;
        b=Ho4KnOUHr2c0FYLtF4NRgaY3D54hIKdiLCpouOm3b5rHMS4BzBsvr1TJYNUZT1QwXd
         /4mFc9XreK9QqzyvHr4RGBdIRVGOotIzBQFzH4I/hgPk5uUTwWXW3Tgmbx+edxJzu0pg
         cHz22iXRf08/3iE6upJqmfJbGWFEGZV6+I2b4r8DskJTIfF+6P2UgFJp/vhM7LdcvCuI
         Xgw9HHDP+baduTrDHOhl3TpWSTt6CJ6xntgSPSwn1QHiDsh6Qzlan2NQBkhhq+S0igKc
         /2RLXTNE2DMFhAsC70VZW4JmZpn87OPeSPI5nuMV6CjJxVtLDeQop8+WThWcIXX6Ib0u
         WQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HiAma/qe4iIIrWu6pHYC3rIKh/v2lyq0uR0iXhX0v3g=;
        b=VuFksBu/7JVfmEtbZtIVYyYhRZg+PsCjUgF4qXDTVVSnGotPW3POpstwaMueS8OXj8
         pHU9/vhszW8nPcPzj81iue+YRZ10KvlszqgCEupbHrGRW0saaCqT2xgMlBwEv6Ih8UNs
         NzeyHPqmO/Z+10jDr9v9TV1Y7lv2FEUazhYyLyvuVdHCt9zhhDGJ4iGK0k4SyzQuf86Y
         RxbdS8EPsyPhARewqM0snx2246Glyw5gmgo+gcSs+AEIQxKqHR/wov3JrXc4S3PgAMFn
         x0tMUXBzOdA+brfhtA5vxt4hX4rZeckD7ldBZwST+J5ualyaPp7EwNuUBzr7BcMXfCYU
         9w7w==
X-Gm-Message-State: AOAM5333I3/BehpqbePyv2iib45u2JVHlTQC+/0GGcgWxZjucop2AG7T
        28+uk0fAebfsQp4p+ZHobLU=
X-Google-Smtp-Source: ABdhPJzusDcbdbdeHIAjfC7xTN29Ii/JTvRBLRFRytcY1H4DNjBSt0uD9ioSCFCWmr92rDnpI9rNhA==
X-Received: by 2002:a17:907:7014:: with SMTP id wr20mr25029464ejb.179.1617564541239;
        Sun, 04 Apr 2021 12:29:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id s9sm8657094edd.16.2021.04.04.12.28.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 12:29:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-mm@kvack.org
Subject: Re: [patch] Clarify that MAP_POPULATE is best-effort
To:     Bruce Merry <bmerry@ska.ac.za>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <20210323074831.GA7535@kryton.kat.ac.za>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <36f6ac8a-e746-5546-5354-35b86dcff4ca@gmail.com>
Date:   Sun, 4 Apr 2021 21:28:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210323074831.GA7535@kryton.kat.ac.za>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bruce,

On 3/23/21 8:48 AM, Bruce Merry wrote:
> As discussed on linux-mm
> (https://marc.info/?l=linux-mm&m=161528594100612&w=2), MAP_POPULATE can
> fail silently if the hugetlb cgroup settings allow huge page reservation
> but prevents huge pages being allocated.
> 
> Closes https://bugzilla.kernel.org/show_bug.cgi?id=212153.
> ---
>  man2/mmap.2 | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/man2/mmap.2 b/man2/mmap.2
> index 164ba196e..03f2eeb2c 100644
> --- a/man2/mmap.2
> +++ b/man2/mmap.2
> @@ -400,6 +400,11 @@ private writable mappings.
>  Populate (prefault) page tables for a mapping.
>  For a file mapping, this causes read-ahead on the file.
>  This will help to reduce blocking on page faults later.
> +The
> +.BR mmap ()
> +call doesn't fail if the mapping cannot be populated (for example, due
> +to limitations on the number of mapped huge pages when using
> +.BR MAP_HUGETLB ).
>  .BR MAP_POPULATE
>  is supported for private mappings only since Linux 2.6.23.
>  .TP

Thanks. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
