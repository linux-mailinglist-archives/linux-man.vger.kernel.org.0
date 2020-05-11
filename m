Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 265151CE26D
	for <lists+linux-man@lfdr.de>; Mon, 11 May 2020 20:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731111AbgEKSRv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 May 2020 14:17:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1731109AbgEKSRu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 May 2020 14:17:50 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D53C061A0C
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 11:17:49 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id h15so6528644edv.2
        for <linux-man@vger.kernel.org>; Mon, 11 May 2020 11:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=kJCUhDqKmCHHgZT7szpLIKH3X2Gx3EXa5T8KHwATKgo=;
        b=tG2OZR/uYJUxFPRA0ebViqNVhs4GMbIlc6vjsH5m/5If/rQ3NlgFZoLXZbbp/Ha4r3
         zsB/VLw5yc8Ak8Qn7DJHofHmPlVHk7myQv8n3Fo/A9j1pul9ghJBaz0DfnJH6222zzRs
         Wwm98+M0Ytb1MSelB37uvnOAwqVBhPW3EkBS8WZ83it7zYH7Z4r4RsT/E/5U/wMqVsa2
         OVQzUFKdrTNoY9TDDJMDxwLn51EMa9zTBpUoOtg5Nz7fM1nYpD/ZjtcMZlZIRlFOrSpz
         WQGr6RvRsdRWKCdLl2wDgMcqpSZx+H5rFJE06xV8jqd8UPzQZLB3c47o0ti0P0GE7IjX
         6Mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=kJCUhDqKmCHHgZT7szpLIKH3X2Gx3EXa5T8KHwATKgo=;
        b=hjKAObKEOH9ud3G2P3c/ZUWsUf2jtx3BRC4wM7RmCC1qxotn5E42VI8M30tOd7or1u
         dyPMWtH4E12XVk9xCIuZk9xBWfgYHNcnD4Lrtzm8/BggVPo5BIJ6+k5jBprfdRKPvdbe
         ngQK0wWeRz8f/ZlZ5D1+Zy607WJPCyGFE8GE48H0m8Bbr738P32Pj9Cpki8EbZH4UjXI
         e5b0vJ9Za7uLgVwms0h6+NFiZIrQYvODp1nWzAGfTKPs/NLQkbDvfZO9AnpXTQNo2KDw
         1FTVdHR4umZdTxIlzwIeJynyGwvILP6OqmLAN9Yik6Vz/fuz77q8b7ssPiMjr1rs2mCQ
         Cw9A==
X-Gm-Message-State: AOAM532/u7lrizIzW+HzOQRL/Z8x0IhExKRB55HvAoMIKKd4YxCG7kQZ
        7oKONlrYBwiq2ORyvdU+uZ23nvsJGkcKotQTUJmtpw==
X-Google-Smtp-Source: ABdhPJwkFyZz8yBkOzRjZdykc+C2GqhICcCMxyxaBEUCHMJ+g1MBeZ5YBgv8VZ75HpnkvUBbIFXGVkknUO4pY8tApcw=
X-Received: by 2002:aa7:cb4f:: with SMTP id w15mr2544317edt.239.1589221067962;
 Mon, 11 May 2020 11:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200511175826.1529435-1-kolyshkin@gmail.com>
In-Reply-To: <20200511175826.1529435-1-kolyshkin@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 11 May 2020 20:17:36 +0200
Message-ID: <CAKgNAki+-nEergMEFJdU2_TPUC+9x9YX8w8UdGb1vyP_Jex2WA@mail.gmail.com>
Subject: Re: [PATCH] setenv.3: wfix
To:     Kir Kolyshkin <kolyshkin@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kir,

On Mon, 11 May 2020 at 19:58, Kir Kolyshkin <kolyshkin@gmail.com> wrote:
>
> Both functions behave the same wrt return value, no need to describe
> them separately.

Indeed. Patch applied.

Thanks,

Michael

> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man3/setenv.3 | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/man3/setenv.3 b/man3/setenv.3
> index cd4fbcd6a..82acb0ce9 100644
> --- a/man3/setenv.3
> +++ b/man3/setenv.3
> @@ -104,16 +104,10 @@ If
>  does not exist in the environment,
>  then the function succeeds, and the environment is unchanged.
>  .SH RETURN VALUE
> -The
>  .BR setenv ()
> -function returns zero on success,
> -or \-1 on error, with
> -.I errno
> -set to indicate the cause of the error.
> -.PP
> -The
> +and
>  .BR unsetenv ()
> -function returns zero on success,
> +functions return zero on success,
>  or \-1 on error, with
>  .I errno
>  set to indicate the cause of the error.
> --
> 2.26.2
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
