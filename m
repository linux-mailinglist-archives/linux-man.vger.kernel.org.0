Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 09F394FE78
	for <lists+linux-man@lfdr.de>; Mon, 24 Jun 2019 03:42:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726958AbfFXBmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Jun 2019 21:42:14 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:47017 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726489AbfFXBkx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Jun 2019 21:40:53 -0400
Received: by mail-qk1-f195.google.com with SMTP id x18so8554462qkn.13
        for <linux-man@vger.kernel.org>; Sun, 23 Jun 2019 18:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CMDw69Q+MYvuWOsROC4F6akny+VDf/osU1oo0677yTE=;
        b=bwgjj8QvJ0kBhv3LawaCDaq+A5Fr8p0R1xVk/Ux4UHj0ipZ3FcvEDbWA3VZsSXOlzc
         x4q/ZpHWejZWjgTG1j1JMdSnC5QR3qxCJJ5L+cZqfBROrYBmA8D0iWCc4gupF3/7bd4E
         3A4P+9hWo5dSsMCjVE/iidE+Bkh8zrJxHU2dsaa4UFnTc996oH0nPfX2uAOD1xvNxITr
         CyATn9mvY/S1qoauz6BFdY2pAcTo4zBAwZfvTjbeFof0eeeU4uhjVam9GOhmcdcImaTq
         ds/3mPpzORnylpT9RLuh5rDAzFn1XlxP30SPuZMf66K6lbVBu4P9rzmOFG/4Eer+TJ5k
         LMcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CMDw69Q+MYvuWOsROC4F6akny+VDf/osU1oo0677yTE=;
        b=q+C63sXC0+Ad1AHiAip6TlAMR85Fdyvd5mxXeH5vegELeGNzWriNT77KALcWuEbx18
         hh9nGCwAuJGM2SnHQroWVnhLS8kv81dChsy+9hJXnUM6d4RgupVGpp/b0h7+tS9IihmQ
         dl/Lb6W0frIsr4SpmS2CwScDH3DAulmOs5ybqGbuQiKbooeq/KtCXpS9aAgr0lDZysNg
         VV/eqgLVlYSacvzIlkx+8IlWAWyQ6Mv03FN61wgBbj8M7veiTW1Js16rRpGibiJ9nMob
         l3CBRYO2MxU9qebs9g3TUWHc13zwmt2MsgQCfT9N+9rxjoL8hYOKz+BUy4ghxlvqJsAi
         V9Qg==
X-Gm-Message-State: APjAAAUEV6bPx+U3Nr1k+055wOfKglg2szx718tPLWV798f/5n84A9HC
        OGwvkrReNhHS95wpgjM5bLc=
X-Google-Smtp-Source: APXvYqyXTXvYC3h73AAWktcY9JtGm9Y1w/gRPT9YcWlY6V9mwV4WD8McknYWmgFm1ndM7HmmU+y6Gw==
X-Received: by 2002:a05:620a:144a:: with SMTP id i10mr11101869qkl.130.1561340452763;
        Sun, 23 Jun 2019 18:40:52 -0700 (PDT)
Received: from localhost.localdomain ([201.37.66.8])
        by smtp.gmail.com with ESMTPSA id b203sm4943813qkg.29.2019.06.23.18.40.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 23 Jun 2019 18:40:52 -0700 (PDT)
Date:   Sun, 23 Jun 2019 22:40:47 -0300
From:   Ricardo Biehl Pasquali <pasqualirb@gmail.com>
To:     mtk.manpages@gmail.com, corbet@lwn.net
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] socket.7: Add description of SO_SELECT_ERR_QUEUE
Message-ID: <20190624014047.GA14572@localhost.localdomain>
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

Jonathan, can you help to reach Michael or review yourself?
Sorry for bothering you.

It's the fourth time I'm sending this.
First time was on 2019-02-28.

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
