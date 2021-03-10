Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBA70334701
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:43:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231987AbhCJSnT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:43:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbhCJSmu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:42:50 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AD39C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:42:50 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id a18so24454944wrc.13
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GvZ2oPzvU/OA6Vb4CZ2E/1jqaQj7SYktoIIbPjMeMYE=;
        b=nzSe7AWr1qTSRoQvFBUVJ5vR96cbneZ4yTXQQuyKiObOq7oRSVzXgcmAmv0mHC5JTs
         p1ukKF5q1O28dGQpayOQydB+XAoi4ByReCW6w/sl7tETVVwd6nG+Si4RJbQIA1w1huFz
         40bKLEil3A6bmllcYb05JgGzpgq/U3Ma1WSJ99sBd9sw+u3phSU+9t1w34hvV/KHeVUc
         rgN75jGphEUVPvHmHHxky8kMXYPkNBJdCFEe+GalfpnuMzsPOtv84T5fB9aKsxqikvi3
         kw4JhoT6v9B9j8qWLzMsOQLSoIyoFxxZF4Z1/S8LzBB5lFh5z46iyzYZhlEyFaLSaFTM
         Ob8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GvZ2oPzvU/OA6Vb4CZ2E/1jqaQj7SYktoIIbPjMeMYE=;
        b=oMp26USrBPynyqS5PiZ5qyxJ+pUG1wXulCYhT+YU+FN+fOIAChd3zwJ//znKJ56haZ
         HcpyNzBwmiVnJyxsZSXnRmNdFX+dZZky2WLVu5oeJ7ZX5mLDUmRgxrtmd0w4mtmhoIdb
         8REfCEzHL2b/smiyISkBOboejWFaAhBAcMo16Z1KfFBPxKFLMWfAx4QftFD5m9RacOAM
         J7BR1tHlD+Xm9KLJtLJeuki342V/fZlWW/SW3/0lMyR2fKfywEkBTOc30JPCFYiCuCbt
         UmIvLoK7xCDwIvWRP5QxegOdJGW7T7ioLvF1NrmRz+N3sG5r9GMOKPHI7Pw26iQ196T7
         wiuw==
X-Gm-Message-State: AOAM533TxDIv+Ls2IOHPnPWZqSvg6V7qooJbNn12OcLBzf1fgYRHBB7H
        erlL2b6ebVsV56sHhYAfqi4=
X-Google-Smtp-Source: ABdhPJwnxq66vC5vDZg0YlTERwLi1bHjuX3Z9iqop3MbMBF81naop05JaDQUdKmsslpE7tsi9uC9jQ==
X-Received: by 2002:adf:edc3:: with SMTP id v3mr4740577wro.79.1615401769318;
        Wed, 10 Mar 2021 10:42:49 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id f16sm215474wrt.21.2021.03.10.10.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 10:42:48 -0800 (PST)
Subject: Re: [PATCH] man2/set_mempolicy.2: Add mode flag MPOL_F_NUMA_BALANCING
To:     Huang Ying <ying.huang@intel.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Mel Gorman <mgorman@suse.de>
References: <20210301024555.85484-1-ying.huang@intel.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <33c65959-ac1d-8a4c-1793-868b456e0116@gmail.com>
Date:   Wed, 10 Mar 2021 19:42:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210301024555.85484-1-ying.huang@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Huang Ying,

On 3/1/21 3:45 AM, Huang Ying wrote:
> In Linux kernel 5.12, a new mode flag MPOL_F_NUMA_BALANCING is added
> to set_mempolicy() to optimize the page placement among the NUMA nodes
> with the NUMA balancing mechanism even if the memory of the
> applications are bound with MPOL_BIND.  This patch update the man page
> for the new mode flag.
> 
> Related kernel commits:
> bda420b985054a3badafef23807c4b4fa38a3dff
> 
> Signed-off-by: "Huang, Ying" <ying.huang@intel.com>
> Cc: "Alejandro Colomar" <alx.manpages@gmail.com>
> Cc: "Michael Kerrisk" <mtk.manpages@gmail.com>

Sorry for the delay.  Patch applied.

Thanks!

Alex

> ---
>   man2/set_mempolicy.2 | 34 ++++++++++++++++++++++++++++------
>   1 file changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index 6e695fb13..cd543667f 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -98,6 +98,28 @@ The supported
>   .I "mode flags"
>   are:
>   .TP
> +.BR MPOL_F_NUMA_BALANCING " (since Linux 5.12)"
> +When
> +.I mode
> +is
> +.BR MPOL_BIND ,
> +enable the kernel NUMA balancing for the task if it is supported by
> +the kernel.
> +If the flag isn't supported by the kernel, or is used with
> +.I mode
> +other than
> +.BR MPOL_BIND ,
> +\-1 is returned and
> +.I errno
> +is set to
> +.BR EINVAL .
> +.TP
> +.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
> +A nonempty
> +.I nodemask
> +specifies node IDs that are relative to the set of
> +node IDs allowed by the process's current cpuset.
> +.TP
>   .BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
>   A nonempty
>   .I nodemask
> @@ -107,12 +129,6 @@ Linux will not remap the
>   when the process moves to a different cpuset context,
>   nor when the set of nodes allowed by the process's
>   current cpuset context changes.
> -.TP
> -.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
> -A nonempty
> -.I nodemask
> -specifies node IDs that are relative to the set of
> -node IDs allowed by the process's current cpuset.
>   .PP
>   .I nodemask
>   points to a bit mask of node IDs that contains up to
> @@ -293,6 +309,12 @@ argument specified both
>   .B MPOL_F_STATIC_NODES
>   and
>   .BR MPOL_F_RELATIVE_NODES .
> +Or, the
> +.B MPOL_F_NUMA_BALANCING
> +isn't supported by the kernel, or is used with
> +.I mode
> +other than
> +.BR MPOL_BIND .
>   .TP
>   .B ENOMEM
>   Insufficient kernel memory was available.
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
