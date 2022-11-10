Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58B58623815
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 01:22:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230251AbiKJAWI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 19:22:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbiKJAWI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 19:22:08 -0500
X-Greylist: delayed 236 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 09 Nov 2022 16:22:05 PST
Received: from mu.digital-domain.net (mu.digital-domain.net [IPv6:2001:19f0:7402:15d6:5400:3ff:feab:f47a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9CF61580F
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 16:22:05 -0800 (PST)
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91:0:0:0:ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.17.1/8.17.1) with ESMTPSA id 2AA0HgRJ057555
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Thu, 10 Nov 2022 00:17:47 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 mu.digital-domain.net 2AA0HgRJ057555
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digital-domain.net;
        s=dkim-1; t=1668039467;
        bh=UXPiZnf43U+xY6Bw5dfTMA8apGOaam1Emdr2809QWlI=;
        h=From:To:Cc:Subject:Date:From;
        b=bM43APhbiw3IRaJmXMW9CQsMSdF4r9XOpAHLp03Vl6dQ/SvqBy5BY/H+KmwniSJHJ
         a0Par+c7Fg0O+iUSWYJuibXnJpihnpMTlTCP58Lt/bw1LvcJ9gGaY4FYxtzORb/FYm
         yijljQGFBvoKX7FA1rba9f8QuXNYTAHQln0y9jKrPWJkv+TjhUrnSQx1Vx7CxzrxWO
         Wu0kwKAcYeYkjbZxmGwTnZa8Vj820JwU2j9LGVACVvUI4tLWGNsPByaMin1V5ugdp4
         xK/32k1EksasVC62j1rExfyaMYpZKJBR0pA/7Adr6t1kQk9mj0/Lkh5U9Ve4bBI6vq
         FkqdOTfQoYkVw==
From:   Andrew Clayton <andrew@digital-domain.net>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH] memmem.3: Added list of known systems where this is available
Date:   Thu, 10 Nov 2022 00:13:18 +0000
Message-Id: <20221110001318.10696-1-andrew@digital-domain.net>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

While looking at which systems provide memmem(3) I have been able to
discern the following:

  musl libc since v0.9.7
  bionic since Android 9

  FreeBSD since 6.0
  OpenBSD since 5.4
  NetBSD
  macOS
  Illumos

For macOS and Illumos I checked the memmem(3) man page on those systems.
For the rest there are links below to on-line man pages or commit logs.

Where I could determine what version memmem(3) was introduced, I've
noted that in the man page.

Link: <http://git.musl-libc.org/cgit/musl/commit/src/string/memmem.c?id=c86f2974e2acd330be2d587173dd4dd56db82e22>
Link: <https://android.googlesource.com/platform/bionic/+/android-9.0.0_r3/libc/bionic/memmem.cpp>
Link: <https://www.freebsd.org/cgi/man.cgi?query=memmem&sektion=3&format=html>
Link: <https://man.openbsd.org/memmem.3>
Link: <https://anonhg.netbsd.org/src/diff/96a37d536271/common/lib/libc/string/memmem.c>
Suggested-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Andrew Clayton <andrew@digital-domain.net>
---
 man3/memmem.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/memmem.3 b/man3/memmem.3
index 134dffab0..1f58ffffd 100644
--- a/man3/memmem.3
+++ b/man3/memmem.3
@@ -58,7 +58,9 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 This function is not specified in POSIX.1,
-but is present on a number of other systems.
+but is present on a number of other systems,
+including: musl libc 0.9.7 & bionic Android 9;
+FreeBSD 6.0, OpenBSD 5.4, NetBSD, macOS & Illumos.
 .SH BUGS
 .\" This function was broken in Linux libraries up to and including libc 5.0.9;
 .\" there the
-- 
2.38.1

