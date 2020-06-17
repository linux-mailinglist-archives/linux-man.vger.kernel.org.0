Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 166191FD6C9
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2020 23:12:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726763AbgFQVMe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Jun 2020 17:12:34 -0400
Received: from gateway30.websitewelcome.com ([192.185.196.18]:14834 "EHLO
        gateway30.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726758AbgFQVMd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Jun 2020 17:12:33 -0400
X-Greylist: delayed 1224 seconds by postgrey-1.27 at vger.kernel.org; Wed, 17 Jun 2020 17:12:33 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway30.websitewelcome.com (Postfix) with ESMTP id CC586ADF0
        for <linux-man@vger.kernel.org>; Wed, 17 Jun 2020 15:52:07 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lf2VjyCj5hmVTlf2VjqqoM; Wed, 17 Jun 2020 15:52:07 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:42046 helo=comp.lan)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlf2U-002nRm-Md; Wed, 17 Jun 2020 15:52:07 -0500
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] proc.5: Inform that comm in /proc/pid/{stat,status} might also be truncated
Date:   Wed, 17 Jun 2020 22:51:25 +0200
Message-Id: <20200617205125.28163-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.9.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlf2U-002nRm-Md
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (comp.lan) [89.69.237.178]:42046
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

pgrep for example searches for a process name in /proc/pid/status and
therefore cannot find processes whose names are longer than 15
characters unless -f is specified.

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man5/proc.5 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man5/proc.5 b/man5/proc.5
index 538c6c6..edaf281 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2089,6 +2089,9 @@ The process ID.
 .TP
 (2) \fIcomm\fP \ %s
 The filename of the executable, in parentheses.
+Strings longer than
+.B TASK_COMM_LEN
+(16) characters (including the terminating null byte) are silently truncated.
 This is visible whether or not the executable is swapped out.
 .TP
 (3) \fIstate\fP \ %c
@@ -2504,6 +2507,9 @@ The fields are as follows:
 .IP * 2
 .IR Name :
 Command run by this process.
+Strings longer than
+.B TASK_COMM_LEN
+(16) characters (including the terminating null byte) are silently truncated.
 .IP *
 .IR Umask :
 Process umask, expressed in octal with a leading zero; see
-- 
2.9.0

