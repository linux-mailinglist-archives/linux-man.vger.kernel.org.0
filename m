Return-Path: <linux-man+bounces-2189-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC20A00CEB
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 18:39:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 322D87A0413
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 17:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740E11FBCBF;
	Fri,  3 Jan 2025 17:39:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BDC1FAC53
	for <linux-man@vger.kernel.org>; Fri,  3 Jan 2025 17:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735925961; cv=none; b=isGGugkkyz1sdhQT/bcF5Dz9gvJnyma2YCelK+rYTAHgLqugZvkJB3XGi8CIAc5BNIteUDFgykFwHNzbGCDaU0IYNr98LRipLdg91s/ldjE4CgcWZ6AG+Wqd+nHSwRRq4reHMNLPHZHVelMxEVAyjBC9lfOVmP6L7qs6MU32u9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735925961; c=relaxed/simple;
	bh=zQY7L1Agt+H4PdUtJKDvv6zQlfczTzC6/HtSGmnr3Mk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dLxPCEeDKoKYnePqsZbe7PJA/1YexqoP+uxiJVRfjQS64CYjSChSvZkue3hv3Ar6jEXQFaPi3geLmx67e9YQrdP3DCkA0kfvA+24fu+KRpUfnVJ+hOX+j31dgVOmj9vmdY717KvMTnkLpA8sIDafvp4+aPFPdrwN7CABmV1PDTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5005a.ext.cloudfilter.net ([10.0.29.234])
	by cmsmtp with ESMTPS
	id TjPatR7pWjMK7TldgtzqD4; Fri, 03 Jan 2025 17:39:12 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id TldftlI7QXugoTldftfXUP; Fri, 03 Jan 2025 17:39:11 +0000
X-Authority-Analysis: v=2.4 cv=A+anPLWG c=1 sm=1 tr=0 ts=677820bf
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=VdSt8ZQiCzkA:10 a=VwQbUJbxAAAA:8 a=VGZVzwQjAAAA:8 a=nI5S-yJujbCONanh1-YA:9
 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:58676 helo=localhost.localdomain)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tTldd-002Lc9-2l;
	Fri, 03 Jan 2025 11:39:10 -0600
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>,
	mtk.manpages@gmail.com,
	linux-man@vger.kernel.org,
	libc-help@sourceware.org
Subject: [PATCH 1/2] signal.7: Don't mention that pthread API can return EINTR
Date: Fri,  3 Jan 2025 18:38:15 +0100
Message-ID: <20250103173816.6409-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1tTldd-002Lc9-2l
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost.localdomain) [89.77.246.87]:58676
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfI7/Ak928mhfqeJda06fEGJ8yNzArCIh/S0sBklDqYLcY+RqkgBlQnp4lboQbEtwTjewdTsWCYsXjcTWZAPt8uQ1eFWIDbbDBQQoylv60M+UaFhA0YRz
 i1um8vUd2J+weYcUG06RwiYL3PRBEAqAgw+u11P6FMnFj/NhI2KRAwFQBtbKTAuQYhNcSSMcEf9SJSPO+rcMWOJYCJUqbzBmqJg=

In pthreads.7 it says:

"For each of the pthreads functions that can return an error,
POSIX.1-2001 specifies that the function can never fail with the error
EINTR."

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Link: <https://lore.kernel.org/linux-man/Z3W_qgawqyEB-QrA@comp../>
---
 man/man7/signal.7 | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index d19f171b3..dd04c6d1a 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -753,10 +753,6 @@ beforehand, always failed with
 .IP \[bu]
 .BR getrandom (2).
 .IP \[bu]
-.BR pthread_mutex_lock (3),
-.BR pthread_cond_wait (3),
-and related APIs.
-.IP \[bu]
 .BR futex (2)
 .BR FUTEX_WAIT_BITSET .
 .IP \[bu]
-- 
2.45.2


