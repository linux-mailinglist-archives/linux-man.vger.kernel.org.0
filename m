Return-Path: <linux-man+bounces-5477-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uM7cCvNw/2lJ6gAAu9opvQ
	(envelope-from <linux-man+bounces-5477-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 19:37:55 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A408B500CD1
	for <lists+linux-man@lfdr.de>; Sat, 09 May 2026 19:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46970301992B
	for <lists+linux-man@lfdr.de>; Sat,  9 May 2026 17:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC6563BD237;
	Sat,  9 May 2026 17:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=buffet.re header.i=@buffet.re header.b="f0OBncLl"
X-Original-To: linux-man@vger.kernel.org
Received: from mx1.buffet.re (mx1.buffet.re [51.83.41.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400BB2D6E64
	for <linux-man@vger.kernel.org>; Sat,  9 May 2026 17:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.83.41.69
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778348249; cv=none; b=XHMsdBrGmPsyO7YH/jj7PX04D2rVVEvgTbz9weYX9VW+8N8JxsdPLTji0CqYlcqJCXe9XKFuX5AnDbJXL17j9GkelR5LXJYjKoLNZdPkn1n7/DtD/PmQmXKKTSwVkO+SMR99ephcGi6wPo7wFWdO6PSWXuSGdP6dJA0lufQStNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778348249; c=relaxed/simple;
	bh=BeN35Oa5pDf/WyvTxCd1aqW2/c4Q2m7og7jCL5x/ltc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VkBN/H2XMPk+qvsyCSoKnVSC30/potQmlh27syXd6RW7cTxpe2MyxuyYJsGCBmFpQkuTD1mpAXWbSZglZfnOTyuYcRmDx+kyT2OxbDm7m9tmX5u5haSolRM7qKltc/giagTgW9EGi1Q8mDsgd/RL09eCcGOm6oKgAhDGQTJEs9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=buffet.re; spf=pass smtp.mailfrom=buffet.re; dkim=pass (2048-bit key) header.d=buffet.re header.i=@buffet.re header.b=f0OBncLl; arc=none smtp.client-ip=51.83.41.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=buffet.re
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=buffet.re
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=buffet.re; s=mx1;
	t=1778348240; bh=BeN35Oa5pDf/WyvTxCd1aqW2/c4Q2m7og7jCL5x/ltc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f0OBncLl6J9ei7XIEkDIKUZtfTDBXoKSfmgT5WqOUWfbXYN16L0JhhIfw3W0XacNI
	 CsGZGOIqheotumD0ptPDDhVWREsPmZBnL/17uzdNqLYKaJ3MPdRvK/aSfE+0Ye+d4o
	 3R6KBeqVUrX1L1BazMxchwipsxJWl7tb64Q689+rxoMgvkKVAWr7i7u3xUFC2ZPVX2
	 kacDD2GiwIuTW4TBN9H0fiW5QVXKwT2Cv8T5M5CCTmvPeIwez8TYUx/Mw5l0Oo12W/
	 eVnCASuYqh6c0AuUFEN43Ubk/DrIjjRKEMtKDxrHhUdugt3f5x21l/p9T3ptKLQ4gu
	 8alW1DwJag8Uw==
Received: from localhost.localdomain (unknown [10.0.1.3])
	by mx1.buffet.re (Postfix) with ESMTPSA id 10972125928;
	Sat,  9 May 2026 19:37:20 +0200 (CEST)
From: Matthieu Buffet <matthieu@buffet.re>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matthieu Buffet <matthieu@buffet.re>
Subject: [PATCH 1/1] man/man7/pid_namespaces.7: Fix process/namespace hierarchy restrictions
Date: Sat,  9 May 2026 19:37:11 +0200
Message-Id: <20260509173711.1920769-2-matthieu@buffet.re>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260509173711.1920769-1-matthieu@buffet.re>
References: <20260509173711.1920769-1-matthieu@buffet.re>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A408B500CD1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[buffet.re,quarantine];
	R_DKIM_ALLOW(-0.20)[buffet.re:s=mx1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5477-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[3];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthieu@buffet.re,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[buffet.re:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

setns() actually allows forking new processes directly into grandchild
PID namespaces, so the parent of a process can be in grandparent PID
namespace. Indeed, the only restriction in setns() is that the target
PID namespace needs to be a descendant (direct child or not) of the PID
namespace of the caller.

Additionally, that restriction is not a consequence of the paragraph
before: add a new paragraph break to remove the implication, and add the
actual reasoning (fork() APIs needs to be able to return a valid PID in
the namespace of their caller).

Signed-off-by: Matthieu Buffet <matthieu@buffet.re>
---
 man/man7/pid_namespaces.7 | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/man/man7/pid_namespaces.7 b/man/man7/pid_namespaces.7
index f7e0aeded..39b9331ca 100644
--- a/man/man7/pid_namespaces.7
+++ b/man/man7/pid_namespaces.7
@@ -207,14 +207,20 @@ because doing so would change the caller's idea of its own PID
 (as reported by
 .BR getpid ()),
 which would break many applications and libraries.
-.P
 To put things another way:
 a process's PID namespace membership is determined when the process is created
 and cannot be changed thereafter.
-Among other things, this means that the parental relationship
-between processes mirrors the parental relationship between PID namespaces:
-the parent of a process is either in the same namespace
-or resides in the immediate parent PID namespace.
+.P
+Additionally, because
+.BR fork(2)
+and its variants need to return a meaningful new PID in the namespace of
+their caller, the parental relationship between processes needs to loosely
+mirror the parental relationship between PID namespaces. To that end,
+.BR setns (2)
+is restricted to only accept descendant PID namespaces (direct children or not).
+Thus, a process can only be forked in a direct child PID namespace, or in a
+grandchild PID namespace (in which case it will be assigned a PID in all
+ancestor namespaces).
 .P
 A process may call
 .BR unshare (2)
-- 
2.47.3


