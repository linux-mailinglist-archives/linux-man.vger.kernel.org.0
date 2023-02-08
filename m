Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 776F868F8F2
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 21:41:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232102AbjBHUlR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 15:41:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232126AbjBHUlQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 15:41:16 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1D073865D
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 12:41:15 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PkrFps3oAc9C4PrFipcPrQ; Wed, 08 Feb 2023 20:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675888874; bh=VNRMMoLaqm+bjTP+kJQUOgT+OnFIvYMFJb89IsvJNh4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=n/OC8/YHnfd/FEvAi7Fr88Prke19iXow5/tS4nlimnuid7LQkwxrRRt2im37c4cu2
         QLHpGfitYNGaJE/KdWVx/oWdykrXQA0k/OyL/zbCTs3uzsr5C9yghvxJaSgZS73YIU
         nb/7lKD4DABWJRw7arHV+/zCP2HyNA8EVH1aratUgqrTm5TO5rww+arv0sBFbUXxiH
         /4daICOK0+I/lO1ZS9BJSOSQ5sMwmEUDIDATEdIBQI5gY9boZ8c7bdog+UJy/co7s7
         JLcbdd/pBnRds35VKqI+s3s23upoLTDLNM5ZyfE3O+bFlWYj3RnLaxRVq03YHd5qRc
         LPW2ewAP203nA==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PrFipm2l6HFsOPrFipAXhG; Wed, 08 Feb 2023 20:41:14 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e408ea
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=qRjp-vNocqgEaXo8zv0A:9 a=QEXdDO2ut3YA:10
 a=JOoHjOy4QlQUvr97Z3wA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH v2 06/11] man2/reboot.2: punctuate hex in docs with digit separators
Date:   Wed,  8 Feb 2023 13:27:28 -0700
Message-Id: <58ec38708be44be2b1009c4c57a6bf27e0099eee.1675830945.git.Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfHHL27Wm4lEQwjbOJXAcW7jdcktARPrcEjbF3bwZOBNr+4yZjZXT8lNmciOdbMgSUiy61+vcyyV4p7qRCqQn6QUEGBlu8S8UtWuIgcPJQioW7oMlL9Qj
 Sr711m8Z44ZsAY8Syy8Ty8P2WqwEkX5WgG8+8mofyiBAe3te9TIH5tMFp5oJwt6zk6Y9ScLjAHdu5PpPLO9brVAPMXnp+fSDx3hWyao4UpSth07OZLQw116H
 8gtKnGa3gbMOALgfF9FCopVYGZ2xbu/JexT2CBmrUZ98kOpbMMPoQtkfgKe7TCOA
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
 man2/reboot.2 | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)


--------------2.39.0
Content-Type: text/x-patch; name="v2-0006-man2-reboot.2-punctuate-hex-in-docs-with-digit-se.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline; filename="v2-0006-man2-reboot.2-punctuate-hex-in-docs-with-digit-se.patch"

diff --git a/man2/reboot.2 b/man2/reboot.2
index d20fdf31a451..1d65bf18691d 100644
--- a/man2/reboot.2
+++ b/man2/reboot.2
@@ -47,20 +47,20 @@ unless
 .I magic
 equals
 .B LINUX_REBOOT_MAGIC1
-(that is, 0xfee1dead) and
+(that is, 0xfee1\[aq]dead) and
 .I magic2
 equals
 .B LINUX_REBOOT_MAGIC2
-(that is, 0x28121969).
+(that is 0x2812\[aq]1969).
 However, since Linux 2.1.17 also
 .B LINUX_REBOOT_MAGIC2A
-(that is, 0x05121996)
+(that is 0x0512\[aq]1996)
 and since Linux 2.1.97 also
 .B LINUX_REBOOT_MAGIC2B
-(that is, 0x16041998)
+(that is 0x1604\[aq]1998)
 and since Linux 2.5.71 also
 .B LINUX_REBOOT_MAGIC2C
-(that is, 0x20112000)
+(that is 0x2011\[aq]2000)
 are permitted as values for
 .IR magic2 .
 (The hexadecimal values of these constants are meaningful.)
@@ -81,7 +81,7 @@ proper action (maybe: kill all processes, sync, reboot).
 .TP
 .B LINUX_REBOOT_CMD_CAD_ON
 .RB ( RB_ENABLE_CAD ,
-0x89abcdef).
+0x89ab\[aq]cdef).
 CAD is enabled.
 This means that the CAD keystroke will immediately cause
 the action associated with
@@ -89,7 +89,7 @@ the action associated with
 .TP
 .B LINUX_REBOOT_CMD_HALT
 .RB ( RB_HALT_SYSTEM ,
-0xcdef0123; since Linux 1.1.76).
+0xcdef\[aq]0123; since Linux 1.1.76).
 The message "System halted." is printed, and the system is halted.
 Control is given to the ROM monitor, if there is one.
 If not preceded by a
@@ -98,7 +98,7 @@ data will be lost.
 .TP
 .B LINUX_REBOOT_CMD_KEXEC
 .RB ( RB_KEXEC ,
-0x45584543, since Linux 2.6.13).
+0x4558\[aq]4543; since Linux 2.6.13).
 Execute a kernel that has been loaded earlier with
 .BR kexec_load (2).
 This option is available only if the kernel was configured with
@@ -106,7 +106,7 @@ This option is available only if the kernel was configured with
 .TP
 .B LINUX_REBOOT_CMD_POWER_OFF
 .RB ( RB_POWER_OFF ,
-0x4321fedc; since Linux 2.1.30).
+0x4321\[aq]fedc; since Linux 2.1.30).
 The message "Power down." is printed, the system is stopped,
 and all power is removed from the system, if possible.
 If not preceded by a
@@ -115,7 +115,7 @@ data will be lost.
 .TP
 .B LINUX_REBOOT_CMD_RESTART
 .RB ( RB_AUTOBOOT ,
-0x1234567).
+0x0123\[aq]4567).
 The message "Restarting system." is printed, and a default
 restart is performed immediately.
 If not preceded by a
@@ -123,7 +123,7 @@ If not preceded by a
 data will be lost.
 .TP
 .B LINUX_REBOOT_CMD_RESTART2
-(0xa1b2c3d4; since Linux 2.1.30).
+(0xa1b2\[aq]c3d4; since Linux 2.1.30).
 The message "Restarting system with command \(aq%s\(aq" is printed,
 and a restart (using the command string given in
 .IR arg )
@@ -134,7 +134,7 @@ data will be lost.
 .TP
 .B LINUX_REBOOT_CMD_SW_SUSPEND
 .RB ( RB_SW_SUSPEND ,
-0xd000fce1; since Linux 2.5.18).
+0xd000\[aq]fce1; since Linux 2.5.18).
 The system is suspended (hibernated) to disk.
 This option is available only if the kernel was configured with
 .BR CONFIG_HIBERNATION .

--------------2.39.0--


