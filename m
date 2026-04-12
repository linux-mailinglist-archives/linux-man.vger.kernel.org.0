Return-Path: <linux-man+bounces-5324-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCK5Fwyv22lkFAkAu9opvQ
	(envelope-from <linux-man+bounces-5324-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:41:16 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5603E457E
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 16:41:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 26B533002536
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2026 14:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40CF136A035;
	Sun, 12 Apr 2026 14:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="xY2r3EKO";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="xpTxzIuY"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2465628851C
	for <linux-man@vger.kernel.org>; Sun, 12 Apr 2026 14:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776004869; cv=none; b=p+hM2hZvXQv5GOm8oSAtvS0K85cYYVHYaTNNX1iooU4jiH68tuELMgwGwnjCV7vVs7eYtO6+QY0ZSQllHLXDKA5ML3qJUsQI1vAADqBXWiHymcyY+p9kV2WQ6Loft7F2Dejl/xjcQ8R1yRe23d+b2tDmY6qslnOIMZheyUWFovI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776004869; c=relaxed/simple;
	bh=6m6gY/AR1+kzjp4pJRiLVNFMOSCRWphdsFoZDW2i++M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cD03uyXEmu+FXZW/DUIAGg4biHGwaDMoiRoF6gaVSEiswVAUxiArdXiTZ0iP5YJUP4nCHRZhNwbc/Bbe3Bg8alCYliykErpmP/0YeVHAdVz0sBOlXNBZXb3dPP3q1feb5qGtlOGNHd6T0iEuAfmTKU1ctqTrBU3ZQxJh8c9Rq0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=xY2r3EKO; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=xpTxzIuY; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:b231:465::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4fttWj01Nzz9thN;
	Sun, 12 Apr 2026 16:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776004865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vAc5uTCOhbaMA/RdxoWoycNjk/qyYIThbyxxX6Oi2SU=;
	b=xY2r3EKOyBYm62PpgI53p0AN+J0QVukbunKq07dPVmbfouL4uznC3NFREXx4i8k0jvNeGq
	bsd9+HUXinjyChR3jcQqacALBz+/mIKvasLsnPm5a/NDsy8jpr+qrGvExwOgGf2XR3wrC4
	psskeqpNNxW+aM65GibfETT3UNH2MhzDQJH6yi7yQO7SHKOynYEbACmBHYULlifD6+jsaL
	lfrFCx3rV/wdM1xD1YKbe6l3yMPpCvbBi+G5CkAPBP8Vlnpvutu0lyF7RQi4wP0hIEPXc4
	pLrokoCmQSdPn84HHZbf2P5Dou6pkIcEK+6Si2DRssv9vSHyhktNf9y6vRtUwA==
Authentication-Results: outgoing_mbo_mout;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=xpTxzIuY;
	spf=pass (outgoing_mbo_mout: domain of zeno.endemann@mailbox.org designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=zeno.endemann@mailbox.org
From: Zeno Sebastian Endemann <zeno.endemann@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1776004863;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vAc5uTCOhbaMA/RdxoWoycNjk/qyYIThbyxxX6Oi2SU=;
	b=xpTxzIuYA3fzp/j2sQof/J2fVYHNU3FjJevfmRAmMmhSYXaqhVYPv5jDTPC8xcip5c0g3b
	Ivd0rEopG2CEOsvtW7/ZPzgfNbqxQZZa2r6b0LVFCiAhsvKZyMle1UC+AytarKyirTiyjH
	Fy+bikZsipq1R8kaNl30s3Pt1fdzZMImwl6I2Zqw9fvFKlwck0NO7NOREdAcGOF8oSiRlt
	9KSjvL0cIPnGL1Fo6T2y4i3+/ieSiKy5MKYlm8yxDoD5nXxfYIRMKiPz02/jAFhPLylrMG
	L2Qi0Sut7Z2sRtqT3ZvfWg+Mq/jDlUnRpip5eKJdecdipTIRn8dbo7qsdIjqXQ==
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Zeno Sebastian Endemann <zeno.endemann@mailbox.org>
Subject: [PATCH] man/man2/truncate.2: ERRORS: Add ENOSPC
Date: Sun, 12 Apr 2026 16:40:07 +0200
Message-ID: <20260412144007.27323-1-zeno.endemann@mailbox.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-ID: 39ab5ddd355634896e9
X-MBO-RS-META: n5eckdc1idg78i879d3q9rwxa9emh6r8
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5324-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zeno.endemann@mailbox.org,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mailbox.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5C5603E457E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This error can be observed for example on a vfat file system that
does not support extending a file without allocating the space.

Signed-off-by: Zeno Sebastian Endemann <zeno.endemann@mailbox.org>
---
 man/man2/truncate.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man/man2/truncate.2 b/man/man2/truncate.2
index 946d6aaf0..c576b8329 100644
--- a/man/man2/truncate.2
+++ b/man/man2/truncate.2
@@ -98,6 +98,11 @@ The argument
 is larger than the maximum file size.
 (XSI)
 .TP
+.B ENOSPC
+There is not enough space left on the device for extending the
+file size to the given
+.I length .
+.TP
 .B EINTR
 While blocked waiting to complete,
 the call was interrupted by a signal handler;
-- 
2.53.0


