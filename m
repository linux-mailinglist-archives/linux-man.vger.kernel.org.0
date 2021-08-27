Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A47C3FA160
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 00:05:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232054AbhH0WFv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 18:05:51 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:55606 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232032AbhH0WFv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 18:05:51 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 3018516007D;
        Fri, 27 Aug 2021 15:05:02 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id c3v7MdrJF8dK; Fri, 27 Aug 2021 15:04:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1BDF51600CC;
        Fri, 27 Aug 2021 15:04:57 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id LrY9Mxdb5Lhw; Fri, 27 Aug 2021 15:04:57 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id EA2ED16007D;
        Fri, 27 Aug 2021 15:04:56 -0700 (PDT)
Subject: [PATCH] malloc_hook.3: modernize for glibc 2.34
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <20210810193708.10277-2-eggert@cs.ucla.edu>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <6bb93825-0a24-75ad-9c56-9913f6e2978e@cs.ucla.edu>
Date:   Fri, 27 Aug 2021 15:04:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210810193708.10277-2-eggert@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Pinging about this patch. The original email is archived here:

https://lore.kernel.org/linux-man/20210810193708.10277-2-eggert@cs.ucla.edu


On 8/10/21 12:37 PM, Paul Eggert wrote:
> ---
>   man3/malloc_hook.3 | 13 ++++++++++---
>   1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
> index 6d944003b..7b76bbc9b 100644
> --- a/man3/malloc_hook.3
> +++ b/man3/malloc_hook.3
> @@ -11,7 +11,7 @@
>   .SH NAME
>   __malloc_hook, __malloc_initialize_hook,
>   __memalign_hook, __free_hook, __realloc_hook,
> -__after_morecore_hook \- malloc debugging variables
> +__after_morecore_hook \- malloc debugging variables (DEPRECATED)
>   .SH SYNOPSIS
>   .nf
>   .B "#include <malloc.h>"
> @@ -86,11 +86,18 @@ The use of these hook functions is not safe in multithreaded programs,
>   and they are now deprecated.
>   From glibc 2.24 onwards, the
>   .B __malloc_initialize_hook
> -variable has been removed from the API.
> +variable has been removed from the API,
> +and from glibc 2.34 onwards, all
> +the hook variables have been removed from the API.
>   .\" https://bugzilla.redhat.com/show_bug.cgi?id=450187
>   .\" http://sourceware.org/bugzilla/show_bug.cgi?id=9957
>   Programmers should instead preempt calls to the relevant functions
> -by defining and exporting functions such as "malloc" and "free".
> +by defining and exporting
> +.BR malloc (),
> +.BR free (),
> +.BR realloc (),
> +and
> +.BR calloc ().
>   .SH EXAMPLES
>   Here is a short example of how to use these variables.
>   .PP
> 

