Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 894EB32C766
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355586AbhCDAbv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234195AbhCCWH3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 17:07:29 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC6CC0613D7
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 13:58:22 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id hs11so45290003ejc.1
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 13:58:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4Ei2zEYBu9AS6+1MjcBTUaGzpP6ocQ0ju1iFAmeYQXM=;
        b=RgDnRISvlZknvm1EC4mzlBzL1m+W1Jbko1sKc4Jwu5CtP0dIW/2kOnrv9oa0HGFfD0
         l3KJokUFz0609uNShX86voxviXUJ9ygOzD0sCCv9i4AAjEr8OhrwRCDR5+wY2rv6CfH1
         Sh/7uwxtMDrjh3n8q/4Mi+Ix3B969MQtw9KpcPpwPvUHI9vgCdJewaarPo2NHQqAwm7D
         ZcoR2q7Wr8EwKGwKLi5riR7QDqvey4RoYzosJKfyE9YGjkd8K78s+zIThiUipW6oBMOc
         OLDccUaJA4N4Vt2MBp/paIdcxJQOXSSucUzIqep21PwAasTbsWIIOyeV5iLhilB76pRJ
         9ndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4Ei2zEYBu9AS6+1MjcBTUaGzpP6ocQ0ju1iFAmeYQXM=;
        b=gC4r4LJ8tk4xB+ihiSRugKpT/87PlQEpNRjg+aJ6Ic467wcx5UUzWlE/3FJKtWogWU
         Ec7LGOB54ltFU79AccmGrl0CL/Aj+E0gACsmn8Izj0sibFLrI13VEj0lcETtC8a3y4/e
         tfXCBqnEbf9jbMCZ4sN6k5eokLIRuq+HvSr9pVh4fAcm6jq/NtMs98OCp2zlhxPHvUz8
         3sCraJ2wqdPxwto1IxJF7MdVUXLb6sSxmesHAv2HclW7sWZy7Rdza8JOjO6YK289TkJp
         z/+a8CTCHnCQjxjfnrz230RXAiEzU9w/BljdhhYF8utvrTU3zjKloddm/B50xeBuYRj/
         p13A==
X-Gm-Message-State: AOAM533miV0ZPWPlYbJw0GtgyKZaP/RM+OWKgdjN4Iu69e+TegLaRAGA
        RLGPRQJpiX2xYm8PYbiKzAlnYGftrMjioQ==
X-Google-Smtp-Source: ABdhPJxFZcxnRTTrld4iCW9+7B4X3pAYj9f7DgHUmvAVpzKAS2i2YkOIU6b9pEJUbYzvkWmBdYhBHw==
X-Received: by 2002:a17:906:9152:: with SMTP id y18mr785750ejw.19.1614808701327;
        Wed, 03 Mar 2021 13:58:21 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id gj13sm3680720ejb.118.2021.03.03.13.58.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 13:58:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Walter Franzini <walter.franzini@gmail.com>
Subject: Re: [PATCH] inode.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210227112217.1629-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <71cd2520-2bfc-256e-cc0a-6453a3e34d35@gmail.com>
Date:   Wed, 3 Mar 2021 22:58:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210227112217.1629-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/27/21 12:22 PM, Alejandro Colomar wrote:
> Epoch is 1970-01-01 00:00:00 +0000, UTC (see time(7)).
> 
> Reported-by: Walter Franzini <walter.franzini@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man7/inode.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/inode.7 b/man7/inode.7
> index fe50a4596..d3b9fa1ff 100644
> --- a/man7/inode.7
> +++ b/man7/inode.7
> @@ -207,7 +207,7 @@ It is changed by writing or by setting inode information
>  .PP
>  The timestamp fields report time measured with a zero point at the
>  .IR Epoch ,
> -1970-01-02 00:00:00 +0000, UTC (see
> +1970-01-01 00:00:00 +0000, UTC (see

Cute :-}

Thanks, patch applied.

Cheers,

Michael

>  .BR time (7)).
>  .PP
>  Nanosecond timestamps are supported on XFS, JFS, Btrfs, and
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
