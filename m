Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68AAB68E21A
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 21:45:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbjBGUp3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Feb 2023 15:45:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjBGUp2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Feb 2023 15:45:28 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3760F20073
        for <linux-man@vger.kernel.org>; Tue,  7 Feb 2023 12:45:26 -0800 (PST)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id PPYTpwK9Ql2xSPUqEpXwec; Tue, 07 Feb 2023 20:45:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675802726; bh=/XtMR93P+AZDeJTlgyzTh4jl9/a2IhPzL4BbWZWEfyU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=ZSJ6XXb24nbmzfbbtygc6YKUdoXyY81/6AmxuqF6UStgJYqGeI+RA2n1Lrtw+cfU5
         fvQdfVrzjn+jZlrpZedR9hbKXy0ie5RtCN4f1XeMtOLbs373BGtlbGWic4nIRldiAF
         Vhrf46KE8iWRbP4Sr0OvL4N/qLwz/OL8nK17fj+OUNlJIb8OA4vqS1Qysg14lOgJGr
         o4zYGPH6uLLjjUQwZl4Siil+3Pes4dMl1Hr4OsQhOuvfHJdfmekwnwjsEfepLR5bbW
         892jTnKmDnJi3PiJD/ZqOhr+d4GAEHGOOSfTtSSYBvgt/vXzMSMC8y6V4VYkeilaDr
         //VpPg6le6W7A==
Received: from localhost.localdomain ([184.64.102.149])
        by cmsmtp with ESMTP
        id PUqDpfz0UHFsOPUqDp7wb3; Tue, 07 Feb 2023 20:45:26 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=63e2b866
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=r77TgQKjGQsHNAKrUKIA:9 a=qRjp-vNocqgEaXo8zv0A:9 a=QEXdDO2ut3YA:10
 a=JOoHjOy4QlQUvr97Z3wA:9 a=B2y7HmGcmWMA:10
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 06/11] man2/reboot.2: punctuate hex in docs with digit separators
Date:   Tue,  7 Feb 2023 13:32:55 -0700
Message-Id: <20230207203300.49894-7-Brian.Inglis@Shaw.ca>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
References: <20230207203300.49894-1-Brian.Inglis@Shaw.ca>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------2.39.0"
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfCwkH9Qu8+cULM/JNK77jX707b3G5ZNgkaFR0mQVVwYGEYgOzSIl997FDMfaathLEcvpXOvZLf7ISazjCaRKte7eXCuFClryhkkw5CtLyHgkkspHrBRA
 4sjGXVxzCOcyEQ+CYcyczefRXGGAGrwfFAYzKTur/6sqywgktWNGXrRiuj2+d5GeiNXiSJ1Ke6BDXBntF49eD0a0VHqn1gvTgIDMHhlsfu9Rf1AMfzBw6bFS
 15+kx80TSc8HX5PLo9dqxN75whFojxFgytxdquu+/ilLkgZ7G78nEdKWmDSjxT25
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
Content-Type: text/x-patch; name="0006-man2-reboot.2-punctuate-hex-in-docs-with-digit-separ.patch"
Content-Transfer-Encoding: 8bit
Content-Disposition: attachment; filename="0006-man2-reboot.2-punctuate-hex-in-docs-with-digit-separ.patch"

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


