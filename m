Return-Path: <linux-man+bounces-5591-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGi3GI9AFGo3LQcAu9opvQ
	(envelope-from <linux-man+bounces-5591-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F385CA7DB
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09A35301A14E
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02AD37F754;
	Mon, 25 May 2026 12:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="qaXnPfHg";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="vd2zvtOn"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14FB381B17
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712116; cv=none; b=LBjfoAyJxGi65jj4DJgcAYikMSCfDz5K8kT891wLMv5d/MTgXcZFtxyFxzMCm+Wg4/XThDQMsjbAysujJ97gO2fDVu8kM4xJVMLP1WqcciJRXFS8tCterDiI3hXBc3R1zXzi3Q06rkEKOlSoL4bYW3AplK8M58AMEprTYkW8SwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712116; c=relaxed/simple;
	bh=WStWFB4FkSUEQWMRMmjSG8uYc/fu3IFSwFjtkAiH4C4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VJeAJU8gT0pL6Imq+qFPW8H4mvGPJaq50vo8B8V/tc1QBn78FGvfgM52dW736sBkDxmO1zAC61ow4iLAgGgM4XT3f74UEcLszHYPpNml9D5hePMlFDdf7Re6HraX1h5DQk8X4T4TJf5AiTSE9l3cDRT8NAJjzg8+2IQR+I6tVq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=qaXnPfHg; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=vd2zvtOn; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfout.stl.internal (Postfix) with ESMTP id 2C4BD1D000FD;
	Mon, 25 May 2026 08:28:34 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Mon, 25 May 2026 08:28:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779712114; x=
	1779798514; bh=5z6TOKC44Fom90zzK05w0S0DYgDpJ2fMK4Tu/FRMg7s=; b=q
	aXnPfHgvSZUfXM1G8PRYmXfunhhMEI7Aa1J3ib5KkSkDi/bjGzRFwXQuzFv97MXV
	oT18203wvASLhvzdsgz6RVu0bfh+XOOByAwbM1THjaVyXNpJMRaZOHqSaDrs4SEo
	lr3HBv8jKkfsOduvKEQJcMquq3wqt1O/YChi8uO9MpJ7heizp/oVShQQk54q39jL
	r0UJM8o/cAfNay4kfr71ZExyKiU0n1nZvEuKUdwl4P1G/E9ZqtNPAajR0wM1nqam
	+gyhS202/qhioxc1yigkClAv9BSxN3b38DT6N9d+SzRhM9y97QeM26s2X2pXG53P
	s8SdUvXPOaw+7sLBA0l9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779712114; x=1779798514; bh=5
	z6TOKC44Fom90zzK05w0S0DYgDpJ2fMK4Tu/FRMg7s=; b=vd2zvtOntBB/9gIdx
	LcTvyVRBEkt94blZhS0+C40I/7wlcrWiK4rnOjnu/9r0PYal2sav1Mq4bDyEz2Wr
	EDd1HmS8F3GCg2nRMWSwI+h6QaRrLD/1Dqf6SbRl50HLeCttqbfkMCUgwihm0CtM
	PBuJLN4sGp+t03nM9Wb5yp3rvM5A3uBSs6EgK1OVffE9Q1oBKI6Sz5hPTPk8MJ4e
	zrFlKUgmZhad4oO4nCLTYeAby0moQL8tM8ejPg4tCd4wM/IsZsya85SKTS9e4NOn
	XgntOpbC90Ndy5kRhRUXuk0D1UThBkb1egopDR+MSWz9KqYyEDriy9n4H113qofT
	Jf7Qw==
X-ME-Sender: <xms:cUAUaszITRQkIWaToCAWt6E8OwqIMsumT17mAPrzrDD5OrhlzBLJKg>
    <xme:cUAUas2tYQNzrvgTL0WzVUMPCF7Uym_f-XHq2dmax8WirWuiiJfMcHCKnAmmu6o_n
    SdsKiowyiGw9GYYm03lhadXY_8cfHFxoi9MkEh0EXnSpzF-Zb-GKw>
X-ME-Received: <xmr:cUAUaixnX6W97r_-ixmRa1IlMILVulRSR79qp_gcA7eaMB0eC7hnHT20elcxoQ>
X-ME-Proxy-Cause: dmFkZTFmLVSfYhEWaVm8N1lz0MjOBghKLhOnNQasw0tsXAFLPpbR/4+mrCYwWk/E423Vc2
    6B1s9iPuQgs3hGAiq/KhPqohuBMRIerNkWvsfuc3WkOHbHUNY5UmaGor5ig336hIeD+vak
    qB6bs2DTG0sfepDSzSArpLeFa7+n1qOspSUGgNQVB9KbSSFSgvHhLwD2o5NL2Su7Xc1htX
    UOwFpxHBdUGOki2ZYo2cYxe64jTF4NfawVkw4Ja9Vghy7E0XBO4BxqVYRhKiY6uJ4G3d/o
    hkvinoVmY3c44Mzh6S5sf4JfJ6aY+LIcesX0uapyNnoENtY2BlNnzIGDNJPpi4n9s/a/DJ
    LprHi7FiSE/fgYhxe/BjuSpyeQPnWSEilT39t/aKOY8t9gYUecDfv8L9eVhRUAhg74qkQ/
    WqRlJeyvs19duWwI/bl1do5AYCuIiTqFWjbSaleBXTaUcEh4sTJWY/csmgp461OAUy56z9
    oVRZMyXj2SfXFOdoVlcYJvliB4O8sxkT8audmLmaaZiILjwzOk4BiMzV7TFjYVjXFnmDan
    iTX2hUScootmpEfESLz9WNnPcY//s7On4y4owMGES5ADVrpWGavj7sDTfCZEoRfxavPA8f
    tIEZUpx2PEaoL3MXTHZgROjd9rz9rCY74HFOm0laqi4pYQZMmBLvwFUlt5pg
X-ME-Proxy: <xmx:cUAUahV3VZVwnNK6Hd56vGW6NYJgOlYiA49Gf5ao67-Od2d8Se51Gg>
    <xmx:cUAUau9p2rf2NH5T0ODayQc-Lnas6iAqNvsT7VvUT0h4WnwUOLpWhg>
    <xmx:cUAUaktMgkY4oXzN1YhQlBugV9RdWSDIc8RrLWE0gvYf4b6UW99uRg>
    <xmx:cUAUau1G6ggS0JSdcFSfbzg5zYd0Mu1m8cSAJU3_kILGEtmcxJZhOg>
    <xmx:ckAUaofKTOprT1I5B1WHOsb7JPXKL6UUlECTUShxlJAuwOG1Inle3Pog>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:33 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH man-pages v1 4/6] UFFDIO_API.2const: Document UFFD_FEATURE_RWP{,_ASYNC} and 1 << _UFFDIO_SET_MODE
