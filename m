Return-Path: <linux-man+bounces-5493-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJZSHg31BGoTQwIAu9opvQ
	(envelope-from <linux-man+bounces-5493-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 00:02:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B990D53B380
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 00:02:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5B67302B3A1
	for <lists+linux-man@lfdr.de>; Wed, 13 May 2026 22:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA6E3C3453;
	Wed, 13 May 2026 22:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tvoss.eu header.i=@tvoss.eu header.b="E7zxnWB/"
X-Original-To: linux-man@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C194D1F0E25
	for <linux-man@vger.kernel.org>; Wed, 13 May 2026 22:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778709769; cv=none; b=GOLJ5X4kbgSesa1QveQWuPsV0eSk6K8iJ//cfxe210pjCwGfWEFQGUwvKhRdrrKTOg0TTopjAZSl9fgvHDqPNVtmPPisyPgKH5jMImY2N5sW/BsY5xnNIqkztcjvhAeDOAaBLdyagIHR1S35OrB5URQ5YJg7gfzE84tvPGd4i6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778709769; c=relaxed/simple;
	bh=V8R+KQm1aGgQk/GxGyMkHP/u9Hxl2uV7+jcc/OEm1r4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NHofuACgYUYkpUdsXc+WJiib4gxX26iHosYIhCTpry4v4cOHydMljqy13WumEnfCMrM4hAX5n/p0GPFCyNPTCoGYdP9Iwy85GtmiltzxTfcynN1EW+3iS/6rKpt5GHK3ZqjdCCYIKSoH/z8WVvDTYMRKCB5gP62xRzlwKLJByB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tvoss.eu; spf=pass smtp.mailfrom=tvoss.eu; dkim=pass (2048-bit key) header.d=tvoss.eu header.i=@tvoss.eu header.b=E7zxnWB/; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tvoss.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tvoss.eu
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tvoss.eu; s=key1;
	t=1778709763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vlZyatzx+BSQUlHFFuZ48VuS+GzAF7k1S+HBJckufYY=;
	b=E7zxnWB/FLrojkqPmKJsD01Ho5LK1O94cvFl20T/wVBVpMatI1YCZfLQ7FEFL4ah9kF0hk
	BZaps2lN0QjuiIBNV+mQAcbWREKrDAUVbr2DWj7dcygUMUOrT6eFaA4j4+ApClBeVREWvB
	SkMuXum/7KpxxkfRJDiXo1yop2oxuzVn4cWR0bFcr1XLuGrcm8rZUZlnt20GaGizPns88D
	vUj5zz3Y4OcjQTDeRYFHVYkbETtGsyvDl7D9mdcxbB0bT1F2sH/ivpE+PmRISsKeHWZ6/l
	62kQxkAarq36/WWC/3JbwZdkmGFrhD/qdQyAoaCEKv8lSKT2aHjj7yl/xcSIJw==
From: Thomas Voss <mail@tvoss.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Thomas Voss <mail@tvoss.eu>
Subject: [PATCH] man/man2/copy_file_range.2: ffix
Date: Thu, 14 May 2026 00:01:53 +0200
Message-ID: <b9f152d28bcff7ae45189138485e122d696defe6.1778709713.git.mail@tvoss.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Queue-Id: B990D53B380
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[tvoss.eu,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tvoss.eu:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5493-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tvoss.eu:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mail@tvoss.eu,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tvoss.eu:email,tvoss.eu:mid,tvoss.eu:dkim]
X-Rspamd-Action: no action

Hi!

Just came across this formatting issue in copy_file_range(2).  I went
ahead and wrote a quick fix and also did some searching for similar bugs
across the rest of the manuals with Awk, but didn’t come across
anything.

— Thomas

Signed-off-by: Thomas Voss <mail@tvoss.eu>
---
 man/man2/copy_file_range.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index de502867d..a8ed82c4f 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -211,7 +211,8 @@ provided a user-space fallback implementation when the kernel did not
 implement this system call.
 .\" glibc.git 5a659ccc0ec2 (2019-06-28; "io: Remove copy_file_range emulation [BZ #24744]")
 Since glibc 2.30, that fallback has been removed; the function now
-fails with ENOSYS if the kernel lacks support for .BR copy_file_range ().
+fails with ENOSYS if the kernel lacks support for
+.BR copy_file_range ().
 .SH NOTES
 If
 .I fd_in
-- 
2.54.0


