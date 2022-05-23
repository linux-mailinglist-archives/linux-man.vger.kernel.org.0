Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A231530BD0
	for <lists+linux-man@lfdr.de>; Mon, 23 May 2022 11:03:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231548AbiEWIES (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 May 2022 04:04:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231552AbiEWIES (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 May 2022 04:04:18 -0400
Received: from gofer.mess.org (gofer.mess.org [IPv6:2a02:8011:d000:212::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6801324976
        for <linux-man@vger.kernel.org>; Mon, 23 May 2022 01:04:08 -0700 (PDT)
Received: by gofer.mess.org (Postfix, from userid 1000)
        id 8533A100F35; Mon, 23 May 2022 09:04:06 +0100 (BST)
Date:   Mon, 23 May 2022 09:04:06 +0100
From:   Sean Young <sean@mess.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] lirc.4: document lirc changes in the kernel
Message-ID: <Yos/9usw6be5l4jh@gofer.mess.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Linux 5.17 makes LIRC_SET_REC_TIMEOUT_REPORTS an no-op and 5.18
introduces LIRC_OVERFLOW. Also some rewording to clarify.

Signed-off-by: Sean Young <sean@mess.org>
---
 man4/lirc.4 | 51 +++++++++++++++++++++++++--------------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/man4/lirc.4 b/man4/lirc.4
index 8bc8a95cf..eb3c8d141 100644
--- a/man4/lirc.4
+++ b/man4/lirc.4
@@ -47,8 +47,6 @@ Other hardware provides a stream of pulse/space durations.
 Such drivers work in
 .BR LIRC_MODE_MODE2
 mode.
-Sometimes, this kind of hardware also supports
-sending IR data.
 Such hardware can be used with (almost) any kind of remote.
 This type of hardware can also be used in
 .BR LIRC_MODE_SCANCODE
@@ -58,6 +56,8 @@ These decoders can be written in extended BPF (see
 and attached to the
 .B lirc
 device.
+Sometimes, this kind of hardware also supports
+sending IR data.
 .PP
 The \fBLIRC_GET_FEATURES\fR ioctl (see below) allows probing for whether
 receiving and sending is supported, and in which modes, amongst other
@@ -68,6 +68,11 @@ In the \fBLIRC_MODE_MODE2 mode\fR, the data returned by
 .BR read (2)
 provides 32-bit values representing a space or a pulse duration.
 The time of the duration (microseconds) is encoded in the lower 24 bits.
+Pulse (also known as flash) indicates a duration of infrared light being
+detected, and space (also known as gap) indicates a duration with no infrared.
+If the duration of space exceeds the inactivity timeout,
+a special timeout package is delivered, which marks the end of
+a message.
 The upper 8 bits indicate the type of package:
 .TP 4
 .BR LIRC_MODE2_SPACE
@@ -87,6 +92,10 @@ The package reflects a timeout; see the
 .B LIRC_SET_REC_TIMEOUT_REPORTS
 ioctl.
 .\"
+.TP 4
+.BR LIRC_MODE2_OVERFLOW
+The IR receiver encountered an overflow, and as a result data is missing
+(since Linux 5.18).
 .SS Reading input with the LIRC_MODE_SCANCODE mode
 In the \fBLIRC_MODE_SCANCODE\fR
 mode, the data returned by
@@ -122,30 +131,17 @@ The protocol or scancode is invalid, or the
 .B lirc
 device cannot transmit.
 .SH IOCTL COMMANDS
-The LIRC device's ioctl definition is bound by the ioctl function
-definition of
-.IR "struct file_operations" ,
-leaving us with an
-.IR "unsigned int"
-for the ioctl command and an
-.IR "unsigned long"
-for the argument.
-For the purposes of ioctl portability across 32-bit and 64-bit architectures,
-these values are capped to their 32-bit sizes.
-.PP
 .nf
 #include <linux/lirc.h>    /* But see BUGS */
-int ioctl(int fd, int cmd, ...);
+
+int ioctl(int fd, int cmd, int *val);
 .fi
 .PP
-The following ioctls can be used to probe or change specific
+The following \fBioctl\fR(2) operations are provided by the
+.B lirc
+character device to probe or change specific
 .B lirc
 hardware settings.
-Many require a third argument, usually an
-.IR int ,
-referred to below as
-.IR val .
-.\"
 .SS Always Supported Commands
 \fI/dev/lirc*\fR devices always support the following commands:
 .TP 4
@@ -280,16 +276,19 @@ is 0) timeout packages in
 The behavior of this operation has varied across kernel versions:
 .RS
 .IP * 3
-Since Linux 4.16: each time the
-.B lirc device is opened,
-timeout reports are by default enabled for the resulting file descriptor.
-The
+Since Linux 5.17: timeout packages are always enabled and this ioctl
+is a no-op.
+.IP *
+Since Linux 4.16: timeout packages are enabled by default.
+Each time the
+.B lirc
+device is opened, the
 .B LIRC_SET_REC_TIMEOUT
 operation can be used to disable (and, if desired, to later re-enable)
 the timeout on the file descriptor.
 .IP *
 In Linux 4.15 and earlier:
-timeout reports are disabled by default, and enabling them (via
+timeout packages are disabled by default, and enabling them (via
 .BR LIRC_SET_REC_TIMEOUT )
 on any file descriptor associated with the
 .B lirc
@@ -434,4 +433,4 @@ Users of older kernels could use the file bundled in
 .SH SEE ALSO
 \fBir\-ctl\fP(1), \fBlircd\fP(8),\ \fBbpf\fP(2)
 .PP
-https://www.kernel.org/doc/html/latest/media/uapi/rc/lirc-dev.html
+https://www.kernel.org/doc/html/latest/userspace-api/media/rc/lirc-dev.html
-- 
2.36.1

