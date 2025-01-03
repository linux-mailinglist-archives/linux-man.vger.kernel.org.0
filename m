Return-Path: <linux-man+bounces-2190-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 091B7A00CEA
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 18:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1F771646F5
	for <lists+linux-man@lfdr.de>; Fri,  3 Jan 2025 17:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57F31FBE8C;
	Fri,  3 Jan 2025 17:39:22 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E611E1FAC23
	for <linux-man@vger.kernel.org>; Fri,  3 Jan 2025 17:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735925962; cv=none; b=ZVteZj0hzsDqE9G6UtzBoqwZUu8iBryX6fGtTTVbSCxg+a1RM+n5jBf99KmSxRdjAEmIpfWxmFzAggyoT0uSfR4W80bIyHM0F+pKN3FUyskJpbi/8OC6xnTNPBn978aAdix++HLSi/GObhdboZWrU8WEcpcF+dBRqeGYUh8lHwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735925962; c=relaxed/simple;
	bh=ygFx3khc2csgggYzRZwiKDUf6e31Rr/KIk5tG7em6X8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aJNTrPp3XfXTUymzmxzCXCLIF22zXwL+ekhb5jfoXzq+6gXIJ+uw51lh5vH9/RrHMLhGPPIV4Lwo4zSpA490P26AQ/2rSA5oQIfjbCMPxbpzCLww+2vR7SSpFpQcRonhTnGm5fNeTuDOXmMdEBsySg/bl2U/OagpAKXxpMZ+rS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id ThsitUTxbrKrbTlditAxrc; Fri, 03 Jan 2025 17:39:14 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id TldhtC4zVhkyTTldhtVQaR; Fri, 03 Jan 2025 17:39:13 +0000
X-Authority-Analysis: v=2.4 cv=d/LzywjE c=1 sm=1 tr=0 ts=677820c1
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=VdSt8ZQiCzkA:10 a=VwQbUJbxAAAA:8 a=VGZVzwQjAAAA:8 a=nI5S-yJujbCONanh1-YA:9
 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:58676 helo=localhost.localdomain)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1tTldg-002Lc9-01;
	Fri, 03 Jan 2025 11:39:12 -0600
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Florian Weimer <fweimer@redhat.com>,
	mtk.manpages@gmail.com,
	linux-man@vger.kernel.org,
	libc-help@sourceware.org
Subject: [PATCH 2/2] pthread_cond_init.3: Remove EINTR error code
Date: Fri,  3 Jan 2025 18:38:16 +0100
Message-ID: <20250103173816.6409-2-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250103173816.6409-1-arkadiusz@drabczyk.org>
References: <20250103173816.6409-1-arkadiusz@drabczyk.org>
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
X-Exim-ID: 1tTldg-002Lc9-01
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost.localdomain) [89.77.246.87]:58676
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 7
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCbFPxazpAzhA9jHmUNefMkXxnOkTjgqRP9V+d/j+DWmU09tCpqj2vokJWKSfSwDMMtatx/OPfq/4c79rOgpCtYW8qKWYTqav5R7zNLdBmY/SqenRClw
 8ElzWubUBXnvfFnMOFjSChDiqGBfUVzmbXkq4mHAxfGgwdytGeVRmeehezwvmQsa6eTxcG9LQkHqM+Fgv0onPNAT01cFY0MN4+Y=

In pthreads.7 it says:

"For each of the pthreads functions that can return an error,
POSIX.1-2001 specifies that the function can never fail with the error
EINTR."

Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Link: <https://lore.kernel.org/linux-man/Z3W_qgawqyEB-QrA@comp../>
---
 man/man3/pthread_cond_init.3 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
index 658f390f6..15556219b 100644
--- a/man/man3/pthread_cond_init.3
+++ b/man/man3/pthread_cond_init.3
@@ -153,9 +153,6 @@ the following error codes on error:
 \fBETIMEDOUT\fP
 The condition variable was not signaled
 until the timeout specified by \fIabstime\fP.
-.TP
-\fBEINTR\fP
-\fBpthread_cond_timedwait\fP was interrupted by a signal.
 .RE
 .P
 The \fBpthread_cond_destroy\fP function returns
-- 
2.45.2


