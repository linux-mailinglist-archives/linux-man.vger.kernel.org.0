Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FE3D1FBE6E
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2020 20:48:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727114AbgFPSsC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Jun 2020 14:48:02 -0400
Received: from gateway21.websitewelcome.com ([192.185.45.140]:16528 "EHLO
        gateway21.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726805AbgFPSsC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Jun 2020 14:48:02 -0400
X-Greylist: delayed 1250 seconds by postgrey-1.27 at vger.kernel.org; Tue, 16 Jun 2020 14:48:02 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway21.websitewelcome.com (Postfix) with ESMTP id A5503402025BC
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2020 13:27:12 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lGIijazgChmVTlGIijTqEm; Tue, 16 Jun 2020 13:27:12 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:39772 helo=comp.lan)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlGIh-000Ztz-Ep; Tue, 16 Jun 2020 13:27:11 -0500
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] fread.3: Explain that file position is moved after calling fread()/fwrite()
Date:   Tue, 16 Jun 2020 20:26:59 +0200
Message-Id: <20200616182659.12365-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.9.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlGIh-000Ztz-Ep
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (comp.lan) [89.69.237.178]:39772
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Corresponding manpage on FreeBSD already contains that information.

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man3/fread.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man3/fread.3 b/man3/fread.3
index 2dd7be9..97a306e 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -92,6 +92,9 @@ is 1.
 If an error occurs, or the end of the file is reached,
 the return value is a short item count (or zero).
 .PP
+The file position indicator for the stream is advanced by the number
+of characters successfully read or written.
+.PP
 .BR fread ()
 does not distinguish between end-of-file and error, and callers must use
 .BR feof (3)
-- 
2.9.0

