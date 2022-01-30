Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 176714A35CE
	for <lists+linux-man@lfdr.de>; Sun, 30 Jan 2022 11:49:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237320AbiA3KtZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jan 2022 05:49:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231549AbiA3KtZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jan 2022 05:49:25 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8749C061714
        for <linux-man@vger.kernel.org>; Sun, 30 Jan 2022 02:49:24 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id h7so33546553ejf.1
        for <linux-man@vger.kernel.org>; Sun, 30 Jan 2022 02:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XS/drXXMowjEfByIn7x4eeUyL6cq10WnVUBUstg1aXM=;
        b=E3JRjtAcDlVo1VBeT/2LCuM9limaKSz6tamm6ee+04J3Vm27bghFvCtVMBD8jMAsUI
         BEe3kGtzOKO6w0FRamYBZFoaiUeCqGnwnkFqT2AOZV9ZHBC028hNbALpp9ZWFz8PKFcu
         2LYxFf025AYMEsycSWGXuvx5BD33+xpJaInZXr9S1xkFG3jRvt17vW1seE/OdBD/NcKN
         lN5o5VgX0lFMZ4stOsfcb9Lern3V7NQLtQQUCaIAtkJRdkWuzY1ggAxemnPU+mCtOQRG
         GAgv8nf+dmrZBRjNqHdh6N0IrMX2c39YkFBA1fb8X6F41WpfCIN79OXklp9ezlqOWpgk
         yB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XS/drXXMowjEfByIn7x4eeUyL6cq10WnVUBUstg1aXM=;
        b=b45oxamq3rk8xs0DhXvZa8jX7rr8GkStXnRGi+m3xaxfJ48a9jj8bTIZXjTX6bxmP5
         n6wVbeqCKJp/40rWHT4i3jz+RBGQMf2RtmBulsW/D2jAEGViFmIsBdV/S94vARS7C9zd
         HB9WlyQWvlkiEz53KR8NrYYDENYZumFILS6MLtWBd8XuNfKdvh9/LRz5+n4wHWvWbt/6
         HRTuU5kL1Rxs3GWOSGPZCd6kUrveURgTcstiAT0Eu9YVoEj+AhBokenQRtTenDN9/fCi
         r+X7Q8FDJa2LJYCTwQfFyOeE/iouo4TtWzBzCG2lT+fM9s3eBIRxZNl+RtypFTLKHc/g
         TyWA==
X-Gm-Message-State: AOAM531w2cA4/NbRE/+//VKctB2CKKKosTa7xOJdH4VtkyOuV44nz9eb
        T+gCZ/e/N8lU5fOpMxvGsoGcLO2DmUvSUNxkyPwjBHYt
X-Google-Smtp-Source: ABdhPJzAJ5lvWsrZJmJSdXj+wo7bZuIIPwyvUNgKD8e40RJdt6Es6LFDe51FmbU+UMpmbzFIExH0BSBv18BgCTH10c8=
X-Received: by 2002:a17:906:35c2:: with SMTP id p2mr13130747ejb.117.1643539763345;
 Sun, 30 Jan 2022 02:49:23 -0800 (PST)
MIME-Version: 1.0
References: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
In-Reply-To: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
From:   Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Date:   Sun, 30 Jan 2022 11:48:53 +0100
Message-ID: <CAMW=du=-FHHam5P+8M4_jOYk3DjVe0VPECV01qG3tHL7zqW6pg@mail.gmail.com>
Subject: Re: [PATCH] packet.7: add description of zero protocol for socket
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In addtion of preventing unwanted packets (from other interfaces)
being received between socket and bind, I've found another one. If
desired usage of the raw packet socket is egress-only, meaning user
doesn't want to receive any packet, then such a socket created with
protocol =3D 0 argument will save both CPU/memory resources of the
process, since Rx protocol handler won't be invoked upon reception of
packets and the associated Rx socket buffer won't be populated,
regardless of ingress traffic load  This can be especially useful in
embedded applications.

Not sure if this can also be added to man, though.

Thanks,
Grzegorz

wt., 25 sty 2022 o 16:22 Grzegorz Szpetkowski <gszpetkowski@gmail.com>
napisa=C5=82(a):
>
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
> When packet_create() is called with arg protocol =3D 0,
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
> The proposed patch to define behavior when protocol is to zero with socke=
t().
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
>  socket before they are passed to the protocols implemented in the kernel=
.
> +When protocol is set to zero, then no packets are received until
> +.BR bind (2)
> +specifies allowed protocol or to receive all protocols.
>  .PP
>  In order to create a packet socket, a process must have the
>  .B CAP_NET_RAW
>
> Thanks,
> Grzegorz
