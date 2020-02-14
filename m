Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A663415D7EF
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2020 14:07:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728121AbgBNNHz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 14 Feb 2020 08:07:55 -0500
Received: from us-smtp-2.mimecast.com ([207.211.31.81]:35470 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726191AbgBNNHz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 14 Feb 2020 08:07:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1581685675;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=1832xFEQ/vqOUquw3BW7qf1Tz86S2ygW8Q27WNGEQwM=;
        b=h3dHIGSXVXXSOZ8dG71ZePINL4PpBi9q/4EfPLEM2VDmYuMKywbewjakEtL+kBPy4EV8BX
        eTVKA2UNvlpQ1+c9eP/SvoN98zeHLBqZlxrhEbRDJWFoDAQhoq7UNvzbKCWPDH92ot0+uI
        wF5M6rD5SbAi3MI2gnjeL7bq4AS8HTQ=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-MVxsPmt5N6KeqPZj0ezM0Q-1; Fri, 14 Feb 2020 08:07:53 -0500
X-MC-Unique: MVxsPmt5N6KeqPZj0ezM0Q-1
Received: by mail-wr1-f72.google.com with SMTP id n23so3974593wra.20
        for <linux-man@vger.kernel.org>; Fri, 14 Feb 2020 05:07:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1832xFEQ/vqOUquw3BW7qf1Tz86S2ygW8Q27WNGEQwM=;
        b=UHfptyuRiOdzAafEAvqhAK+atumJSxsYoQKwDQGCgZygLmgAtZ6Wk2Pl7KlyKpVVV4
         gSdtjOTttoN3pczgbo56bEi2C0UnuflbP5VKLrEW/JIOXuTM0JA8tvpvw0nKP2g5h6uc
         v8sFnUTrwTtATKcterFQBHMPAdQiPm1vPA7SFqcXJkuL9IXBGirBi1Ff08VFBAtc/HGv
         yfNo0W3ZrZGxYtj9tUGMA8z6K6bqw2CB78Lc/tvKoRV173A0E+OdiWsOaJQ3CQoNr+DK
         TdZhguBZkIEpxx+stW5eTKkEdqjgllcKK78qr/j/JIYLdbNORJcCi33k3+iEhO/qTeA+
         jjAg==
X-Gm-Message-State: APjAAAXBLkmcE1stMBZNYP1Va0Taz/vAn89bMaKHdzDVh+txlKFj7UoE
        kqiliKjFdsilFpFtzB63iICFe+3C6r5O03w48RiTrdFJjVjf0Bxc0IbSsvgO5cldHeFn2gZlmlv
        asPnAKwy+vLyldwgaLFFc
X-Received: by 2002:adf:f0cb:: with SMTP id x11mr4034076wro.421.1581685672335;
        Fri, 14 Feb 2020 05:07:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqx1+X/LSGJbNFIQIc0zspTRiuWA1SmDcQRTsI0AIgtgMfeDii0ltH/9WQWfhAhTpVQxi8z8YA==
X-Received: by 2002:adf:f0cb:: with SMTP id x11mr4034045wro.421.1581685672067;
        Fri, 14 Feb 2020 05:07:52 -0800 (PST)
Received: from steredhat.redhat.com (host209-4-dynamic.27-79-r.retail.telecomitalia.it. [79.27.4.209])
        by smtp.gmail.com with ESMTPSA id g15sm6689333wro.65.2020.02.14.05.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 05:07:51 -0800 (PST)
From:   Stefano Garzarella <sgarzare@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     Jorgen Hansen <jhansen@vmware.com>, linux-man@vger.kernel.org,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Dexuan Cui <decui@microsoft.com>, netdev@vger.kernel.org
Subject: [PATCH v2] vsock.7: add VMADDR_CID_LOCAL description
Date:   Fri, 14 Feb 2020 14:07:49 +0100
Message-Id: <20200214130749.126603-1-sgarzare@redhat.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux 5.6 added the new well-known VMADDR_CID_LOCAL for
local communication.

This patch explains how to use it and remove the legacy
VMADDR_CID_RESERVED no longer available.

Signed-off-by: Stefano Garzarella <sgarzare@redhat.com>
---
v2:
    * rephrased "Local communication" description [Stefan]
    * added a mention of previous versions that supported
      loopback only in the guest [Stefan]
---
 man7/vsock.7 | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/man7/vsock.7 b/man7/vsock.7
index c5ffcf07d..78ac22b1e 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -127,8 +127,8 @@ There are several special addresses:
 means any address for binding;
 .B VMADDR_CID_HYPERVISOR
 (0) is reserved for services built into the hypervisor;
-.B VMADDR_CID_RESERVED
-(1) must not be used;
+.B VMADDR_CID_LOCAL
+(1) is the well-known address for local communication (loopback);
 .B VMADDR_CID_HOST
 (2)
 is the well-known address of the host.
@@ -164,6 +164,16 @@ Consider using
 .B VMADDR_CID_ANY
 when binding instead of getting the local CID with
 .BR IOCTL_VM_SOCKETS_GET_LOCAL_CID .
+.SS Local communication
+The
+.B VMADDR_CID_LOCAL
+(1) directs packets to the same host that generated them. This is useful
+for testing applications on a single host and for debugging.
+.PP
+The local CID obtained with
+.BR IOCTL_VM_SOCKETS_GET_LOCAL_CID
+can be used for the same purpose, but it is preferable to use
+.B VMADDR_CID_LOCAL .
 .SH ERRORS
 .TP
 .B EACCES
@@ -222,6 +232,11 @@ are valid.
 Support for VMware (VMCI) has been available since Linux 3.9.
 KVM (virtio) is supported since Linux 4.8.
 Hyper-V is supported since Linux 4.14.
+.PP
+VMADDR_CID_LOCAL is supported since Linux 5.6.
+Local communication in the guest and on the host is available since Linux 5.6.
+Previous versions partially supported it only in the guest and only with some
+transports (VMCI and virtio).
 .SH SEE ALSO
 .BR bind (2),
 .BR connect (2),
-- 
2.24.1

