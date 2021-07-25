Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7E6A3D5002
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbhGYUKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUKO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:10:14 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82DD4C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:50:44 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id n12so5039631wrr.2
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ezQjCKJTJOWr5StpRzTP3VCXeVNSgLkMCWeSwPNRK3o=;
        b=mojTZZzGCCPYUNUkwkzSQL7a9buR/uPhSW/aeAy5oE+vlfusb7F/mqSelhaeyqwT+L
         krHcZvaMrMrlL5gcJzBqDM8MKmJN2ygCmas9v/sl9JHz6shU5hxRUASBLDDcASYdw2I+
         a5iwelHVunFTcO/ReR0OEL6tSxMBXPhUKHHE2dQhecW1vZiKELJuwDBqVavgCnnbNtkJ
         n/PA34wUPv/8slmKybqzJSKakRAN/LQ9VL5r7Z56fVtoyxDw2XP1qz84tq3kz4SDPDPT
         nwwdmTh1P3GXEtpzm4AmplH7gFoTY2ZO501PswfN7DLJuWbK8YybqQWN7lJSvPar/JEa
         NVgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ezQjCKJTJOWr5StpRzTP3VCXeVNSgLkMCWeSwPNRK3o=;
        b=cp7HFwGb8UIEmWtfH5cWQ2NCfusMRKMYWXZiYhBDqQOQ8i1RFr+5cHoNY+/lrVTogk
         qR2+Qx30c466JdRQJuwDMxc413VmltupGkfa0A2gCjs7IBHSg9DlgrVV7SyGpRVkUjYH
         nuulHxg3Q5OKFQRczS2YmZkYBxaHhgva7Zu6jfC8L5Dg/pEIAMEJCfYLmUh+xldES889
         tuhUu7Ctwrimk923nkc5WGLg6KbZE9pbXipLN4VnZvFuAb5WoEpXdDxHDlMJFa4mQfIt
         IWrkexudQcE/yaCxOjM1vgbCfQHd0h1/QJNkHiCUwwd1CSumM+r7ARVllNqRw+hDVpZU
         pHMA==
X-Gm-Message-State: AOAM530D6nnW6NNgJ/yKll4jICpeaWR7Cmp4rEO3YhRfQ0ONB1X2YVbk
        IEyoneH5Gcqz08V3eitY0KS5rs2h4JE=
X-Google-Smtp-Source: ABdhPJxt/OnWoAgH9eusmYcrDwVGiJZppYCSTBgQkLUl1Tu2FjrFipap84oSF5OlVjFVx/pPzLyBsQ==
X-Received: by 2002:a5d:6d86:: with SMTP id l6mr16003058wrs.260.1627246242552;
        Sun, 25 Jul 2021 13:50:42 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l18sm11412207wme.29.2021.07.25.13.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jul 2021 13:50:42 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH] swapon.2: Document NOSWAP and additional DISCARD flags
To:     Evan Green <evgreen@chromium.org>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        linux-man@vger.kernel.org
References: <20210722212120.3060163-1-evgreen@chromium.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <29fd5622-1b2b-4aef-217d-e49b487a53bb@gmail.com>
Date:   Sun, 25 Jul 2021 22:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210722212120.3060163-1-evgreen@chromium.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Evan,

On 7/22/21 11:21 PM, Evan Green wrote:
> Fix the FIXME and finally document SWAP_FLAG_DISCARD_ONCE and
> SWAP_FLAG_DISCARD_PAGES from Linux 3.11. Additionally, document
> SWAP_FLAG_NOSWAP, a shiny new flag being introduced in Linux 5.14. See
> the following link:
> 
> https://lore.kernel.org/lkml/20210721143946.v3.1.I09866d90c6de14f21223a03e9e6a31f8a02ecbaf@changeid/
> 
> Signed-off-by: Evan Green <evgreen@chromium.org>

Discarded as requested :)

However, please see a few comments below.

Thanks,

Alex

> ---
>   man2/swapon.2 | 33 ++++++++++++++++++++++++++-------
>   1 file changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index 07d5fe86c..d568da993 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -33,13 +33,10 @@
>   .\" 2004-12-14 mtk, Anand Kumria: added new errors
>   .\" 2007-06-22 Ivana Varekova <varekova@redhat.com>, mtk
>   .\"     Update text describing limit on number of swap files.
> +.\" 2021-07-22 Evan Green <evgreen@chromium.org>
> +.\"     Document _DISCARD_ONCE, _DISCARD_PAGES, and _NOSWAP flags.
>   .\"
> -.\" FIXME Linux 3.11 added SWAP_FLAG_DISCARD_ONCE and SWAP_FLAG_DISCARD_PAGES
> -.\"	commit dcf6b7ddd7df8965727746f89c59229b23180e5a
> -.\"	Author: Rafael Aquini <aquini@redhat.com>
> -.\"	Date:   Wed Jul 3 15:02:46 2013 -0700
> -.\"
> -.TH SWAPON 2 2021-03-22 "Linux" "Linux Programmer's Manual"
> +.TH SWAPON 2 2021-07-22 "Linux" "Linux Programmer's Manual"

The .TH line is updated with a script, so we don't touch it manually.

>   .SH NAME
>   swapon, swapoff \- start/stop swapping to file/device
>   .SH SYNOPSIS
> @@ -81,9 +78,23 @@ flag is specified in the
>   argument, freed swap pages will be discarded before they are reused,
>   if the swap device supports the discard or trim operation.
>   (This may improve performance on some Solid State Devices,
> -but often it does not.)
> +but often it does not.) In conjunction with this flag, callers may add


See the following extract from man-pages(7):

$ man 7 man-pages | sed -n '/Use semantic newlines/,/^$/p';
    Use semantic newlines
        In the source of a manual page,  new  sentences  should  be
        started  on new lines, and long sentences should split into
        lines at clause breaks (commas, semicolons, colons, and  so
        on).   This  convention,  sometimes known as "semantic new‐
        lines", makes it easier to see the effect of patches, which
        often  operate at the level of individual sentences or sen‐
        tence clauses.


> +.B SWAP_FLAG_DISCARD_ONCE
> +to perform a single discard over the entire region at swapon time, and/or
> +.B SWAP_FLAG_DISCARD_PAGES
> +to perform discards as swap pages are freed. If neither is specified,
> +both are assumed.
>   See also NOTES.
>   .PP
> +If the
> +.B SWAP_FLAG_NOSWAP
> +flag is specified in the
> +.BR swapon ()
> +.I swapflags
> +argument, then the added swap region will not be eligible for regular
> +swap activities. It can still be used for hibernate, enabling callers
> +to steer the swap and hibernate regions independently.
> +.PP
>   These functions may be used only by a privileged process (one having the
>   .B CAP_SYS_ADMIN
>   capability).
> @@ -201,6 +212,14 @@ which still discards the
>   entire swap area when
>   .BR swapon ()
>   is called, even if that flag bit is not set.
> +.PP
> +.B SWAP_FLAG_DISCARD_ONCE
> +and
> +.B SWAP_FLAG_DISCARD_PAGES
> +were introduced in Linux 3.11.
> +.PP
> +.B SWAP_FLAG_NOSWAP
> +was introduced in Linux 5.14.
>   .SH SEE ALSO
>   .BR mkswap (8),
>   .BR swapoff (8),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
