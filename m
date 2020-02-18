Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA501629E7
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2020 16:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgBRPyl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Feb 2020 10:54:41 -0500
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:24727 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726338AbgBRPyl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Feb 2020 10:54:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1582041280;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=R8B7btjReU6qVqxwjEIY1YJ+fv46JUdfE/jDnMX3JJQ=;
        b=WLY3VuQnssOebvYWG8KVDv8JIHwThnJZz4BpE0Ng+GozEOGUuopAnQAwkFA5BYtUNf/Q6b
        8Ad+NMPDsxsAoqu9ztWJzJLeaRmLihNvBo78H/8x/rNR+iQlcOUp+7mZxDUGKc/9po2eIa
        czHJKl6XGJXLoJ+fhkr1yFCHzeGav30=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-orVYwKV_PoOJhggDzaZW_g-1; Tue, 18 Feb 2020 10:54:38 -0500
X-MC-Unique: orVYwKV_PoOJhggDzaZW_g-1
Received: by mail-wr1-f69.google.com with SMTP id c6so10971909wrm.18
        for <linux-man@vger.kernel.org>; Tue, 18 Feb 2020 07:54:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R8B7btjReU6qVqxwjEIY1YJ+fv46JUdfE/jDnMX3JJQ=;
        b=Q3A2zIPhocDJz+EiKImAhTlVFX4raRUqtJe14n5hLN3+ZojPrNn0XstBI4vv7j2r+Y
         Ky488SYxCTc1/LLSHxaGb3ZdjeM7BXn7gaNyd+ZqpVlOTcz/+9SvJ04uj6UmfXfQ1PKP
         iLQLoMcCmFjVf4nkTvJjaHqePhzqe22nmoK+fxU+QNRixV0wt6zuEP0xRPBglH7fjm68
         XXpKbk2yDbUzpUxHcXu35D5mrFWF0pMR2Oal2fhkNj/wvL1RkRCAHr2kv156OuRF3coc
         hWdce9mbpsUdWVh2anbAIkupM4/2d9j7Cz8Z7hnTudz/rqElnOvQnzFtH29h+iZ8M4y4
         eW+w==
X-Gm-Message-State: APjAAAVVyDNEdKWtVmlTrevnxACa/wzTHVVXtLE60aLMKiy1g2bSsyn1
        JrQLZEcESrZ48vzQyijYEzNMy4/W0GKs1jGrh38pkemRXEp6AbMGQ7LxkL6pFsHKJfByUqETRXY
        FiSTbMTAq3Qmt4UjYGf93
X-Received: by 2002:a1c:7203:: with SMTP id n3mr3829528wmc.119.1582041277440;
        Tue, 18 Feb 2020 07:54:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVMLwmI9lWeEdC/itvflVDqN7kJuopZW0hKDhTbHjVqtZfY5KD1vTHmGpoCxwXqLyXhxMdmQ==
X-Received: by 2002:a1c:7203:: with SMTP id n3mr3829507wmc.119.1582041277173;
        Tue, 18 Feb 2020 07:54:37 -0800 (PST)
Received: from steredhat.redhat.com (host209-4-dynamic.27-79-r.retail.telecomitalia.it. [79.27.4.209])
        by smtp.gmail.com with ESMTPSA id f1sm6678029wro.85.2020.02.18.07.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 07:54:36 -0800 (PST)
From:   Stefano Garzarella <sgarzare@redhat.com>
To:     mtk.manpages@gmail.com
Cc:     Jorgen Hansen <jhansen@vmware.com>, netdev@vger.kernel.org,
        linux-man@vger.kernel.org, Stefan Hajnoczi <stefanha@redhat.com>,
        Dexuan Cui <decui@microsoft.com>
Subject: [PATCH v4] vsock.7: add VMADDR_CID_LOCAL description
Date:   Tue, 18 Feb 2020 16:54:35 +0100
Message-Id: <20200218155435.172860-1-sgarzare@redhat.com>
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

Reviewed-by: Jorgen Hansen <jhansen@vmware.com>
Signed-off-by: Stefano Garzarella <sgarzare@redhat.com>
---
v4:
    * removed "The" in the "Local communication" section [Stefan]
v3:
    * rephrased "Previous versions" part [Jorgen]
v2:
    * rephrased "Local communication" description [Stefan]
    * added a mention of previous versions that supported
      loopback only in the guest [Stefan]
---
 man7/vsock.7 | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/man7/vsock.7 b/man7/vsock.7
index c5ffcf07d..fa2c6e17e 100644
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
@@ -164,6 +164,15 @@ Consider using
 .B VMADDR_CID_ANY
 when binding instead of getting the local CID with
 .BR IOCTL_VM_SOCKETS_GET_LOCAL_CID .
+.SS Local communication
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
@@ -222,6 +231,11 @@ are valid.
 Support for VMware (VMCI) has been available since Linux 3.9.
 KVM (virtio) is supported since Linux 4.8.
 Hyper-V is supported since Linux 4.14.
+.PP
+VMADDR_CID_LOCAL is supported since Linux 5.6.
+Local communication in the guest and on the host is available since Linux 5.6.
+Previous versions only supported local communication within a guest
+(not on the host), and only with some transports (VMCI and virtio).
 .SH SEE ALSO
 .BR bind (2),
 .BR connect (2),
-- 
2.24.1

