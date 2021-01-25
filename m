Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 588F930224C
	for <lists+linux-man@lfdr.de>; Mon, 25 Jan 2021 08:04:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727168AbhAYHDu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jan 2021 02:03:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727129AbhAYHDR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 02:03:17 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45AECC061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 23:02:31 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id g12so16451839ejf.8
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 23:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Pz8urAHErrd1cA2iq5Vr72IFH0Xmx1vQA4+n2GlGc8M=;
        b=qNafFvEdhP02vYFLzArMf/YwI4/RzaKiwaIHWY2bHbCR/Mn0DAAO6DWkHyBGv4n4qm
         Gw6FK4sFxCfzVDURsGkcjHf4mgoe5+LLIFvZF3Lc2t1vf3gNztOpkcMb2biYgfL4sSec
         yWl9E4WsX1zMABLLY8+bdkT7XuLGoYBo01RwJExvt9ltFoN2E/BiEBsD43XfGW9ZTegv
         T9OPEjA+Ii1gTWijQxbl4M1be41eV11mzuUDoiy0BHiQtDrvX6xP0z/EgNipTh4vHiUh
         77jj7QRH6Bib/hBVjXX3Vm6ysKF7jRixpwp1fSITthIq/+nh1SpD+RGIylgOw8v9H0I9
         cLAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Pz8urAHErrd1cA2iq5Vr72IFH0Xmx1vQA4+n2GlGc8M=;
        b=GDX8sUFv/cNSGLcpmpBLBuN7p58CIfbPtcprHeq35QGNUvcln/ggxZcrxwVYgBQlwi
         MfyiPj7F36iIcRjRrmj4don//zxfeEJMFbJdM/ehr8nGVhMwa6RmXN2zjZZCNr6lHE1u
         tdePTOS1zUt5FhTdAaMxxn3KHIPpaSCZrXoOMhDC7pVSHDHob1LI1he7m7lWrW2xtFAP
         x/5F2dc+J9zD3OgvXZtI2yeubNw4dLk2fU+cOM8umVCAFHlqoWxkIkTZNz4Ch4Ty4XjC
         vz/815p4YuA26kx0RULRT49KGtMIja+Z5Yjn8Lk2mc5U1J99ioHOF9bLI8DLVpzqx06j
         GXwg==
X-Gm-Message-State: AOAM533UQIvR9VDDgFH1BIrtLw2cKPI+H/XQLMVlVQ8fvucLQRkS6+w9
        wGcyEJcfv8Yco2OK60snC48=
X-Google-Smtp-Source: ABdhPJwP3a2AidKnV3GPbQHQV5wNqa33445VvCp9B+qXTuRPacV4Gb/qDJQZne4glbf/Wfeg5cvCPQ==
X-Received: by 2002:a17:906:f98f:: with SMTP id li15mr12954ejb.123.1611558148363;
        Sun, 24 Jan 2021 23:02:28 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id cw21sm9900146edb.85.2021.01.24.23.02.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 23:02:27 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Subject: Re: [PATCH] sock_diag.7: Fix recvmsg() usage in the example
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210124151035.70536-6-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8f982399-74e7-b889-0de0-00438de9b9d9@gmail.com>
Date:   Mon, 25 Jan 2021 08:02:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-6-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> From: Pali Rohár <pali@kernel.org>
> 
> The msg_name field for recvmsg() call points to a caller-allocated buffer
> nladdr that is used to return the source address of the (netlink) socket.
> 
> As recvmsg() does not read this buffer and fills it for a caller, do not
> initialize it and instead check its value in the example.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Hello Alex, Pali,

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/sock_diag.7 | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
> index b732b2571..569106dd6 100644
> --- a/man7/sock_diag.7
> +++ b/man7/sock_diag.7
> @@ -753,9 +753,7 @@ static int
>  receive_responses(int fd)
>  {
>      long buf[8192 / sizeof(long)];
> -    struct sockaddr_nl nladdr = {
> -        .nl_family = AF_NETLINK
> -    };
> +    struct sockaddr_nl nladdr;
>      struct iovec iov = {
>          .iov_base = buf,
>          .iov_len = sizeof(buf)
> @@ -782,6 +780,11 @@ receive_responses(int fd)
>          if (ret == 0)
>              return 0;
>  
> +        if (nladdr.nl_family != AF_NETLINK) {
> +            fputs("!AF_NETLINK\en", stderr);
> +            return \-1;
> +        }
> +
>          const struct nlmsghdr *h = (struct nlmsghdr *) buf;
>  
>          if (!NLMSG_OK(h, ret)) {
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
