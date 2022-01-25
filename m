Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDAE949B7B8
	for <lists+linux-man@lfdr.de>; Tue, 25 Jan 2022 16:36:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233913AbiAYPfS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Jan 2022 10:35:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239300AbiAYPde (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 25 Jan 2022 10:33:34 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EFF3C06176E
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 07:22:54 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id u18so49744393edt.6
        for <linux-man@vger.kernel.org>; Tue, 25 Jan 2022 07:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=20XwJjQNGGefUix8XbrMuW56obNoG2yHLHBAMNVKwUw=;
        b=l/MNtqz1yfB03F6P35OAbvJnokbRZYT801dYchseR4O0lu3uPDTE3h6vSNc8jIycGH
         EsI6JvJ8NvpzEl9CuPBP2kIiQtBUg1YVQsZ6aeZOYtWufjVSh9mLDzfiLWqjjRU4+ob9
         83GUnS0pLexczY4qHwQcIwE4WnHHZZWmDo6qh4DmaanDZFNwqlBz+uw5txMsNmfONAHR
         N4jF7Urdw+gfeS7eDmU7iNLSt4BPdTOm6D0oRdgdZALqn2CgIqjRAlt+AJMdsoFY6oLS
         s8EqKYK5Jpk9LG+soHtemIuoNTv/XdcqX9XLCk9EQn98mVXJq6V8zw3G3TBMmLBKkHIX
         8weg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=20XwJjQNGGefUix8XbrMuW56obNoG2yHLHBAMNVKwUw=;
        b=zxXHRuMceft3rpEdu1qdXPvBR+Hw8+0QmKHxVva1rLBwOZwEoRGYrmatM1S+4MXOVa
         4wzhUblkpeY6nB8xxgn+CqU6CjukFiGNSg1P0cMzr3CNZgCvp0yLOqpLzu6JJhD7GsMK
         7iAULzOVzR0Mk6QlU+nGP4Jcmo5QbsyKWBmQSNh6IzhqFxceXyGB6bEkJrY1fEFE/Cju
         JvScFz7v/3EwafK1nuOqa7XIE9AMFOVhZBM0rrJpd4QzVxvL+BdmtdjA1oDdbIB8EPt6
         ilI+hMUD0IPGK0K1fL5y915IQWFHGgfJu7Jxfz9HruewCwiPiwYAdVZmYQ8+xSKStHt5
         SLaA==
X-Gm-Message-State: AOAM5312QcBfekK2nkBbvS4muejrQtEb8zNRyLyfY8uPi+vstdVwElZY
        9jPVWvbwhTvoMf6Pj8+cq3MhuqlfehNoIqbFOMBkaF6S/9lr4Q==
X-Google-Smtp-Source: ABdhPJxzHbIvSs/iVU1+86tjk3hKVPbiNLDyvbky2MoHi2IBTjJXBdZ/Qd5fUITe1ist6RhxHApDTyD0rJADWRH/Mbg=
X-Received: by 2002:a50:9e6c:: with SMTP id z99mr21052519ede.71.1643124172837;
 Tue, 25 Jan 2022 07:22:52 -0800 (PST)
MIME-Version: 1.0
From:   Grzegorz Szpetkowski <gszpetkowski@gmail.com>
Date:   Tue, 25 Jan 2022 16:22:17 +0100
Message-ID: <CAMW=dumhWDu6LdhaQCJMskA4yNRBtOHs4iyrG6TP7xRv28AVWA@mail.gmail.com>
Subject: [PATCH] packet.7: add description of zero protocol for socket
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dear Maintainers,

According to packet(7), whenever raw packet is created by socket(),
it's immediately running, meaning that internal packet_rcv() handler
will be triggered and socket buffer will begin allocation of sk_buff
until sk_rcvbuf limit is reached.

However, by examination of kernel's internal handler packet_create()
it looks that kernel handles case of zero protocol in a special
manner.
When packet_create() is called with arg protocol = 0,
__register_prot_hook is not executed, meaning running state is still 0
and most notably, packet handler is not added to kernel list (vide
dev_add_pack).

I found this behavior invaluable for solving a subtle issue. When
process creates raw packet socket to listen for (let's say) all
protocols, but limited to a single network interface, then while this
interface can set by bind, it may to be too late due to preemption
(e.g. if real-time scheduling is used) and/or high-rate of packets on
other interfaces, meaning that undesired packets (any count) may be
pulled into the socket buffer.

The proposed patch to define behavior when protocol is to zero with socket().
Please review.

Signed-off-by: Grzegorz Szpetkowski gszpetkowski@gmail.com

diff --git a/man7/packet.7 b/man7/packet.7
index 706efbb54..461444c43 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -47,6 +47,9 @@ is set to
 then all protocols are received.
 All incoming packets of that protocol type will be passed to the packet
 socket before they are passed to the protocols implemented in the kernel.
+When protocol is set to zero, then no packets are received until
+.BR bind (2)
+specifies allowed protocol or to receive all protocols.
 .PP
 In order to create a packet socket, a process must have the
 .B CAP_NET_RAW

Thanks,
Grzegorz
