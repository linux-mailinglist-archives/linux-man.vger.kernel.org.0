Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65BCB2DB336
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 19:04:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726266AbgLOSDv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 13:03:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725973AbgLOSDv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 13:03:51 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97B2FC06179C
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 10:03:10 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id r3so20807569wrt.2
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 10:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wKSAGHNkX8Js91gYNK/rQHm27EpnkzIV8jQEEWsD0UM=;
        b=eCwILGU6LVsLLIvea/NCJfZDMT4+Xp00nE9zsiqe6vc+42Rc5x8no8BlwyDimkPmxS
         3f+g32DB+20d8OXF7JGhKHNm7u5oZDbeOrWCO9FqQEECS6h6Et0K1SfImvduFnCgHElG
         E7SAliDiaIZ5MQGuvOzPONC89kO9wngcsYvXrM2KjkfPiJfLGd8L81UGTnOdq4Jw/Cby
         73RnYga+SJC2yNT4PvSsq5vdmCZsrCxNoIulorYUyU1J+2tvxs0PcNNbQvu1DX90YH9B
         Y19Bh45Su8S6rw4i81AFoC+5f6nmDqTdarbtZwefhpJvO7ZO4kZN+E4LaTtl/xBIVdOk
         YLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wKSAGHNkX8Js91gYNK/rQHm27EpnkzIV8jQEEWsD0UM=;
        b=NYCsd7sq8bThoSXeuuyGMUkkzMbXF31PAkRs19D4a8O2/fbuuTXvwOMnviJarD59s2
         KMKjYfl9ZXVO833hM2hKhDxU4S++op8QnApgL76T/oYMSv3HfFUoaWJNXi4jahvEKHHO
         Z0lNvseMeYbUwiqPgnQsh47g81RxXfAsqiw92irQqQ/S/z7ozuu7trwDjLix0IkuLyOW
         k0EGSn/5VgvFxI0wgkj1IBTj9DXByFHsTp9uujIFqMAb0d2N/BerQVtD0LUdvCHmFN6y
         vGHvtHT4IeTXzZJ9nHNuSUUhQU3klsD9+hYqMeQDh91a3s6g4YHYZO2bjsm/0MEfIgz+
         P1eg==
X-Gm-Message-State: AOAM531E+aeeH4bwDFT5vBIpf+fSPbiKmzOJRFDNlvPCvVTkZ25EUjNI
        vqHcFcAwCM13JV2zah4R56p8fUAXVlo=
X-Google-Smtp-Source: ABdhPJznvVMplZ6VMcL3WTtXqeajP+DPF5A3eqeBa2gk20+PK0pb3rs5l8eRC9gsV11uNDy+vp2SHA==
X-Received: by 2002:a5d:6503:: with SMTP id x3mr34918874wru.151.1608055389301;
        Tue, 15 Dec 2020 10:03:09 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z6sm15515990wmi.15.2020.12.15.10.03.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 10:03:08 -0800 (PST)
Subject: Re: [PATCH] packet.7: Update references to kernel documentation
To:     Baruch Siach <baruch@tkos.co.il>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <6236cf778decc2cfd772a90a8812f5d28163a849.1608054892.git.baruch@tkos.co.il>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2b36bdf3-f2c3-1d46-a2f1-cfa566d9a6c8@gmail.com>
Date:   Tue, 15 Dec 2020 19:03:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <6236cf778decc2cfd772a90a8812f5d28163a849.1608054892.git.baruch@tkos.co.il>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/15/20 6:54 PM, Baruch Siach wrote:
> Files moved from .txt to .rst.
> 
> Also, drop / prefix from kernel source tree references.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>

Hello Baruch,

Patch applied.

Thanks,

Alex

> ---
>  man7/packet.7 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/packet.7 b/man7/packet.7
> index ac1c609058b5..856c59e6bafb 100644
> --- a/man7/packet.7
> +++ b/man7/packet.7
> @@ -405,7 +405,7 @@ equal to
>  .IP
>  Packet sockets implement multiple variants of the packet ring.
>  The implementation details are described in
> -.IR Documentation/networking/packet_mmap.txt
> +.IR Documentation/networking/packet_mmap.rst
>  in the Linux kernel source tree.
>  .TP
>  .BR PACKET_STATISTICS
> @@ -431,7 +431,7 @@ By default, this is a software generated timestamp generated when the
>  packet is copied into the ring.
>  This integer option selects the type of timestamp.
>  Besides the default, it support the two hardware formats described in
> -.IR Documentation/networking/timestamping.txt
> +.IR Documentation/networking/timestamping.rst
>  in the Linux kernel source tree.
>  .TP
>  .BR PACKET_TX_RING " (since Linux 2.6.31)"
> @@ -648,9 +648,9 @@ The
>  include file for physical-layer protocols.
>  .PP
>  The Linux kernel source tree.
> -.IR /Documentation/networking/filter.txt
> +.IR Documentation/networking/filter.rst
>  describes how to apply Berkeley Packet Filters to packet sockets.
> -.IR /tools/testing/selftests/net/psock_tpacket.c
> +.IR tools/testing/selftests/net/psock_tpacket.c
>  contains example source code for all available versions of
>  .BR PACKET_RX_RING
>  and
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
