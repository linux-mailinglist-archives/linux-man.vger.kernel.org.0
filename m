Return-Path: <linux-man+bounces-3754-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F03D0B3C02E
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 18:03:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 934871C81516
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0498232A3D7;
	Fri, 29 Aug 2025 16:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="lO7i4YFW";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="6VW61c2t"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36888322A18;
	Fri, 29 Aug 2025 16:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483332; cv=none; b=myGoirx0hncFbKgQGzF2Qmz35VtAI6F3el4YqqnqvCCtrUEMduxk/vmPr1KVDDtNRRb5S1FoYTCf/EcymXoc9BgcYgyvKDIGedXv5T2ZAzpFfe+zSBKeXQP7t6t57u6+vuLcjyGtbtQZHB2876H0JSU/LEjVuFqxnyHIZhM18qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483332; c=relaxed/simple;
	bh=bQG29d/gqfa37KgR+eWcvTJsIyNPrhF/BJ6WV0UpMy8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P7melyR0ZH7/iED8LGmnYAOm8VRKpk9bpr4RO7e6P9feNezL6X+luj4V3H2uZ37dGGAY80ibHQERzcjXfF2vSQuXpMPaozdWnVsqO8Pf7924aLwaFtR/7USliZKploHrtVPtNrn0f4tw+bd8is08LI3ILukSFmMiUKjpzYDHDus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=lO7i4YFW; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=6VW61c2t; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756483329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WIdtKqiOOJ7p8IurtDpid2eELI/1MsRh6+zCH+5n51E=;
	b=lO7i4YFWemxYjdj7EeoWtRs0REHgGWZg0IqmKTgYlAwMHelUbV29KEK+Rs35Ln2s71rl4U
	sCxURcF/+JWTYImSgh/DIAH0kUezb1q151lcLPmHzqwYX74sKCn9vHezD7fkn9JeGXsUDu
	2h6EbKhPs2Zf1LRbpVKn6Vq3sLixYRJGD5sUTfX/dhIOKJrxg7SVJxFxqjwhrNYODoEQbc
	z07BgZmvLt/OiU0s8IA76b65cUgb5zP/rjINM3VZyy+XvbLDOwraHsjbS/9MqUqA43nldf
	zTrEH2qpxUueTVk3i7RRFwF0xYKvTxuN88fj8hcecK/sXu3XvECmwsi8kKDKOg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756483329;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WIdtKqiOOJ7p8IurtDpid2eELI/1MsRh6+zCH+5n51E=;
	b=6VW61c2txLWpGEb3dky+/NXAFS5tpQOIBZIOujSYYdEImHONIqO9pGeXDDcCb2uW+lUYkP
	Hs3J59d1hWBNRGBQ==
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
Subject: [PATCH 4/4] man/man2/futex.2: Add a pointer to Linux' memory-barrier
Date: Fri, 29 Aug 2025 18:02:00 +0200
Message-ID: <20250829160200.756194-5-bigeasy@linutronix.de>
In-Reply-To: <20250829160200.756194-1-bigeasy@linutronix.de>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The "totally ordered with respect to concurrent operations" part refers
to memory ordering/ atomic update and has nothing to do with the inner
workings of the FUTEX code. It simply tries to express that the futex
operation will compare the supplied argument with that is written in
memory.

This might be a tad too verbose but then there is a fixme asking for
details on the sychronisation. Maybe a pointer to the memory barriers is
enough in terms of the required synchronisaton. Assuming this is related
to the memory value and not the futex internal synchronisation.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2/futex.2 | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/man/man2/futex.2 b/man/man2/futex.2
index 027e91b826bf1..fe4a239c3812c 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -84,16 +84,14 @@ on the same futex word.
 .\"     would be sufficient? Or perhaps for this manual, "serialized" would
 .\"     be sufficient, with a footnote regarding "totally ordered" and a
 .\"     pointer to the memory-barrier documentation?
+Please see
+.IR https://docs.kernel.org/\:next/\:core-api/\:wrappers/\:memory-barriers=
.html
+for the definition of atomic operations and memory ordering.
 Thus, the futex word is used to connect the synchronization in user space
 with the implementation of blocking by the kernel.
 Analogously to an atomic
 compare-and-exchange operation that potentially changes shared memory,
 blocking via a futex is an atomic compare-and-block operation.
-.\" FIXME(Torvald Riegel):
-.\" Eventually we want to have some text in NOTES to satisfy
-.\" the reference in the following sentence
-.\"     See NOTES for a detailed specification of
-.\"     the synchronization semantics.
 .P
 One use of futexes is for implementing locks.
 The state of the lock (i.e., acquired or not acquired)
--=20
2.51.0


