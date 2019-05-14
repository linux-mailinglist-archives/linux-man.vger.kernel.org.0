Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C8CE1CEFA
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2019 20:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726324AbfENSWm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 May 2019 14:22:42 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:39761 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfENSWm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 May 2019 14:22:42 -0400
Received: by mail-qk1-f195.google.com with SMTP id z128so10913984qkb.6
        for <linux-man@vger.kernel.org>; Tue, 14 May 2019 11:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=icbhaHOnHItEloUS20lFTPXuwmr4U8ZQ4KfrPV3v60U=;
        b=dTbLeQL5it7o36XuMGs+SslvKAHKqRzAuonph0q6kqmv3z6LsKmMAvxzUnkdrq3qao
         GI/UATULvrgTDQW5HPSG8mrB51orsAgmDsm0gBhQdL2TPy2G7MmZ/CGG+WA8NSj4gIVR
         pebwX7FMlmUrnMSVrafblzo7YdrqkCrv6GlJ4zpBPVAVHNpjzM6+hbIfgMdDDO2Oor55
         eiqEVbD0cwR0GhZgXR+XPnTXB5Vw5adIYv7V43tdgXuefYv69CQPLuNf3nh/CnkLhche
         VtCWqIajIHFT6w7lwHExsnPU6ZqVOlGh30q0vMJw+pIzwCedZcFSJrkEIDYgICSBWycw
         9qiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=icbhaHOnHItEloUS20lFTPXuwmr4U8ZQ4KfrPV3v60U=;
        b=PrINMbY61LrPk7tErFVmlvreRlLijZpbpTv5NmSY+L3qvJK923LQrGFYwR2QKbRdcn
         ywfw27lOafWPg0Sr1LAI82uagNLGYeS1w+LwUPGEeCHbj7Fv1RLZ0e2zUbUpRNiqjMZ6
         +6wQho+0GFEktzhpivhKuiu1LLAWSTfo/9iVpEDKIZgtQ37X9wQxmP/1aFEVzMi/AOG7
         F4YCjIGXCWGmFmlw+XPZMcAQT9inb9p3ZE6oOdWcFggjh1LXguXcDtkcAUSJLcDZFEv/
         VAnjZbZXZ9sryL2te6hW8TB4MvJvjtIr/BnmocLpAWPUcYCQDP2yFrn/s2T+OYrQzxfZ
         ibxw==
X-Gm-Message-State: APjAAAXYjlZgqMc1pMHgBqYH5Fri0jXwI1vABw19HD1jzo8FaqAhKH6Z
        hwFGQbk5ONXgkZZACuZucXiaxptPvvc=
X-Google-Smtp-Source: APXvYqxCKgwdLmtkqxam7jXBZ9OsK+g8mzw3I4Ygu1AzMUh6iY7rrZ6IQm2HGgVwCiqPiOLX2pXudw==
X-Received: by 2002:a37:6596:: with SMTP id z144mr27424081qkb.341.1557858161794;
        Tue, 14 May 2019 11:22:41 -0700 (PDT)
Received: from localhost.localdomain ([201.37.66.8])
        by smtp.gmail.com with ESMTPSA id g12sm9355703qkk.88.2019.05.14.11.22.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 11:22:41 -0700 (PDT)
Date:   Tue, 14 May 2019 15:22:36 -0300
From:   Ricardo Biehl Pasquali <pasqualirb@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] socket.7: Add description of SO_SELECT_ERR_QUEUE
Message-ID: <20190514182236.GA8200@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.11.3 (2019-02-01)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Ricardo Biehl Pasquali <pasqualirb@gmail.com>
---
 man7/socket.7 | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

It's the third time I'm sending this.

version 2: Rewrite the description for greater clarity.

diff --git a/man7/socket.7 b/man7/socket.7
index b8d053dfe..b43075185 100644
--- a/man7/socket.7
+++ b/man7/socket.7
@@ -49,10 +49,6 @@
 .\"	commit a8fc92778080c845eaadc369a0ecf5699a03bef0
 .\"	Author: Pavel Emelyanov <xemul@parallels.com>
 .\"
-.\" SO_SELECT_ERR_QUEUE (3.10)
-.\"	commit 7d4c04fc170087119727119074e72445f2bb192b
-.\"	Author: Keller, Jacob E <jacob.e.keller@intel.com>
-.\"
 .\" SO_MAX_PACING_RATE (3.13)
 .\"	commit 62748f32d501f5d3712a7c372bbb92abc7c62bc7
 .\"	Author: Eric Dumazet <edumazet@google.com>
@@ -869,6 +865,28 @@ Indicates that an unsigned 32-bit value ancillary message (cmsg)
 should be attached to received skbs indicating
 the number of packets dropped by the socket since its creation.
 .TP
+.BR SO_SELECT_ERR_QUEUE " (since Linux 3.10)"
+.\"	commit 7d4c04fc170087119727119074e72445f2bb192b
+.\"	Author: Keller, Jacob E <jacob.e.keller@intel.com>
+Makes poll adding
+.B POLLPRI
+when
+.B POLLERR
+event is returned. It does not affect wake up.
+.IP
+Background: The flag was added when waking up on
+.B POLLERR
+required requesting
+.B POLLIN
+or
+.B POLLPRI.
+After the commit 6e5d58fdc9bedd0255a8 ("skbuff: Fix not
+waking applications when errors are enqueued"), introduced
+in Linux 4.16, waking up on
+.B POLLERR
+does not require requesting other events. The flag is kept
+only for backwards compatibility.
+.TP
 .B SO_SNDBUF
 Sets or gets the maximum socket send buffer in bytes.
 The kernel doubles this value (to allow space for bookkeeping overhead)
-- 
2.19.1
