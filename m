Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3ED802DE133
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:41:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733196AbgLRKkl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:40:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733146AbgLRKkl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:40:41 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D48BCC0617A7
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:40:00 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 190so1870064wmz.0
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=25T3+rZAstuPPuAUoRJ8bsDRIGg8iLgNkdz9g0wV588=;
        b=WsrWgVbPZ8VlzYZvySV1hHUqevNdskiF3Dia8LkV8Ea7JCd3i6ArNGhRF7LJ371Bg9
         TLmL0Nrg30dDrZ2Gt1qmUs8GBZMP9/WJZlZDzctWt+NrHN36QJH8Aq/LcmQGQgaEkfEi
         NxpMDNRsMoZvsDvbxFl2GKNBro3ZhN+HALrZDWK41b14RTAijqgCyqIF46DLp56ObcV7
         fHTv2Hl1jDnGLveT4z+4VAZ/zNAerPbbv3apDwzfwtI1BWzcZuQN0OWBIfKwaXyC0HYH
         DO3VWZSjOhIDeUUwjDPMQG5dmEVn2mN8RmYONZc93zIUiWL75WGqpT8xE4oynBYOEyUz
         Pdrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=25T3+rZAstuPPuAUoRJ8bsDRIGg8iLgNkdz9g0wV588=;
        b=Tc+otVmP3D1X+jqdNct+G4JmHET8t8l4O2NVqS1Xojn6phohAT9eHQbBxaCLGQ0NPy
         nehJ9SoQDi57Oem5I7PxXGZq3XHyU2X2JVwxKKLv32NhgTmnDrc3euFRZnFdXVPOhG6r
         7zEH0BeTG0fA8UdsLcFuiddwZKvhgF9hJRPzpXOKoA7zSHykSlW6fqRhI5FKfF7CmVAs
         PrxpjNhRHt9F/9nyBCUnIARMXBzBSDZtUG7CCh+SySnF3/aoBn+Y54w9y3J9fXGfbZE/
         t8Mc16ZbYfmCqdYRsAP5A9bH31T7zo7VKjS8fHfVqjPlE6cMsscMVEf7yZbuFq03HZmt
         J8gw==
X-Gm-Message-State: AOAM532cak8bxUQLl21GlwUV9SmgX3PNH+VjweCnEcWZivKczhIJPqiR
        Ns9gDzbzwKW3LZQHyJFR4T9M34YagmE=
X-Google-Smtp-Source: ABdhPJyc6OFkJpVLVFEUOUBoOy5qGKJcKgBG2lX7SPhkbK4ybx3QbqoBBl3j4a33HDHcHec1rBlYIg==
X-Received: by 2002:a1c:9e86:: with SMTP id h128mr3626119wme.171.1608287999585;
        Fri, 18 Dec 2020 02:39:59 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id y2sm9912893wma.6.2020.12.18.02.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:39:58 -0800 (PST)
Subject: Ping: [PATCH] packet.7: Update references to kernel documentation
To:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com
Cc:     Baruch Siach <baruch@tkos.co.il>, linux-man@vger.kernel.org
References: <20201215181732.22155-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <364f3d3e-d86e-7399-c8e5-8da417f3ae18@gmail.com>
Date:   Fri, 18 Dec 2020 11:39:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201215181732.22155-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'm pinging you for pending patches before you release 5.10.

BTW, about this patch, my little brother, who is learning shell and
linux is preparing a patch for fixing the paths for all other manual
pages. :-)

Cheers,

Alex

On 12/15/20 7:17 PM, Alejandro Colomar wrote:
> From: Baruch Siach <baruch@tkos.co.il>
> 
> Files moved from .txt to .rst.
> 
> Also, drop / prefix from kernel source tree references.
> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
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
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
