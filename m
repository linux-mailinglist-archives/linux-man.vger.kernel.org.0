Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CC4E334836
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 20:43:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233249AbhCJTnC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 14:43:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233861AbhCJTme (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 14:42:34 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C73CC061761
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:42:34 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id y124-20020a1c32820000b029010c93864955so11816516wmy.5
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 11:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=hKnCFodoQfUqCihLAGsk1yRNsI0U51uzYsY8PpQdwm4=;
        b=DqWLpDAgrr8NajmVpwmgu5lBh3VK7gQU+Y9OwNKldYDXQM2sKcJFcjRp8qGwuHMZeZ
         0xlwMHL+VPo+TQXlGZnHbJdrxKqPe0YMOZwz1GZ2icDa+p1lKeBZs5mGNAKb6yIWNDDl
         dHeLEKl5Rb4ChDPXokvJ5K1Ru0wXfWS/VZ4OZDUuZHa+2BHKnFkP8WFF6bv9EC8afhG4
         mliQ9WMIhJLF0o8/HWTnpmjZou69PLCdKWTTzLPLFE8baVIWrTcIpDqi7EhNTmhqPisB
         WCrUFzfHy/LPHR7smySCCe43Hms/HtF0gkdxK/PBnkzU4lmaWPhyVCWM3FM5xSVlkXeK
         WCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hKnCFodoQfUqCihLAGsk1yRNsI0U51uzYsY8PpQdwm4=;
        b=ZeKMnFibVX/ZYzSgPaNWNmE52jSORx+R+tRoybY0Fso7IEkOuvIYoqMvhekp5oByz/
         a1J482GtmG24DINQXNL0t98p6iiMlO+AJLeltJke9uLD7TsQyBdtY64e56mqSlFNLzNJ
         7wrNXIwSDPCpP/H6NERKT7EFwuwZtnWNLc3ehHaiF+PDe3oantxRh0coVYJN4VyCb6yb
         0lAfz1ONQpBz8aU/U4vCViS+bG0TB4rmBrblxZu2nvEKqiedXgcRtmVWXf/HBnlANg+4
         PZ/VhcOQg2fSG00U88s0w49ompTavlPgK0VHGtXHadZfZsqcVeHZqGJGm/PhuTLmNtNL
         tl2w==
X-Gm-Message-State: AOAM5323HOPXnelnW3dWgtuFYEv7O0dJnP8I4CAxXG3kIH1+qMrTXX80
        xPHJaCbsSptd+SjaHh9n3qk=
X-Google-Smtp-Source: ABdhPJxMl3ELzVUy89s9ge1LD0KOGag/6a504E7eNvnMjBksGr1SfwMYEaDE0I6Tz6h92nGWmdcKKw==
X-Received: by 2002:a7b:cb90:: with SMTP id m16mr4859088wmi.162.1615405353464;
        Wed, 10 Mar 2021 11:42:33 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j11sm364293wrm.13.2021.03.10.11.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 11:42:33 -0800 (PST)
Subject: Re: [patch] printf.3: Add overall structure of format string
To:     Utkarsh Singh <utkarsh190601@gmail.com>, linux-man@vger.kernel.org,
        mtk.manpages@gmail.com
References: <8735x66oz5.fsf@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e472debb-7d85-4da6-ac52-45687f025558@gmail.com>
Date:   Wed, 10 Mar 2021 20:42:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <8735x66oz5.fsf@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Utkarsh,

On 3/8/21 9:15 AM, Utkarsh Singh wrote:
> Hi,
> 
> Thanks for creating and maintaining Linux man-pages project.
> 
> Can we add a small syntax structure for format string in printf(3)
> manual.  I personally find if easier to remember and scan.  This has
> been taken from OpenBSD printf(3) manual.

Great patch!  Thanks for the patch and for pointing to the source!

I applied the patch with some minor tweaks, and signed it on your 
behalf.  See 
<https://github.com/alejandro-colomar/man-pages/commit/7cff8229063ff758a51ebd475e51452f5c781a60>.

I prefer .nf/.fi so that it doesn't use a monospace font (it's not 
actual code) in PDF/HTML version.  Like we have in the synopsis.

Thanks,

Alex

> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index fa6564426..69ff29316 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -193,6 +193,13 @@ an optional
>   and an optional
>   .IR "length modifier" .
>   .PP
> +Overall syntax of format string is:
> +.PP
> +.in +4n
> +.EX
> +%[$][flags][width][.precision][length modifier]conversion
> +.EE
> +.PP
>   The arguments must correspond properly (after type promotion) with the
>   conversion specifier.
>   By default, the arguments are used in the order
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
