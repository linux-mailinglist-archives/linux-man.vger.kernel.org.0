Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 542241FFD26
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 23:08:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728519AbgFRVIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 17:08:39 -0400
Received: from gateway20.websitewelcome.com ([192.185.55.25]:48839 "EHLO
        gateway20.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726478AbgFRVIi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 17:08:38 -0400
X-Greylist: delayed 1344 seconds by postgrey-1.27 at vger.kernel.org; Thu, 18 Jun 2020 17:08:38 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway20.websitewelcome.com (Postfix) with ESMTP id 78C38400D18EC
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 14:23:43 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id m1O4jJ62qhmVTm1O4jBYiL; Thu, 18 Jun 2020 15:43:52 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:60428 helo=comp.lan)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jm1O4-0021tY-0e; Thu, 18 Jun 2020 15:43:52 -0500
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] atoi.3: Explain disadvantages of atoi()
Date:   Thu, 18 Jun 2020 22:42:41 +0200
Message-Id: <20200618204241.14476-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.9.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jm1O4-0021tY-0e
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (comp.lan) [89.69.237.178]:60428
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I believe new users should be discouraged from using atoi() and that
its disadvantages should be explained.

I added the information that 0 is returned on error - although C
standard and POSIX say that "If the value of the result cannot be
represented, the behavior is undefined." there are some
interpretations that 0 has to be returned
https://stackoverflow.com/questions/38393162/what-can-i-assume-about-the-behaviour-of-atoi-on-error
and this is also what happens in practice with glibc, musl and uClibc.

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man3/atoi.3 | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/man3/atoi.3 b/man3/atoi.3
index c5894d3..3c6527a 100644
--- a/man3/atoi.3
+++ b/man3/atoi.3
@@ -81,7 +81,18 @@ functions behave the same as
 except that they convert the initial portion of the
 string to their return type of \fIlong\fP or \fIlong long\fP.
 .SH RETURN VALUE
-The converted value.
+The converted value or 0 on error.
+.SH BUGS
+.I errno
+is not set on error so there is no way to distinguish between 0 as an
+error and as the converted value.
+No checks for overflow or underflow are done.
+Only input in decimal base can be converted.
+It's recommended to use
+.BR strtol ()
+and
+.BR strtoul ()
+family of functions in new programs.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.9.0

