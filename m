Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40C2531C2E0
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbhBOUMq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:12:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbhBOUMp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:12:45 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49CBFC061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:12:05 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id n8so10426128wrm.10
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fAPrIlgCsCRJdQWlGZn4bFuAuD99bJ1RNGx7UokgoYY=;
        b=b8cSTGTzUCjweqQzvnUG1yapVDCewhwBDfVoLePtebLzPNbKzzcqvwzJJLVTqdIJQ7
         CBU0h76bwHQhDNyROl+T+hHDttb5sYZ0rYMEhHZvH/ecwo5dvuXuh5pNpZNcStGnLXoi
         uAQvY3HoosaPr8WHcjax7oV9ba3pp7Lkd6Jbf4jDueI0u27o98WS3SF6WZ9zSS2LO73Q
         3DsAjyqCjh2krhcwMJJKq2c0IFwyA5JJmXUSTWHl2O8Tp8Tl5i5LMQ7fwmRffg0pOW31
         f/XyJ/mC0OR1CDQgu2/uBCDfBbmwhkzrne4qIDndmC98LF/a/HQ8En2Hx/bah1b+uLOZ
         SNtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fAPrIlgCsCRJdQWlGZn4bFuAuD99bJ1RNGx7UokgoYY=;
        b=WywLA1z5LV3Jhi6TzFtsyZWXW3WBCP+VuXxvdCjNlevHKgtSDowgYYu3JEF1kTdAVs
         wq73EiXtUk4QALXRUzq/K9oIl33hsEp9icgoUkUMJr7CFFqojwzroUu9g/suqXAjSCUa
         KNzYxnToAXeY4Q0oC7/DZpaUkNaVq8+bHcDUfups7Mrnxnex8Np6p+NjbozfipgiyFJn
         JkIsNtr+o1mzeQojxI4mBHVbP1brp6thwCiiNCLzKJXNVo/dn4a8f2fYCQT5yOHsQE55
         GDnxQScpO1mxgb/kCKRUrcAN/PlBKaK5rXxEbsGQzfQtE6jsddXMFdh+jvMBYhKy7kJb
         6D1w==
X-Gm-Message-State: AOAM530fV+kxqobTuREU1dGpD0Pn0oOj/iZuZ1zMpSc8CM2RZdhtZE0d
        n5CWmpxmjP1xRmh2upOy58vlPseX2Hh8yg==
X-Google-Smtp-Source: ABdhPJymWH1NSljXbVQoBMJuphJBckaHnCJX1jZ9b+qboCQykJWfIelx5+CsUiyUHTqiObu6GqkguA==
X-Received: by 2002:a5d:4708:: with SMTP id y8mr20383950wrq.402.1613419923915;
        Mon, 15 Feb 2021 12:12:03 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id r17sm3381937wrx.82.2021.02.15.12.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:12:03 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] lookup_dcookie.2: Use standard types: u64 -> uint64_t
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c593e67d-9062-3d8c-2745-f6078b42aaed@gmail.com>
Date:   Mon, 15 Feb 2021 21:12:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/lookup_dcookie.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/lookup_dcookie.2 b/man2/lookup_dcookie.2
> index e38ca89a4..9180c1d42 100644
> --- a/man2/lookup_dcookie.2
> +++ b/man2/lookup_dcookie.2
> @@ -29,7 +29,7 @@
>  lookup_dcookie \- return a directory entry's path
>  .SH SYNOPSIS
>  .nf
> -.BI "int lookup_dcookie(u64 " cookie ", char *" buffer ", size_t " len );
> +.BI "int lookup_dcookie(uint64_t " cookie ", char *" buffer ", size_t " len );
>  .fi
>  .PP
>  .IR Note :


Thanks! Patch applied.

Cheers,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
