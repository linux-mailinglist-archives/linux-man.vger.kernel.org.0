Return-Path: <linux-man+bounces-3482-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D6DB2BA86
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 09:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97055189AF0F
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 07:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE2A31194C;
	Tue, 19 Aug 2025 07:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wJSNRSGY";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="xE+qO/vs"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D852930FF21;
	Tue, 19 Aug 2025 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587855; cv=none; b=dnVR5Bkv0Z+B77xruqbfL6Yw3fhcai62dBI2bD6sC0aljzAaN5q6wDBE/oSQYMU2Kg/jTmZ6afgSF+Yt21HzOawSvEW4WXFe25iJ/eMuCu2DQeLRDS2i70AXOllHVI+xv/HPK3od1hQzAvAA2rR/OlqYt0fjfO2cuURp0CBcZX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587855; c=relaxed/simple;
	bh=EBdHFltwlx7q2bFNVo6CBzKmW1i6ihD2pk/pvADqwi0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZH7yhKr6vnOu7CIYvtS/26MPE2F+3JJkIIKQQws5pXsUH9WnFDxwlspyiTGuTSh8uCr0MkPfiSdgYFo6Rto8zIDFpdjOdZY33eWdKHglKZJ0ShgG4zptEZmA35b7bDbdCodyw1j3HC1QrFRN2jtjwOmM3edittTAan0q3LLa64s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=wJSNRSGY; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=xE+qO/vs; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bipLmqlQqujs91BW8T0MMUYQj3oxqWePKHlhg0j6rFE=;
	b=wJSNRSGYnNYG8uD1dBnV8/JiwsNZzrDZFf3qQZqQhnVr21G8TeCAr3gP7MWfifK0oy8B0Q
	rL98CGX2T4UugOIvZ78RGXlnlBXnJeC1CK8ijniEzrku7y2i3lIJ6/W5CpgnbNfGTlMxbb
	29/X6ncNpaFgKR0e1qXKedPNgDXmIWDL5gremLiuLaGPoNifgZ4h0auN5sybi8uwnOCA+K
	6Kv21BICnwvn6HdwBM8EAgmVH9lwImeQ8g1wFEA1n1w1PIdEU7584PxJFwl1Q6qNLwtgDU
	cpHn+Jg327z7CobbH5S8EtbgGYVgIxybhywaU+fjffK0JcSZLH1fxoRom/dcsg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755587852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bipLmqlQqujs91BW8T0MMUYQj3oxqWePKHlhg0j6rFE=;
	b=xE+qO/vslAvP2chUEcNRiGOYzhku27+vRO1EtvNJs7Jkv5uFqD5tkDjrdSh3qt3anay9wK
	5WQWnC9665vHc8Dw==
To: linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Almeida?= <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v5 1/3] man/man2const/PR_FUTEX_HASH.2const: Update as of Linux v6.17-rc2
Date: Tue, 19 Aug 2025 09:17:26 +0200
Message-ID: <20250819071728.1431543-2-bigeasy@linutronix.de>
In-Reply-To: <20250819071728.1431543-1-bigeasy@linutronix.de>
References: <20250819071728.1431543-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The PR_FUTEX_HASH prctl interface was updated shortly before the release
of v6.16. The changes are:
- the functionality was disabled in v6.16 and enabled v6.17-rc1 after
  some updates the address performance concerns.
- the "IMMUTABLE" functionality was removed.

Update the page accordingly.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2const/PR_FUTEX_HASH.2const | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/man/man2const/PR_FUTEX_HASH.2const b/man/man2const/PR_FUTEX_HA=
SH.2const
index b500c943bf2cb..bc05226cd1594 100644
--- a/man/man2const/PR_FUTEX_HASH.2const
+++ b/man/man2const/PR_FUTEX_HASH.2const
@@ -44,7 +44,7 @@ since random processes can
 share in-kernel locks
 and it is not deterministic which process will be involved.
 .P
-Linux 6.16 implements a process-wide private hash which is used by all
+Linux 6.17 implements a process-wide private hash which is used by all
 .BR futex (2)
 operations that specify the
 .B FUTEX_PRIVATE_FLAG
@@ -68,8 +68,6 @@ The value in
 .I op
 is one of the options below.
 .TP
-.B PR_FUTEX_HASH_GET_IMMUTABLE
-.TQ
 .B PR_FUTEX_HASH_GET_SLOTS
 .TQ
 .B PR_FUTEX_HASH_SET_SLOTS
@@ -82,10 +80,9 @@ is set to indicate the error.
 .SH STANDARDS
 Linux.
 .SH HISTORY
-Linux 6.16.
+Linux 6.17.
 .SH SEE ALSO
 .BR prctl (2),
 .BR futex (2),
-.BR PR_FUTEX_HASH_GET_IMMUTABLE (2const),
 .BR PR_FUTEX_HASH_GET_SLOTS (2const),
 .BR PR_FUTEX_HASH_SET_SLOTS (2const)
--=20
2.50.1


