Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B81362D812A
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 22:32:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391081AbgLKVcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 16:32:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391974AbgLKVbg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 16:31:36 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 790A7C0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:30:56 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id jx16so14274169ejb.10
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d5WYMzQ+xrHwnfqdS/YSQ2IybSpzKmnwZ78zpcH7Faw=;
        b=SiNfRzqakRW2bdaK702YelsowO71VnH2dwP8y8E38EpHWbmwFQiVD6TpUUpAqUclV+
         zWITkCBDz5Vf1fWwJIz1DijpeUB2/l9H+JjkKzhJNuwS4x4KLl7rUQkdtDEuj6UmWTBK
         R7TUC1apyDDhEZFw0hW8vyoVVPm+IN96HHtRp3TJtz5C3lyvCqkjwzfn5aEaTK3iNkSK
         S8/yrJ3VaPry7dJIIrsuPuXbvVbAsbBpCRanfuXptsbGuax3yb4kseaYoOCJi8mNLLB/
         EPX+aDkxiLHf7XeVrWLDT8NIxc6WS87eWWp93wAgwOsUfkdBEmyO4IXz3o29cX/CDODf
         0XnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d5WYMzQ+xrHwnfqdS/YSQ2IybSpzKmnwZ78zpcH7Faw=;
        b=frxDdTAScPg+T6OkP9+cdmRF242lgeA+FRCM4Xm/Wn3nAVPq5gkapLQ+VheP0/PKhm
         JcSChus0AE9nkLzAWlXYCcptnFhm83CuYJROHxypOe5rJE6GnUqHl8OQpw3DjU1y/hzp
         3ONcEp5QPnmLiFWPfHdubicbx+m+GTgoccyNDZwXBdHfYDDV/z93p+Mewk99I9/93751
         KBjnsanmVMtLiMsLzl+M7Ow33YktqHRcOMsay0ceLFSWVMgfvFanU16qhm4hnWCc4RiA
         BSqN7SZHJA+L9BlGG2lEY0S/bGL2YLxyQn0RUHqw1BzslCQO+hV6I6v4YlSoaGuNcarV
         vhjg==
X-Gm-Message-State: AOAM532xTflte8/SwPX0x1OnLEwluH0rbCq9TLbQ0ImGBXbgLK1tHkhX
        QhJjYDx49ZLFYeT5OhjQ2NE=
X-Google-Smtp-Source: ABdhPJxnKSOxMu441dQaL8u9BF1WjlyN5lAGO3vbTmLTpnVuUxiF1/F5bD0hgPrXe7R20uNqcfL8Bg==
X-Received: by 2002:a17:906:a2d0:: with SMTP id by16mr12454329ejb.207.1607722255181;
        Fri, 11 Dec 2020 13:30:55 -0800 (PST)
Received: from ?IPv6:2001:a61:2534:8201:1503:5ce5:5a20:9c25? ([2001:a61:2534:8201:1503:5ce5:5a20:9c25])
        by smtp.gmail.com with ESMTPSA id lc18sm7655239ejb.77.2020.12.11.13.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 13:30:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Philip Rowlands <linux-kernel@dimebar.com>,
        Eric Dumazet <eric.dumazet@gmail.com>,
        Hannes Frederic Sowa <hannes@stressinduktion.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: Re: [PATCH v2] tcp.7: tcp_syncookies: It is now an integer [0, 2]
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <086c4c44-0443-9e13-0087-fb8c2adcb80e@gmail.com>
 <20201211184709.38128-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08cb7ac1-2f92-b2b7-4885-8e97326c0c93@gmail.com>
Date:   Fri, 11 Dec 2020 22:30:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201211184709.38128-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/11/20 7:47 PM, Alejandro Colomar wrote:
> Since Linux kernel 3.12, tcp_syncookies can have the value 2,
> which sends out cookies unconditionally.

Thanks. Patch applied.

Cheers,

Michael

> Related kernel commits:
> 5ad37d5deee1ff7150a2d0602370101de158ad86
> d8513df2598e5142f8a5c4724f28411936e1dfc7
> 
> Reported-by: Philip Rowlands <linux-kernel@dimebar.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Eric Dumazet <eric.dumazet@gmail.com>
> Cc: Hannes Frederic Sowa <hannes@stressinduktion.org>
> Cc: David S. Miller <davem@davemloft.net>
> ---
>  man7/tcp.7 | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index d983a8f9a..cce8dd910 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -830,12 +830,11 @@ The maximum number of times a SYN/ACK segment
>  for a passive TCP connection will be retransmitted.
>  This number should not be higher than 255.
>  .TP
> -.IR tcp_syncookies " (Boolean; since Linux 2.2)"
> +.IR tcp_syncookies " (integer; default: 1; since Linux 2.2)"
>  .\" Since 2.1.43
>  Enable TCP syncookies.
>  The kernel must be compiled with
>  .BR CONFIG_SYN_COOKIES .
> -Send out syncookies when the syn backlog queue of a socket overflows.
>  The syncookies feature attempts to protect a
>  socket from a SYN flood attack.
>  This should be used as a last resort, if at all.
> @@ -849,6 +848,18 @@ For recommended alternatives see
>  .IR tcp_synack_retries ,
>  and
>  .IR tcp_abort_on_overflow .
> +Set to one of the following values:
> +.RS
> +.IP 0 3
> +Disable TCP syncookies.
> +.IP 1
> +Send out syncookies when the syn backlog queue of a socket overflows.
> +.IP 2
> +(since Linux 3.12)
> +.\" commit 5ad37d5deee1ff7150a2d0602370101de158ad86
> +Send out syncookies unconditionally.
> +This can be useful for network testing.
> +.RE
>  .TP
>  .IR tcp_timestamps " (integer; default: 1; since Linux 2.2)"
>  .\" Since 2.1.36
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
