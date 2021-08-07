Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63EC53E377A
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 00:55:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGWzj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 18:55:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGWzj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 18:55:39 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59C18C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 15:55:20 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id u2so12170430plg.10
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 15:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PAh6XbGoXcGY2ul/ukC6DSrK4F/9unLZKqKGagWmHko=;
        b=jEyyjSe1BYsXmrIqqRlEsqTSZIuqdAPaKu004GNLhImVmLSgiw1HaXYp7Pe4AQWqMK
         5ziHPaRhUtv1kt3yiqe4B1mPeKN18zVWkZPZChea3A8Vh3rMf1JyZMDu2xcOo5PKqzyA
         //eePKJmQv8OuQhnz8iXubNdfm0bGDBOrWiJSN7PoGVheglbSXjEIVirjHpWZbg4cEV1
         N8Iz0QdZLBOqZGT5/alojIsM9U0Matm6TS6KErfLoIYaBO8booqSjdLfj2Op0BDYe4HT
         uZX2j4POM8El6OmcPamIIJtIVMuU9zEiqRazVU4l3sGp24ry9L8AR4Tt16v9gLXVpoSU
         osow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PAh6XbGoXcGY2ul/ukC6DSrK4F/9unLZKqKGagWmHko=;
        b=XtgIIJO8prMuDD+CF/SlSIL7EULgKN5MgOsJo2fzXAbmlsCah2KbUipeyN3FK5VDJK
         CcrW6OcZDgRCinzUMNcscTOi51K3ult5Ju277bz+Caj1cnUxDGRVxTjD81hBibL0jo18
         0CKJh2MW2KqmqtJn+UkVchT5/lL61Tw7h8XNTctHwNrnUAvnhMjQzvR3DPHXDlVXSwod
         8QlC6cEf/qWfHpkP6Ei2r7I79p+W5NDibrUg5uj8iQFN93B7BXpnoCEIWgpzfIoHpW2Z
         vTBaQ7PGlagk/+fcMYRfOH259MFOuCzPu+HxTlUgmWoq5O4XjruKt2ofPxiLLsXnoFbe
         o2PQ==
X-Gm-Message-State: AOAM531zBNJGnZuZ3u17HGSCq+FF2YBqQHeC2RD3SIyWClWZwJ3Xgah6
        2npR+uCIDD5fAifrEVf0V9TyESX/ECE=
X-Google-Smtp-Source: ABdhPJwfNpm5ZnhfECFueibfvtsamCvRF8F0b9UHuJfk5hj1GtqmabXsP7GNtVuGBc+dWGRKOLuFTw==
X-Received: by 2002:a65:41c9:: with SMTP id b9mr86015pgq.322.1628376919348;
        Sat, 07 Aug 2021 15:55:19 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 131sm15398576pfv.129.2021.08.07.15.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 15:55:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 22/32] proc.5: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-23-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d0cd2a68-0ab2-14b0-89b4-1103d6a07e35@gmail.com>
Date:   Sun, 8 Aug 2021 00:55:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-23-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub and Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Jakub Wilk <jwilk@jwilk.net>
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 69f6e15dd..416bbb5fc 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -5606,7 +5606,7 @@ first.
>  .IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
>  This writable file contains a group ID that is allowed
>  to allocate memory using huge pages.
> -If a process has a filesystem group ID or any supplememtary group ID that
> +If a process has a filesystem group ID or any supplementary group ID that
>  matches this group ID,
>  then it can make huge-page allocations without holding the
>  .BR CAP_IPC_LOCK
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
