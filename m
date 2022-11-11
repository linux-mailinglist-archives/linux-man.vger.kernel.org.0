Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3CF1624F86
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 02:28:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232056AbiKKB2K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 20:28:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiKKB2J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 20:28:09 -0500
Received: from mu.digital-domain.net (mu.digital-domain.net [IPv6:2001:19f0:7402:15d6:5400:3ff:feab:f47a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2DE34C265
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 17:28:06 -0800 (PST)
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91:0:0:0:ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.17.1/8.17.1) with ESMTPSA id 2AB1RnbL060965
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Fri, 11 Nov 2022 01:27:53 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 mu.digital-domain.net 2AB1RnbL060965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digital-domain.net;
        s=dkim-1; t=1668130073;
        bh=O65woRpZ8d/nz66a0jf1pC+J5ZQZvFPL8pjZ2A+Rpuk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=LFwdXqz8hoyDgIxsQ+Kp522DUAK4AQj96+vnUWxAeH9FFsaz3XbAYHxniq4FHqaoU
         0jjPU58vb9M/MetvznlQjpim5tU6TRaPgTGNSxR66bdFCddLpCcmliiWQvlt4fCB5p
         VQXym0KE0dguFX3HhoGfVAkVfbAbClS12YXeqAQvK6vOmIMhV3gaXsRBWoCeM5rIEG
         +npMlgPja3RlYY44HWiXLqzAPUrmZBV4PCYCGecTweBdxd8OzC1YxdzdqwzNxbzeUh
         ldiQy9ENSIFw3Qo9pXjApV+ZIIuZbNfX6Crg8LZI7AfyKOrK6Sur17E1fKefmtINaj
         VIh/4GrvuIgSw==
From:   Andrew Clayton <andrew@digital-domain.net>
To:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: [PATCH v3] memmem.3: Add list of known systems where this is available
Date:   Fri, 11 Nov 2022 01:27:24 +0000
Message-Id: <20221111012724.11558-1-andrew@digital-domain.net>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110001318.10696-1-andrew@digital-domain.net>
References: <20221110001318.10696-1-andrew@digital-domain.net>
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

  musl libc since v0.9.7 (2012)
  bionic since Android 9 (2018)

  FreeBSD since 6.0 (2005)
  OpenBSD since 5.4 (2013)
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

 v3:
  - Split the platform list on ':' and ';'

 v2:
  - Remove references to bionic and macOS from the man page
  - Convert & to and
  - Use Oxford comma
  - Add dates where known to the commit message
  - Use present tense for the subject line

 man3/memmem.3 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man3/memmem.3 b/man3/memmem.3
index 134dffab0..4a4a885fc 100644
--- a/man3/memmem.3
+++ b/man3/memmem.3
@@ -58,7 +58,10 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 This function is not specified in POSIX.1,
-but is present on a number of other systems.
+but is present on a number of other systems,
+including:
+musl libc 0.9.7;
+FreeBSD 6.0, OpenBSD 5.4, NetBSD, and Illumos.
 .SH BUGS
 .\" This function was broken in Linux libraries up to and including libc 5.0.9;
 .\" there the
-- 
2.38.1

