Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73FAB3539AA
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 22:08:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231438AbhDDUIT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 16:08:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbhDDUIT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 16:08:19 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B43CEC061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 13:08:13 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id f8so6594924edd.11
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 13:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IHqXevkW8mXcQqqcCSXjOLlGrwL3u2Vswhn5TbWqvpM=;
        b=d7NcM4vsh9ZuNHBezlLWRr3zzo1S08QLjv8nUaLiGioZ7L3uGC4nRvw+zBMpl98HYF
         0MR2upoXnIRP7diWwYX+IExZe3LVQWivjZ4jYvIpCZ2GsY9nmp5HyHGFTi0mGujUdKoH
         ZqaLNsYrJ/QbU0dn6y2/F/1T8WnNDgXHRtKlkEQ35qA9eJz4qdk/kC8T+GJ7UNjJQbKb
         eyBsNBktmhLTscZA6raOj8of/K8oJHllPBGmrdvFy3pfoqBcdDKBr6iap7rym3MMnR9G
         tlPSW5thmG4auDk+vA46upQGK6uME1pIg3hJY0kFLBVWOt155QkpnMt2YGXM1UddCywX
         QHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IHqXevkW8mXcQqqcCSXjOLlGrwL3u2Vswhn5TbWqvpM=;
        b=InFGBgxeknMb0Sebb3KIFIpaLCsq3hdBeMyHiz02mqYQErM3GsmAFZEVmslWh3otNH
         hyzM4ezs55PlYvjvECFWcsNcLjXSCJNjYrJ9hq8HZF9fj1KmO9klatlS8JTuPqelvi8t
         uJ9IWovmETMTxa1urOLf/I25nsLfosWYSu08FTUzD28tf0fpQ9P8WJinp2l4JRNj352H
         3IgTxzui2VZdZuS5U8X4F5JGy3Iae0vKp0aNqC61NrWdwVfDxs4S2bgesxz5hGGGWteG
         YUQ35oFoaTSQCzAU85/ja7y0dEiiUgF01EuQJVfi4s33ABvOXnoF4LgBN7I6TbAn4S6X
         aQHw==
X-Gm-Message-State: AOAM532HCNpZKw+9ejtPeM8xk2WfuSLs/LbnA+LTJmI+ww7Q06TX4x76
        uYy/XUSRBUlcysBZPkS7S9Xffyv0M0g=
X-Google-Smtp-Source: ABdhPJwQUU2Yudv9WdsJscW5CohJCIaocotcBFNfJMlJqeITHV4l40obhgJiEYAYgdhqKh76rjHSyw==
X-Received: by 2002:a05:6402:4386:: with SMTP id o6mr29067375edc.307.1617566892101;
        Sun, 04 Apr 2021 13:08:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id fi11sm7116009ejb.73.2021.04.04.13.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 13:08:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Huang Ying <ying.huang@intel.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/set_mempolicy.2: Add mode flag MPOL_F_NUMA_BALANCING
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ca42ca36-11e5-7d33-f1bd-13098d8562c9@gmail.com>
Date:   Sun, 4 Apr 2021 22:08:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> From: Huang Ying <ying.huang@intel.com>
> 
> In Linux kernel 5.12, a new mode flag MPOL_F_NUMA_BALANCING is added
> to set_mempolicy() to optimize the page placement among the NUMA nodes
> with the NUMA balancing mechanism even if the memory of the
> applications are bound with MPOL_BIND.  This patch update the man page
> for the new mode flag.
> 
> Related kernel commits:
> bda420b985054a3badafef23807c4b4fa38a3dff

Thanks. Patch applied.

Cheers,

Michael

> 
> Signed-off-by: "Huang, Ying" <ying.huang@intel.com>
> Cc: "Michael Kerrisk" <mtk.manpages@gmail.com>
> [ alx: srcfix ]
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/set_mempolicy.2 | 33 +++++++++++++++++++++++++++------
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/man2/set_mempolicy.2 b/man2/set_mempolicy.2
> index 6e695fb13..746858720 100644
> --- a/man2/set_mempolicy.2
> +++ b/man2/set_mempolicy.2
> @@ -98,6 +98,27 @@ The supported
>  .I "mode flags"
>  are:
>  .TP
> +.BR MPOL_F_NUMA_BALANCING " (since Linux 5.12)"
> +When
> +.I mode
> +is
> +.BR MPOL_BIND ,
> +enable the kernel NUMA balancing for the task if it is supported by the kernel.
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
> +specifies node IDs that are relative to the
> +set of node IDs allowed by the process's current cpuset.
> +.TP
>  .BR MPOL_F_STATIC_NODES " (since Linux 2.6.26)"
>  A nonempty
>  .I nodemask
> @@ -107,12 +128,6 @@ Linux will not remap the
>  when the process moves to a different cpuset context,
>  nor when the set of nodes allowed by the process's
>  current cpuset context changes.
> -.TP
> -.BR MPOL_F_RELATIVE_NODES " (since Linux 2.6.26)"
> -A nonempty
> -.I nodemask
> -specifies node IDs that are relative to the set of
> -node IDs allowed by the process's current cpuset.
>  .PP
>  .I nodemask
>  points to a bit mask of node IDs that contains up to
> @@ -293,6 +308,12 @@ argument specified both
>  .B MPOL_F_STATIC_NODES
>  and
>  .BR MPOL_F_RELATIVE_NODES .
> +Or, the
> +.B MPOL_F_NUMA_BALANCING
> +isn't supported by the kernel, or is used with
> +.I mode
> +other than
> +.BR MPOL_BIND .
>  .TP
>  .B ENOMEM
>  Insufficient kernel memory was available.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
