Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D23F34B37EC
	for <lists+linux-man@lfdr.de>; Sat, 12 Feb 2022 21:35:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231565AbiBLUfA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Feb 2022 15:35:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231411AbiBLUe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Feb 2022 15:34:59 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6426606E3
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 12:34:55 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c192so7406953wma.4
        for <linux-man@vger.kernel.org>; Sat, 12 Feb 2022 12:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SOHpn+wD/rxT7chw3TGU/TGp/TchYNqsqat/0KKZxqc=;
        b=UBM057K4o9ekm/7RXvHSzPALBb8fbwq+qTZXrUpKvzFXCpZZZi52e8u9BrTtAjbc5X
         og4NPufH/1y5tgL1gaJOYWpf2joXwiEyr6api68K6ZYRd0uLQ58PrJ9r8qLuNW2FGAqb
         lQoRvD4qrg6XLmvVcMmN/wuPrfPdqVssUNoqn4kxtDkk/xZ49kwia847dX6WXmXkLv9x
         U6osJr8NRdefLSKKBs8KLmrrZbMyR9iozZeQ7ykOJ90R4pmaTejDoT5yCIZ7w4F1Eo14
         SWpf/oTAl4GtZO1jzrCBeVnbgkqK8sQJrDvdY8v9rcO7PDJsPLwcXzunLrVLc3fTtVt/
         5+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SOHpn+wD/rxT7chw3TGU/TGp/TchYNqsqat/0KKZxqc=;
        b=jUUtMbxvfpcuO4d+6eB58DfjgkFgtHaBpmcUg9pML9ZwFrZsfnIE6KNFDgTxVJ4ZFL
         a2Qs7T6KvzoLq9vJ+wcCwwFSl9yI0TOhb3cyPIoW9v2E53WZ6Dji5syG7EvEiH7onJsc
         Uvwfk77TGw1wy9NzR9iN3dZ5wkgsmgOwcbq2FnnvzEFEUwiHzwWPOVRVNHXuS09nZgde
         yK4BmQmwO7nPfrdR21RTNDyQK/JFWAXng/iJ3hB8GL4xKqTdaQQrqihjZvIsSgq6au5Y
         DR2Rm611skqOJf5k8F0iugXSaChjnEGlueuSSBReXZll4bG+rdmblUPdkfndKcm42hN5
         V+Yw==
X-Gm-Message-State: AOAM532awDzSVp8MhSKHvomi6vWmu7B5t0bwwxE31JYswW6+nwTzsSMF
        zPWY9+1cycDuYP9HZD2kA0o=
X-Google-Smtp-Source: ABdhPJyiiMLm6Ab1yFayPyySxkqdpSHOX9AynkEg/27LycQ5JqblSeNuIumk4QUzT6h5Rydhjivmsw==
X-Received: by 2002:a7b:c7d5:: with SMTP id z21mr5269497wmk.59.1644698094268;
        Sat, 12 Feb 2022 12:34:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p2sm18511641wrt.101.2022.02.12.12.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Feb 2022 12:34:54 -0800 (PST)
Message-ID: <b5bcb372-2e20-d3f0-e466-07764e8ceb71@gmail.com>
Date:   Sat, 12 Feb 2022 21:34:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
Content-Language: en-US
To:     Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
 <40f275ec-d5c5-7228-a1a1-630834a41aea@gmail.com>
 <2f955ef0-283b-92ef-94db-9549bc47f1e3@gmail.com>
 <CAMW=du=BAp_jkLKvhca3=Sv6NDSA+XdUQREhRB+2XfzsLn_x0w@mail.gmail.com>
 <09084d8d-5416-2bc1-0e59-cea44111b375@gmail.com>
 <CAMW=dunREq3s3+pZTSfKrUbS8igqidiVJd0qnZ3NPJ-5-160Og@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAMW=dunREq3s3+pZTSfKrUbS8igqidiVJd0qnZ3NPJ-5-160Og@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Grzegorz,

On 2/12/22 20:44, Grzegorz Szpetkowski wrote:
> Yes, this sounds right to me as well.
> Attaching in git diff -u form:

I applied the following patch
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?id=015e7241b392713f145f94cdfa9c2a68fbcb7f1d>.

Cheers,

Alex

commit 015e7241b392713f145f94cdfa9c2a68fbcb7f1d (HEAD -> main)
Author: Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Date:   Tue Jan 25 16:22:17 2022 +0100

    packet.7: add description of zero protocol for socket

    According to packet(7), whenever raw packet is created by
    socket(), it's immediately running, meaning that internal
    packet_rcv() handler will be triggered and socket buffer will
    begin allocation of sk_buff until sk_rcvbuf limit is reached.

    However, by examination of kernel's internal handler
    packet_create() it looks that kernel handles case of zero protocol
    in a special manner.  When packet_create() is called with arg
    protocol = 0, __register_prot_hook is not executed, meaning
    running state is still 0 and most notably, packet handler is not
    added to kernel list (vide dev_add_pack).

    I found this behavior invaluable for solving a subtle issue.  When
    process creates raw packet socket to listen for (let's say) all
    protocols, but limited to a single network interface, then while
    this interface can set by bind, it may to be too late due to
    preemption (e.g. if real-time scheduling is used) and/or high-rate
    of packets on other interfaces, meaning that undesired packets
    (any count) may be pulled into the socket buffer.

    The idea is that protocol zero means no packets on receive and an
    optional call to bind with nonzero sll_procol will act "as if" the
    originating socket API was called with this (nonzero) protocol.

    The call to bind(2) is optional.  As an example, if user intends
    to treat the socket as Tx-only, then bind(2) may be skipped.

    Reported-by: Grzegorz Szpetkowski <gszpetkowski@gmail.com>
    Link: linux-man@
<https://lore.kernel.org/linux-man/CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com/>
    Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
    Signed-off-by Grzegorz Szpetkowski <gszpetkowski@gmail.com>:

diff --git a/man7/packet.7 b/man7/packet.7
index effed18c7..182f628a4 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -47,6 +47,14 @@ is set to
 then all protocols are received.
 All incoming packets of that protocol type will be passed to the packet
 socket before they are passed to the protocols implemented in the kernel.
+If
+.I protocol
+is set to zero,
+no packets are received.
+.BR bind (2)
+can optionally be called with a nonzero
+.IR sll_protocol
+to start receiving packets for the protocols specified.
 .PP
 In order to create a packet socket, a process must have the
 .B CAP_NET_RAW


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
