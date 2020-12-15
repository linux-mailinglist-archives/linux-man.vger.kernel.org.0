Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F3192DB388
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 19:19:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731497AbgLOSTN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 13:19:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731480AbgLOSTH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Dec 2020 13:19:07 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57197C06179C
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 10:18:26 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id q75so127645wme.2
        for <linux-man@vger.kernel.org>; Tue, 15 Dec 2020 10:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tpCYidJaEB3ubav5MTRVin1i7dPmHWzbTRKiE2z6O5U=;
        b=RqiDOf1AI7XVNL9wjfbvdfuEv9luSxi/M6dimODSrUZ1Jcq+q2LUJnKpRSsdIxPwSd
         SZPHNKhRr5VT5WPo1C8wD5unAXaqy4qKyZaIY5stqa7aoREt+y1txkm30fd6YpZdkHSi
         cyJwj5wQP9IUCgnaVNnnz+AYkdv1Rn3yGkrwOc16+EA9cLxaDNeXFfrOMm3/sGHgxrDL
         ziJ/SSRq0HcKV5q92fzyPF4ARwn1wbsemTN9cl7ZHA49eqleByZ0ZJnUvViWzO+pGouu
         OQeMoJaWVqihXVf4VPkHifWU/W4zmSCUsSZrv6u1lwrdC27z3AfVPn7OYEolE7YL/uSj
         wPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tpCYidJaEB3ubav5MTRVin1i7dPmHWzbTRKiE2z6O5U=;
        b=maoXLlCC6TrwuwbzebFf9HE2FiijAO96LGrX0DcMZlk+ntv9WuO6IonrtEn7zNiyWX
         ORz0zgdKgSBoi7JgMIk8rIkyhCrbjw2jkUTTYEKB8jaC/Rqalz+fpOp3P22Ttpq+Ut3z
         OkRs7XUrG7FhHAJM2WB2kz9Sipu2e7GhrkEFxt7fPltm6JEYAp6B/c9N3/oaTr7rWM7u
         AOio1iBUQLqxqYND/+hnVLxOzQ/DK/0JKNQTazoe1ecbFxnHA9u6g/IhxZOSkZaTc2CS
         UFTLcB8N4csz6AGUVTRB4I7iuEh6etXBKCqKF0FQv+H5Mp2XgHxGigwyAlroLt/17qLd
         RPyQ==
X-Gm-Message-State: AOAM531o4+XfdMlHz76C0Kjy7WBL1efL79njIFEVC7SbSDyK5omwO5Yp
        pYG46nQDvQqEZ0sWSC+ByOg=
X-Google-Smtp-Source: ABdhPJwBGV5QiV7ZD/8yFNDEcQAM84xciyLoIG4Fmh0uzBiIeJsx6gmv953Ha38sB5BYLWlYqrp3zg==
X-Received: by 2002:a05:600c:2903:: with SMTP id i3mr134229wmd.41.1608056305131;
        Tue, 15 Dec 2020 10:18:25 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t188sm38450492wmf.9.2020.12.15.10.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Dec 2020 10:18:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Baruch Siach <baruch@tkos.co.il>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] packet.7: Update references to kernel documentation
Date:   Tue, 15 Dec 2020 19:17:34 +0100
Message-Id: <20201215181732.22155-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Baruch Siach <baruch@tkos.co.il>

Files moved from .txt to .rst.

Also, drop / prefix from kernel source tree references.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/packet.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/packet.7 b/man7/packet.7
index ac1c60905..856c59e6b 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -405,7 +405,7 @@ equal to
 .IP
 Packet sockets implement multiple variants of the packet ring.
 The implementation details are described in
-.IR Documentation/networking/packet_mmap.txt
+.IR Documentation/networking/packet_mmap.rst
 in the Linux kernel source tree.
 .TP
 .BR PACKET_STATISTICS
@@ -431,7 +431,7 @@ By default, this is a software generated timestamp generated when the
 packet is copied into the ring.
 This integer option selects the type of timestamp.
 Besides the default, it support the two hardware formats described in
-.IR Documentation/networking/timestamping.txt
+.IR Documentation/networking/timestamping.rst
 in the Linux kernel source tree.
 .TP
 .BR PACKET_TX_RING " (since Linux 2.6.31)"
@@ -648,9 +648,9 @@ The
 include file for physical-layer protocols.
 .PP
 The Linux kernel source tree.
-.IR /Documentation/networking/filter.txt
+.IR Documentation/networking/filter.rst
 describes how to apply Berkeley Packet Filters to packet sockets.
-.IR /tools/testing/selftests/net/psock_tpacket.c
+.IR tools/testing/selftests/net/psock_tpacket.c
 contains example source code for all available versions of
 .BR PACKET_RX_RING
 and

base-commit: 27482d700b5d2d062f994bee2c79aac7a5d9d17c
-- 
2.29.2

