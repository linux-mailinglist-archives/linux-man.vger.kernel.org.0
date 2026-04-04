Return-Path: <linux-man+bounces-5293-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Te8NJoXC0Gln/wYAu9opvQ
	(envelope-from <linux-man+bounces-5293-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 04 Apr 2026 09:49:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C0C39A449
	for <lists+linux-man@lfdr.de>; Sat, 04 Apr 2026 09:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F37F1301052E
	for <lists+linux-man@lfdr.de>; Sat,  4 Apr 2026 07:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE6A3793B1;
	Sat,  4 Apr 2026 07:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=vursc.org header.i=@vursc.org header.b="TheI09Oj"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C12CCB9
	for <linux-man@vger.kernel.org>; Sat,  4 Apr 2026 07:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775288960; cv=none; b=IVKM0zLlfE6B+eaqY4BMQSQKRKPQBNkMLXFC8S5CRQ/nELIVt8ZSBesxrp5LqRossCTVMzb6l7WcpfKBcR6Xf99kP0FnDyAe6wKsrOkJha83mZziuk3zhaphbN0rhu8IPapi/CwUotCwjlkBYJI409egYb3oi7pBJMdHiXCWQPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775288960; c=relaxed/simple;
	bh=0uftpkEF8CpCa95AWWpKC0Eo6BzaKhVCAsXBl7IJCV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UrIhAqafvD8B9RPNf5EoC9U62KGnrnawneJY3HRywkuCASrpmdt6SDIhZSxVM3Pme3c42MFdR7CETCyRMJNAptp1a1y6niOJCbBf9kuR97nr5GjrV1NjyP/miVWi5qdY81BA3hgZz1htvDgyolzObQiteH7NY4lU7MyEwdTWvdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vursc.org; spf=pass smtp.mailfrom=vursc.org; dkim=pass (2048-bit key) header.d=vursc.org header.i=@vursc.org header.b=TheI09Oj; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vursc.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vursc.org
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4fnnm74Dghz9tmt;
	Sat,  4 Apr 2026 09:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vursc.org; s=MBO0001;
	t=1775288951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QtpE9eoGCAcZa7Vz5rH6e+vxXS2gjKSveM8R4+IEpkU=;
	b=TheI09OjGbBeEnFhKJZuESo8u28uvxHuYwK+ldKV8CCLu1aTxIFFjnhHLti1romQM6BPSK
	Sv8eD6Xj1pN94p/hejwc/8SfaUvkvr0Qva0iN0783VLPqLTBoktfVihiwlNaiwNggiCpYq
	uF69PMCq6xygs0elww9h7ZhgbwJOZUWqC5ho4hO81e2edUDttboJolYDO2mhlUnH2ZsMl3
	Bs47uMMwxEtrtHhsyM8P1BBTF5jI5lk8VMQVjgP+5fOgImcqAbtBsAmxspRrbfSMkpX1o1
	sq5NcFK6P0Dc89wgdEXd77fGmA6xyNStlAEZnVUbKeEYRi00m3ZkHsGjZIDIxw==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of vursc@vursc.org designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=vursc@vursc.org
From: vursc <vursc@vursc.org>
To: linux-man@vger.kernel.org
Cc: vursc <vursc@vursc.org>
Subject: [PATCH] man/man2/getdents.2: Fix incorrect argument type
Date: Sat,  4 Apr 2026 07:49:09 +0000
Message-ID: <20260404074909.92900-1-vursc@vursc.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[vursc.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[vursc.org:s=MBO0001];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5293-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vursc@vursc.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[vursc.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vursc.org:dkim,vursc.org:email,vursc.org:mid]
X-Rspamd-Queue-Id: D7C0C39A449
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The count argument of getdents64 is an unsigned int; see
SYSCALL_DEFINE3(getdents64, ...) in linux/fs/readdir.c.

Signed-off-by: vursc <vursc@vursc.org>
---
 man/man2/getdents.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
index 8c5bbebbc..3890943ee 100644
--- a/man/man2/getdents.2
+++ b/man/man2/getdents.2
@@ -23,7 +23,7 @@ Standard C library
 .B #include <dirent.h>
 .P
 .BR "ssize_t getdents64(" "size_t count;"
-.BI "                   int " fd ", void " dirp [ count "], size_t " count );
+.BI "                   int " fd ", void " dirp [ count "], unsigned int " count );
 .fi
 .P
 .IR Note :
-- 
2.53.0


