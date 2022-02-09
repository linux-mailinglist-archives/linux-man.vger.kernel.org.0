Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1EDC4AFE76
	for <lists+linux-man@lfdr.de>; Wed,  9 Feb 2022 21:29:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230498AbiBIU3U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Feb 2022 15:29:20 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:56482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231688AbiBIU3T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Feb 2022 15:29:19 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79B3BE019272
        for <linux-man@vger.kernel.org>; Wed,  9 Feb 2022 12:29:21 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg21-20020a05600c3c9500b0035283e7a012so2528930wmb.0
        for <linux-man@vger.kernel.org>; Wed, 09 Feb 2022 12:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rQVddc8UcgHT4Syfzt09cdMrfghhTCkGAH9+xwoP6VQ=;
        b=mAGtxj92MiE6/8wjFJ/ppD1MPsPRFPlV9tWwrZBmYKIRMECy7fDlQs0zecLdjqQyRx
         whDMgnX/7nTCgZR/kYL8ZH8KEcA1JLuztVjGNZexHlg/+xF9lDQ3ko6IhOVEfTpcsvvG
         HgUjGZLMRoIBkesqWrQlRPZHGcxI87MTNgtvywcmH2uJsjoj8MZ1CQUdtinvMg7VVUud
         kHaX7ndp3J9OrGSxItrVTPynHrPcW3uuwC8oL3d8EtGxKswOQTXCW8RTwUY+zTPHK6O8
         hNTr+ShyhGKm1lsYZoLCdUaOZ7ZIAKqoHeMrO+fC5QHK/tdOmw6hmgQz9Deo9YIpo43H
         KGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rQVddc8UcgHT4Syfzt09cdMrfghhTCkGAH9+xwoP6VQ=;
        b=ZEzq6oWngZoVrR2+ttBA3mYFaLhPp2XTp2marg5XE/0+r0ACR9fKqbAVk6ZiSYFv+v
         IGqQEzR+kk6M5p9nGOd0vdvZwKUoUiEr1cSNIsuO/25gYemRcValP3yTWevZUgSl2QO0
         zv2aQQKtA8PRVSDFP0YXOI19TTR+6FNtkP8Vu5nlyJJ8zKtcB9GRS4vGEe2SQThEZqMo
         nM45yjhth+ijuC947VRyH7pHtSlazPTSlIGaQcEcgwbCPcPi8cl8nkodQEItL9UJoUh3
         pudHLYrCARTR6WX0VlJ+3u/YNwTZqpQu5H+5VmmdyZm4GW1dirSS24MEdmev32YKK53U
         OxTw==
X-Gm-Message-State: AOAM530c7mppSwWqFfMPXEvHV6Vo97xcG86qBnOz8nZqMhf8QKF8OYUO
        Bc7FZ0V4ME5d+gaIwd+Lhj4bH+ukiy4=
X-Google-Smtp-Source: ABdhPJzJdsPnXAzFJcm+pvxG7VVH1fhqWTYTD6EMdPGO0bCH6lcwfF4sNIDzmfOe8IfbCGH4CNno/A==
X-Received: by 2002:a05:600c:210c:: with SMTP id u12mr4331506wml.56.1644438560039;
        Wed, 09 Feb 2022 12:29:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t11sm2531235wrm.46.2022.02.09.12.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 12:29:19 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <40f275ec-d5c5-7228-a1a1-630834a41aea@gmail.com>
Date:   Wed, 9 Feb 2022 21:29:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
Content-Language: en-US
To:     Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,
        NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Grzegorz,

On 1/25/22 16:22, Grzegorz Szpetkowski wrote:
> Dear Maintainers,
> 
> According to packet(7), whenever raw packet is created by socket(),
> it's immediately running, meaning that internal packet_rcv() handler
> will be triggered and socket buffer will begin allocation of sk_buff
> until sk_rcvbuf limit is reached.
> 
> However, by examination of kernel's internal handler packet_create()
> it looks that kernel handles case of zero protocol in a special
> manner.
> When packet_create() is called with arg protocol = 0,
> __register_prot_hook is not executed, meaning running state is still 0
> and most notably, packet handler is not added to kernel list (vide
> dev_add_pack).
> 
> I found this behavior invaluable for solving a subtle issue. When
> process creates raw packet socket to listen for (let's say) all
> protocols, but limited to a single network interface, then while this
> interface can set by bind, it may to be too late due to preemption
> (e.g. if real-time scheduling is used) and/or high-rate of packets on
> other interfaces, meaning that undesired packets (any count) may be
> pulled into the socket buffer.
> 
> The proposed patch to define behavior when protocol is to zero with socket().
> Please review.
> 
> Signed-off-by: Grzegorz Szpetkowski gszpetkowski@gmail.com
> 
> diff --git a/man7/packet.7 b/man7/packet.7
> index 706efbb54..461444c43 100644
> --- a/man7/packet.7
> +++ b/man7/packet.7
> @@ -47,6 +47,9 @@ is set to
>  then all protocols are received.
>  All incoming packets of that protocol type will be passed to the packet
>  socket before they are passed to the protocols implemented in the kernel.
> +When protocol is set to zero, then no packets are received until
> +.BR bind (2)
> +specifies allowed protocol or to receive all protocols.man

There's something wrong in that line, or I'm not understanding it.
Could you please review it?

Thanks,

Alex

>  .PP
>  In order to create a packet socket, a process must have the
>  .B CAP_NET_RAW
> 
> Thanks,
> Grzegorz
