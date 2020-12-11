Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 144D82D71D1
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 09:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387455AbgLKIdd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 03:33:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390922AbgLKIdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 03:33:07 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5143AC0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 00:32:27 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id f23so11217161ejk.2
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 00:32:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Sc5d9huaeazO9ewH0CfwWPZUkv4FiRCIHP4/C1+75u8=;
        b=mycqZAt1mMx7S6jLT3vR3ryVq7CzIMEm9zxFFATEwDEqv4geBABqa9ePvkgJLqp2Nl
         xeFKAtoze/oORRAoqhIucwb3zRLIlPSU1rG7f0A6cWu3+wnXrtpi56j/ZRmJVabSXGXu
         ikHHKRfy2xrpLQGXieHhMy1cJKnnuFLb1/TZ4ihp564HaSLzu2qR/EZ8d47cm52uHSWL
         zlNi4McGPi0R9WjmUOuwRYqsyJjBaPXKcrSIwfYebCSG7Ip9J5OYaXrcW7FWOWzBEcmN
         K60/ZNoIGX9lACyu0NUpW4756pY4VWJEJlY2g3XyP6x8fnixBmEEFNj4Vo8Kid8keqjy
         QHMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Sc5d9huaeazO9ewH0CfwWPZUkv4FiRCIHP4/C1+75u8=;
        b=IeStVShXFYdZ3/17WyqyEWcsdF6PgZUIqGYdX5BZd0PsiCMVtKxe/nl7DVhkEEIfS9
         uYtarkEvHZm9oPJsd8X6OvEab1A/Ua4riXCBsFbtmwBOObajLLN6MBi1hrTfs3SfGwdR
         Cvg+n/U981e8xu2iwNrWpCM5+vJSsxlloSqTertYpzQAVVS5n3zc/Wt9YylFR8v+9hNf
         t8yykGJG1VGH64Dz12rue/bTj0ZWIYSRYZOaPBnVwL8U1gpP2M1d1k5YlDZ8nTE0W0B3
         kelzFuISDNzCxKjQu4ln1yza+CadttCGvyhejudkYyMX6z1ccEyTcN5tdb9Tz3mPn92A
         bfyw==
X-Gm-Message-State: AOAM533fiqfHQITkfq60oIr2AE6p3IiX04w9xGVTqUMoEEsDkdhf+Aym
        EQUzgTkFjYWilzvJY7LRznM=
X-Google-Smtp-Source: ABdhPJycbIB7KgAdEF4Hc97MBQLjm1/qBGx292f1SmUD9D1ol/zs+Z3Czii7FXUeRaBx00819jOabw==
X-Received: by 2002:a17:906:e212:: with SMTP id gf18mr10135046ejb.551.1607675546097;
        Fri, 11 Dec 2020 00:32:26 -0800 (PST)
Received: from ?IPv6:2001:a61:25cc:8301:40d9:de28:875c:ad0d? ([2001:a61:25cc:8301:40d9:de28:875c:ad0d])
        by smtp.gmail.com with ESMTPSA id ch30sm7174070edb.8.2020.12.11.00.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 00:32:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Philip Rowlands <linux-kernel@dimebar.com>,
        Eric Dumazet <eric.dumazet@gmail.com>,
        Hannes Frederic Sowa <hannes@stressinduktion.org>,
        "David S . Miller" <davem@davemloft.net>
Subject: Re: [PATCH] tcp.7: tcp_syncookies: It is now an integer [0, 2]
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201207170806.64140-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d3cfb2c9-0d23-41b4-a207-87fe62760b3f@gmail.com>
Date:   Fri, 11 Dec 2020 09:32:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201207170806.64140-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,


On 12/7/20 6:08 PM, Alejandro Colomar wrote:
> Since Linux kernel 3.12, tcp_syncookies can have the value 2,
> which sends out cookies unconditionally.
> 
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
>  man7/tcp.7 | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index d983a8f9a..591f73d8d 100644
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
> @@ -849,6 +848,17 @@ For recommended alternatives see
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

I think it's helpful to let the reader know that this is a more
recent feature. So, better:

.IP 2 (since Linux 3.12)

Thanks,

Michael

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
