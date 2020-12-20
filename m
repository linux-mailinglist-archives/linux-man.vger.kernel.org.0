Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 978DE2DF5BB
	for <lists+linux-man@lfdr.de>; Sun, 20 Dec 2020 15:50:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726950AbgLTOud (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Dec 2020 09:50:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726943AbgLTOuc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Dec 2020 09:50:32 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EAAFC0613CF
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:49:52 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id r4so8160267wmh.5
        for <linux-man@vger.kernel.org>; Sun, 20 Dec 2020 06:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RBuYLBchOSo502RqkT+QObdKOAH44vLpYwj/rEOuRwM=;
        b=PZzNdBCUYFBlrERm0SoJPUMRafPP3cWS9fW8VGHxXasu8Hvg2dGQ5AUPvwJkFBOXzo
         qwCyNEcTtoSg/NglewErF0MORdhRIVQofYxg+wy8jalXhWuNLmPYORhyNNlu+o/7ECtQ
         DA2gQgfiC13x2J4pyP6K4T1N7P5qSdlR1+gEc1xiQ2C1Oay41X180xUDM7LuvyzQcvkF
         MZcgLiZfzrNVVa2HrDpCiPnJFl+sFxDJScNkrm3tmip2XdxtwrxdGmyPuKzP4Jl+TClD
         anrXbr2TraikjT0Ip3vcLvK9n5arDzIcd7ycDgFVsbpsdoY+dNeAJ4MZLwh2rHAwhEyo
         9+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RBuYLBchOSo502RqkT+QObdKOAH44vLpYwj/rEOuRwM=;
        b=gLaEg3e0zXHc15fVxV84TsYO8yrPF19inBxmrdimawpWSFMU4IBmfylN0b/9Okq5g8
         ApPiF3pNjoEMtDeweYWH97x1CFMlL06ofpTw2JM9ZTaS1SfG92w3nbW17n4qYENz4Zxm
         5ATexfUQDSkwyyoIZbz9lJ9OD7mUHkyya9+vxBJghfBNHs9c5kzDDPeEJxezLHUMkLBi
         InEEVYP0/B6RuN+dHHCB3/s2h0vMxptV5MCdwsaWr61ooUdJ1LH4w27Y5lOsUYiP3cFj
         aWsnqMpo9uek8Up73FvfthL/JTSWRNOY4QsZbiLmx0RFxIgbv08rt0uY1z3t2KImF1fh
         epfA==
X-Gm-Message-State: AOAM531aLZ34m4RCBbwryeF6tV3ttIgte8JhCi7fav52KHTPilgs5U08
        SOltogX6+rH0Etyjxl2fybsLybtSnyjwyQ==
X-Google-Smtp-Source: ABdhPJxTrDwwu9RUqMDfVxMX7oNXNZag/5n8xVh7fSFWJFEY3I9IjSII8b0Y7IcH2dL162ozUUHojQ==
X-Received: by 2002:a1c:6402:: with SMTP id y2mr11987852wmb.43.1608475790625;
        Sun, 20 Dec 2020 06:49:50 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id i18sm23228685wrp.74.2020.12.20.06.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Dec 2020 06:49:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Baruch Siach <baruch@tkos.co.il>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] packet.7: Update references to kernel documentation
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201215181732.22155-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dd1152e3-7f3f-6a0c-8161-14d90bf3fed8@gmail.com>
Date:   Sun, 20 Dec 2020 15:49:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201215181732.22155-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex and Baruch,

On 12/15/20 7:17 PM, Alejandro Colomar wrote:
> From: Baruch Siach <baruch@tkos.co.il>
> 
> Files moved from .txt to .rst.
> 
> Also, drop / prefix from kernel source tree references.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/packet.7 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/packet.7 b/man7/packet.7
> index ac1c60905..856c59e6b 100644
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
> base-commit: 27482d700b5d2d062f994bee2c79aac7a5d9d17c
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
