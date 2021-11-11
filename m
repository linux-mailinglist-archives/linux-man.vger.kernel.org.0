Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7579044DC62
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 21:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231290AbhKKUQT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 15:16:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbhKKUQS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 15:16:18 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC84C061766
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 12:13:29 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id d72-20020a1c1d4b000000b00331140f3dc8so5246513wmd.1
        for <linux-man@vger.kernel.org>; Thu, 11 Nov 2021 12:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=s9rZyHs2A2OEgwWbRqO5b3PCm3jM/wANeChhzFNy7Q0=;
        b=LDixh2Mgj0f4ZNiIXMC5U/39X7zKZDGgL/wlLQkDBRX8ZqPp8nv3oJ+1XoLscy/d+H
         QvkeveRMHR4CUISZPZ8nykgLcdnUqqU7ZO7HHX3yPF7lEnDR93xOxHlNoiqWhZSDWhBQ
         hyBZi5yR6K64dU0RBkUWT5cAmzo4wAyettKLWC6dNAggiADQuL6rNWG1Fi3oVo66Ejs3
         CnrLQG6/t0fLNF/8pxSRlrYLY0NvU5vDtkNx+ukK3I7tAgaT5g1Xxzx07rk3YgNRQ0RB
         l7eatZuWD6KDbJ3t1M8TgYPi08UoFaEPTPvW/stK5VRQi74SRJf/ziS4jVtEVwLmCG6n
         0xFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s9rZyHs2A2OEgwWbRqO5b3PCm3jM/wANeChhzFNy7Q0=;
        b=7fBdAXmC2KlqScM7OB3ZjJWRdFPF4PSpmc9oGVTI2X0PPBIeBiniQNuKknoXPcjQBH
         M29N77811v4/ecALy7hhch1Wf6JHlClE/i++okmGJrCH109zWpaR9sEQNVAiM5UgFLSD
         ZaYeXXcZTIcOyB10wgq72yOzqzzOXsGjKKXHR1SSCSPNCoFbh5+Y6cAa1G4ty6I7wnwY
         40fivKhQIUiIKTCKQQstQyGp12VDGSN8Xu+L5BX4ZSmMGUKoqZsHK5ZAJaB/7/0TtN6e
         ZbCajx4PbNz5Qqb2iz6edLIKb7/kfNu8f2txq4afK4dLpraF4IheABMwf/APytcqaLzM
         GcFQ==
X-Gm-Message-State: AOAM532g6yKGNOdHfPVwNtpIEbF8CeB7cMvuo85NQsOPE6Hk8ElGxWV7
        gDguzaYVbFkwADzZt8xdk9QH801vNo7SOA==
X-Google-Smtp-Source: ABdhPJy42ydUv9IVmQOmg2dCgsQz7X1u/uZsgaHJsAS+qHJeurhftyKQWH4qf6glIKOf7aDn4Iwpuw==
X-Received: by 2002:a1c:4c13:: with SMTP id z19mr28490518wmf.143.1636661607575;
        Thu, 11 Nov 2021 12:13:27 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l15sm3755952wme.47.2021.11.11.12.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 12:13:27 -0800 (PST)
Message-ID: <c960b3c8-e079-12c8-df58-907a7e767d4a@gmail.com>
Date:   Thu, 11 Nov 2021 21:13:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] man7: unify socket examples
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211111020307.3542693-1-jk@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211111020307.3542693-1-jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Jeremy!

On 11/11/21 03:03, Jeremy Kerr wrote:
> The udp, tcp and x25 man pages' synopses list the socket() example as
> all bold, but the socket varname should be italicised. This change
> unifies these with the example in socket.7
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

Thanks for these consistency fixes!

Cheers,

Alex

> ---
>   man7/tcp.7 | 2 +-
>   man7/udp.7 | 2 +-
>   man7/x25.7 | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/tcp.7 b/man7/tcp.7
> index 0a7c61a37..c08bc7dcc 100644
> --- a/man7/tcp.7
> +++ b/man7/tcp.7
> @@ -102,7 +102,7 @@ tcp \- TCP protocol
>   .B #include <netinet/in.h>
>   .B #include <netinet/tcp.h>
>   .PP
> -.B tcp_socket = socket(AF_INET, SOCK_STREAM, 0);
> +.IB tcp_socket " = socket(AF_INET, SOCK_STREAM, 0);"
>   .fi
>   .SH DESCRIPTION
>   This is an implementation of the TCP protocol defined in
> diff --git a/man7/udp.7 b/man7/udp.7
> index a66e475cc..cd0937c53 100644
> --- a/man7/udp.7
> +++ b/man7/udp.7
> @@ -18,7 +18,7 @@ udp \- User Datagram Protocol for IPv4
>   .B #include <netinet/in.h>
>   .B #include <netinet/udp.h>
>   .PP
> -.B udp_socket = socket(AF_INET, SOCK_DGRAM, 0);
> +.IB udp_socket " = socket(AF_INET, SOCK_DGRAM, 0);"
>   .fi
>   .SH DESCRIPTION
>   This is an implementation of the User Datagram Protocol
> diff --git a/man7/x25.7 b/man7/x25.7
> index 561ed0519..e07e5f7a7 100644
> --- a/man7/x25.7
> +++ b/man7/x25.7
> @@ -17,7 +17,7 @@ x25 \- ITU-T X.25 / ISO-8208 protocol interface
>   .B #include <sys/socket.h>
>   .B #include <linux/x25.h>
>   .PP
> -.B x25_socket = socket(AF_X25, SOCK_SEQPACKET, 0);
> +.IB x25_socket " = socket(AF_X25, SOCK_SEQPACKET, 0);"
>   .fi
>   .SH DESCRIPTION
>   X25 sockets provide an interface to the X.25 packet layer protocol.
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
