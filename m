Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B75A68E1E9
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:33:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229699AbjBGUdo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:33:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjBGUdn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:33:43 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA3F837577
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:33:42 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id POtYpq3f6c9C4PUespYUdH; Tue, 07 Feb 2023 20:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802022; bh=bdoDbc+0CUpGcdZB3Bi1j6uv3RaZrH+xCeFEYEZRzJ8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=sGsLJ7sXaZ6JeaQvlXnYuWG9Djwje1Qm0ypU0UV66PkF9Zkrc/acjG5E5CJaNm2Ac
         4byAKGRMf2cd5Zdn3oUbkErYDlj082Mvy4SOj40rPobLOPuMoImvVJ4foA1jfjUGm7
         7jbxfeqGIcsGkgDFxy/0tToVMWSAqWpyYcuP3z6LfFuXfUll0Qz0E8tX/9pqssKTD9
         03mgnub++EUC0qvEEOnjCuPJnGS3me8oCWnZD7kHl1qUBmIzH9fgYoPHWFY18RF3WH
         puVOkWjgVgQFhrIkIpI+F5NBhjm5E0tfOFMuxcqAR0GWlJxdIOMnJjKAialykfYRqE
         ijRATiEIzL0ag==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUerppnxK3fOSPUespIuf1; Tue, 07 Feb 2023 20:33:42 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63e2b5a6
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=NdrvaUklb98dmj5pptwA:9 a=QEXdDO2ut3YA:10
 a=JjFQb_LDtpKBWWSn7NYA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to IEC
Date:   Tue,  7 Feb 2023 13:32:50 -0700
Message-Id: <20230207203300.49894-2-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfMmFY0o720Hd2qf6TL+w53wJI35cQrBOxdf0b496zdKTT+k8dwEHuyZlHkXpO8ocr7LdcVZBO5/8TA4yuLUWkJzVjGC0YXLyioA9HixYd1DLvjRT0tfs
 H+BAkUDzp+uGSpl+cqWL5D7yFDVPAewvPnNgGgHN1VHNDNBfxpJVA7MqJjwL6QiFZymRcCihZJk63TxuHxO4+i1i01XIti4l2iIEx0auvFAq1yB/qQddGSqE
 KOlCrBM1kr50M3Bzy2P9fTdy0b8cHRI3TRjgB17vAl9KQwxieHWLkRtEjUQSBnwV
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------2.39.0
Content-Type: text/plain; charset=UTF-8; format=fixed
Content-Transfer-Encoding: 8bit

---
 man2/shmget.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


--------------2.39.0
Content-Type: text/x-patch; name="0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-IEC.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0001-man2-shmget.2-fix-limit-units-suffix-from-SI-to-IEC.patch"

diff --git a/man2/shmget.2 b/man2/shmget.2
index cdb2d3bee4b5..4bc18bedf3a9 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -354,7 +354,7 @@ for a discussion of why this default value (rather than
 is used.
 .IP
 From Linux 2.2 up to Linux 3.15, the default value of
-this limit was 0x2000000 (32\ MB).
+this limit was 0x2000000 (32\ MiB).
 .IP
 Because it is not possible to map just part of a shared memory segment,
 the amount of virtual memory places another limit on the maximum size of a

--------------2.39.0--


