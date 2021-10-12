Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A580442A7C2
	for <lists+linux-man@lfdr.de>; Tue, 12 Oct 2021 16:59:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237062AbhJLPBT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Oct 2021 11:01:19 -0400
Received: from aer-iport-2.cisco.com ([173.38.203.52]:6931 "EHLO
        aer-iport-2.cisco.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233435AbhJLPBT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Oct 2021 11:01:19 -0400
X-Greylist: delayed 429 seconds by postgrey-1.27 at vger.kernel.org; Tue, 12 Oct 2021 11:01:19 EDT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=2131; q=dns/txt; s=iport;
  t=1634050758; x=1635260358;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=IhxtXOp4nOhcsy7GxuBcmrsR+s4UWK8UdRhgoZLeIbo=;
  b=J637F08Sl1lcrpqzRjEuOiUGWUowxb42w/+fJK3QINIZZMkHKxgWxsDB
   3Lx0ASdZWyf9LosShkTn2bazbFefz/aIp7kOmCjwkL7zjk0I5eZZtQ/0L
   yrtLjJz2g9afSQZFLy31EwSFt1vJZeL9n8O6GS62aM2L71QQN/i1GplYD
   k=;
X-IronPort-AV: E=Sophos;i="5.85,367,1624320000"; 
   d="scan'208";a="40863954"
Received: from aer-iport-nat.cisco.com (HELO aer-core-1.cisco.com) ([173.38.203.22])
  by aer-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 12 Oct 2021 14:52:07 +0000
Received: from jherland-nix.rd.cisco.com ([10.47.119.168])
        by aer-core-1.cisco.com (8.15.2/8.15.2) with ESMTP id 19CEq6go012600;
        Tue, 12 Oct 2021 14:52:06 GMT
From:   Johan Herland <jherland@cisco.com>
To:     linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Johan Herland <jherland@cisco.com>
Subject: [patch] tzset.3: Add a note on how tzset() caches data when $TZ is used
Date:   Tue, 12 Oct 2021 16:52:00 +0200
Message-Id: <20211012145200.491-1-jherland@cisco.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.47.119.168, [10.47.119.168]
X-Outbound-Node: aer-core-1.cisco.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The caching behavior of tzset() is poorly documented: outside of the
source itself[1], I know only of the article in [2]. This caching
behavior was first added in glibc commit 68dbb3a69e78 back in 1996, and
has not changed significantly since then, AFAICS. I suspect that it is
not about to change anytime soon.

Add a note to explain how tzset caches data, and the gotcha of setting
TZ to a symlink that, when retargeted, will cause glibc's cache to go
stale.

This was found while debugging a sandboxed application that failed to
retrieve the system timezone when all filesystem access was revoked.
We found that by setting TZ=":/etc/localtime" and calling tzset()
_before_ revoking filesystem access, the process would keep reporting
the correct timezone also after the filesystem was gone. Albeit with
the caveat that timezone changes would not be reflected by the process
(which we solve by restarting the process on timezone changes).

[1]: https://sourceware.org/git/?p=glibc.git;a=blob;f=time/tzset.c;h=2fc51194b63bda8eeaff4f2ac111291ff43c28ad#l388

[2]: https://packagecloud.io/blog/set-environment-variable-save-thousands-of-system-calls/

Signed-off-by: Johan Herland <jherland@cisco.com>
---
 man3/tzset.3 | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/man3/tzset.3 b/man3/tzset.3
index c80da53f8..ac275a07e 100644
--- a/man3/tzset.3
+++ b/man3/tzset.3
@@ -197,6 +197,27 @@ Here's an example, once more for New Zealand:
 TZ=":Pacific/Auckland"
 .EE
 .in
+.PP
+Note that if the
+.B TZ
+variable is used to set the timezone, glibc will not recalculate the timezone
+information unless the value of
+.B TZ
+is changed. Thus, if you use a symbolic link, like for example:
+.PP
+.in +4n
+.EX
+TZ=":/etc/localtime"
+.EE
+.in
+.PP
+and this symlink is later changed to point to a new timezone, then subsequent
+calls to
+.BR tzset ()
+or other time conversion functions that depend on the timezone will not
+reflect the new timezone (because the immediate value of
+.B TZ
+itself did not change).
 .SH ENVIRONMENT
 .TP
 .B TZ
-- 
2.29.2