Date: Mon, 25 May 2026 13:28:14 +0100
Message-ID: <20260525122816.1956804-5-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260525122816.1956804-1-kirill@shutemov.name>
References: <20260525122816.1956804-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5591-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,messagingengine.com:dkim,shutemov.name:mid,shutemov.name:dkim]
X-Rspamd-Queue-Id: B3F385CA7DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the two RWP feature bits introduced in Linux 7.2:

  UFFD_FEATURE_RWP        gates UFFDIO_REGISTER_MODE_RWP and the
                          UFFDIO_RWPROTECT(2const) ioctl.
  UFFD_FEATURE_RWP_ASYNC  in-kernel resolution of RWP faults without
                          delivering a notification; requires
                          UFFD_FEATURE_RWP to be set in the same
                          UFFDIO_API call.

Also document 1 << _UFFDIO_SET_MODE in argp->ioctls, the
file-descriptor-level bit that advertises UFFDIO_SET_MODE(2const) for
toggling UFFD_FEATURE_RWP_ASYNC at runtime; it is independent of any
registered range.

The existing page intro already describes UFFDIO_API returning EINVAL
on unsupported feature bits and the temporary-uffd probe pattern, so
the new TP entries do not re-state that.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man/man2const/UFFDIO_API.2const | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index e894114bb8e2..d2819f009f97 100644
--- a/man/man2const/UFFDIO_API.2const
+++ b/man/man2const/UFFDIO_API.2const
@@ -213,6 +213,28 @@ If this feature bit is set,
 the kernel supports resolving faults with the
 .B UFFDIO_MOVE
 ioctl.
+.TP
+.BR UFFD_FEATURE_RWP " (since Linux 7.2)"
+If this feature bit is set,
+the kernel supports read-write protection tracking, and the
+.B UFFDIO_REGISTER_MODE_RWP
+registration mode and the
+.B UFFDIO_RWPROTECT
+ioctl become available.
+.TP
+.BR UFFD_FEATURE_RWP_ASYNC " (since Linux 7.2)"
+If this feature bit is set,
+the kernel will resolve read-write protect faults in place without
+delivering a notification, automatically restoring page permissions and
+letting the faulted thread continue.
+This bit requires
+.B UFFD_FEATURE_RWP
+to be set in the same
+.B UFFDIO_API
+call.
+The async mode can also be toggled at runtime using the
+.BR UFFDIO_SET_MODE (2const)
+ioctl.
 .P
 The returned
 .I argp->ioctls
@@ -234,6 +256,13 @@ operation is supported.
 The
 .B UFFDIO_UNREGISTER
 operation is supported.
+.TP
+.BR "1 << _UFFDIO_SET_MODE" " (since Linux 7.2)"
+The
+.B UFFDIO_SET_MODE
+operation is supported.
+This is a file-descriptor-level ioctl and is reported once per
+userfaultfd, independent of any registered range.
 .SH RETURN VALUE
 On success,
 0 is returned.
-- 
2.54.0


