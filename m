Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6A8F102AE1
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2019 18:38:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728339AbfKSRiP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Nov 2019 12:38:15 -0500
Received: from plasma6.jpberlin.de ([80.241.56.68]:33971 "EHLO
        plasma6.jpberlin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727929AbfKSRiP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Nov 2019 12:38:15 -0500
X-Greylist: delayed 383 seconds by postgrey-1.27 at vger.kernel.org; Tue, 19 Nov 2019 12:38:14 EST
Received: from spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123])
        by plasma.jpberlin.de (Postfix) with ESMTP id 02DFBBB8BC;
        Tue, 19 Nov 2019 18:31:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.68])
        by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
        with ESMTP id oApqbOxFz6_6; Tue, 19 Nov 2019 18:31:46 +0100 (CET)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "webmail.opensynergy.com", Issuer "GeoTrust EV RSA CA 2018" (not verified))
        (Authenticated sender: opensynergy@jpberlin.de)
        by plasma.jpberlin.de (Postfix) with ESMTPSA id B5417BB91C;
        Tue, 19 Nov 2019 18:31:46 +0100 (CET)
Received: from os-lin-mgo.open-synergy.com (10.25.255.1) by
 MXS01.open-synergy.com (10.25.10.17) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Tue, 19 Nov 2019 18:31:51 +0100
From:   Mikhail Golubev <Mikhail.Golubev@opensynergy.com>
To:     <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>
Subject: [patch] vsock.7: Add missing structure element
Date:   Tue, 19 Nov 2019 18:31:34 +0100
Message-ID: <20191119173134.5668-1-Mikhail.Golubev@opensynergy.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.25.255.1]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The structure 'struct sockaddr_vm' has additional element 'unsigned char
svm_zero[]' since version v3.9-rc1 (include/uapi/linux/vm_sockets.h).
Linux kernel checks that this element is zeroed
(net/vmw_vsock/vsock_addr.c). Reflect this on the vsock man page.

Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=205583
Signed-off-by: Mikhail Golubev <Mikhail.Golubev@opensynergy.com>
---
 man7/vsock.7 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man7/vsock.7 b/man7/vsock.7
index 23c67548f..145057719 100644
--- a/man7/vsock.7
+++ b/man7/vsock.7
@@ -95,6 +95,7 @@ struct sockaddr_vm {
     unsigned short svm_reserved1;
     unsigned int   svm_port;       /* Port # in host byte order */
     unsigned int   svm_cid;        /* Address in host byte order */
+    unsigned char  svm_zero[];
 };
 .EE
 .in
@@ -113,6 +114,8 @@ Only a process with the
 capability may
 .BR bind (2)
 to these port numbers.
+.I svm_zero
+is always set to 0.
 .PP
 There are several special addresses:
 .B VMADDR_CID_ANY
-- 
2.23.0

