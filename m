Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7477196B9B
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2020 09:21:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727336AbgC2HV3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Mar 2020 03:21:29 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:37565 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726342AbgC2HV3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Mar 2020 03:21:29 -0400
Received: by mail-wr1-f66.google.com with SMTP id w10so17131559wrm.4
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2020 00:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MFS8hQmaDDbQ5W6UA1I/HFW9Fa/tg5ZzSXSACXtBB78=;
        b=WA4h9AgCCKjGDCZQXhbLcC9roDMbD74/OgF93vWkvOxZJYBhU3LYC9FPlSsU2XkEJ8
         35C78eShLuGmgnQGtjCPL6eLlBsDCZUsKLRV36mgumHH4cBfMDYyRFqpkx5aIy+D0Z/O
         e5iTtPfmpVs/0azn0+ZXkFG1v8vhN+Uh/UOnAoKMA0DBSIpuQDAiVSJdCKrskz83cmaJ
         lRGRpfxAG7eUOcycROTa7sSwkpnmbxYFtLW8AexkytYkKK/hPod5/+FpBgYkFP40vJGe
         oFtYyoKLm6YpGjH30XjZ7aVqiBs8vgW+NmKWXWrMcJfq0gpYERkKrffasaOWUi4LbVnC
         5NZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MFS8hQmaDDbQ5W6UA1I/HFW9Fa/tg5ZzSXSACXtBB78=;
        b=CyAon5KmmxLggI4f72iKOx/Zv4uQcYUBiOZiNQSqxzHP3WDJWq8QOwa+bnpeOELlnk
         Q71kfdKemL0eL1AWDu1cWIfgPrwD09eXo9HbCkTs7oiOEFsdtBjaj8yXoNMGhhdU4eyB
         vpaotxSh6gBb0SGD3S8af6G6abCVIAop6Kjjhs/Yrtd8obJT3MZRytd6p91BzV70Hh2c
         J+PWn5vT/bXwfQcj2uzSwHaBVbITuk4mwazncR3BKjsnCFMhIj8xm74LWrgDb6R1C7IR
         08oTswRh2cG++/zYBvQXWTEVyMRjCguTf776fn+TwCsoeUqPZ8e54NqcQlrHiOWUrVMl
         ZNvQ==
X-Gm-Message-State: ANhLgQ2cwUvSkTMEC2wPDl0b47Jub5ZU2PyAqhWz5EpAbTtikBFpifna
        HH20L2mrxaku3XUsH5xYZaOp/V3r
X-Google-Smtp-Source: ADFU+vu5N2U2Atu5lucWGGhagdRx3B5XVyslY8RT0ZepFKtMeGeOZNFLJvJTyGeo5uCrwz0nxDHivg==
X-Received: by 2002:adf:9dca:: with SMTP id q10mr8294839wre.11.1585466487345;
        Sun, 29 Mar 2020 00:21:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id c23sm16558477wrb.79.2020.03.29.00.21.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 00:21:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] clock_getres.2: tfix
To:     Benjamin Peterson <benjamin@python.org>
References: <20200327041749.21337-1-benjamin@python.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16430107-a6a7-7a2d-c9e7-cc0a64a9b3fb@gmail.com>
Date:   Sun, 29 Mar 2020 09:21:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200327041749.21337-1-benjamin@python.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/27/20 5:17 AM, Benjamin Peterson wrote:
> Signed-off-by: Benjamin Peterson <benjamin@python.org>

Thanks, Benjamin. Applied.

Cheers,

Michael

> ---
>  man2/clock_getres.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index d8b02e185..4422d2d00 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -139,7 +139,7 @@ and probably also architecture support for this flag in the
>  .TP
>  .BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
>  .\" commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
> -A system-wide clock derived from walli-clock time but ignoring leap seconds.
> +A system-wide clock derived from wall-clock time but ignoring leap seconds.
>  This clock does
>  not experience discontinuities and backwards jumps caused by NTP
>  inserting leap seconds as
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
