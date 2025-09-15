Return-Path: <linux-man+bounces-3868-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B69B57E90
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:15:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ECC92483C38
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 507F631DDB6;
	Mon, 15 Sep 2025 14:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="rIWQLeWz";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="3pWCzr8/"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8766831B102;
	Mon, 15 Sep 2025 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945593; cv=none; b=uSR61kXQvDjPd2/gmgzNAN6aGSz33WQ6VrV4UwtjVhWQwXlrRWGSgH3TFXSo7ZVKY+Bj/zvhlNjeUjuYmYIHdW9HiO2buQILUgamuD5TKGxzOOkFXDukjnS/mIa9hajHN76pYNAeLIUgx0v++2tB6be4riCE4DmI52R4SA+Ieek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945593; c=relaxed/simple;
	bh=TIfkXMFMkSx1WW3j7mRXsB1XS0dH6CHK3eRZO5Ufy5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VrUYaUB/TJVLbzBJzFF60NNdbPNFBO9uX5HwsEs+mWawI2UJgPiDju+lAGVDjMo9H1BEyJujim3d6sRZIO56mM/UAqRwXRDm+JsIJdUod+dpaFJ8s77dH04V6eKCHBA9+aDzwbVctJ07kIPPeqDDtQuGjQ8dmuYsCrzfLM0hLao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=rIWQLeWz; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=3pWCzr8/; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0GTPD0Jg24qZ4wvtVY/gWrfu7stE2l/DR018tFCz2so=;
	b=rIWQLeWzwM03P1r8Oeiqmsj62FckjJUPD9xZYwiL0Q0N5p4Ev50qGMEevdQFh4s5+PjW2b
	OPa8RzDyqbLcTKMGLp8SiQBnieSH0QfWzeyrONmx23oFL0+ifsJXO0e6rUXmuRrhOnMZhe
	rPD/mp3FkgU9Zxc+XGtApOzorCqMoIZcMExEm58wmuTi4Td2KvUcJQmVBzgv5i7uhMmJS2
	5skteCXIHfBAYbD53fWEjHIjm3aVPGATSEm8OacNkDY88kdrVE4Od2L5VMsPgS3MQlyofq
	mLxcLGS9nWppOw6OJu73WiJs+3EZly5EvdOxc57NqOLHf8EUsU9QYT5n5zYlVw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0GTPD0Jg24qZ4wvtVY/gWrfu7stE2l/DR018tFCz2so=;
	b=3pWCzr8/tU9QKuqhHODw8t8JKgFBvVzkvJn94X4C/Cy29/mqPRLm1X0G96CtwgEnzIuLeI
	tm+ghSCfZhwIBADw==
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
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH v2 4/5] man/man2/futex.2: Update the link reference again.
Date: Mon, 15 Sep 2025 16:13:04 +0200
Message-ID: <20250915141305.906440-5-bigeasy@linutronix.de>
In-Reply-To: <20250915141305.906440-1-bigeasy@linutronix.de>
References: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Carlos O'Donell says based on the context, it should be the former link
from that day.

Update the link accordingly.

Cc: Carlos O'Donell <carlos@redhat.com>
Link: https://lore.kernel.org/all/710e8f05-b0b3-489a-9e89-8967cf6a9e70@redh=
at.com
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 man/man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/futex.2 b/man/man2/futex.2
index fe4a239c3812c..1a7cb1b5e08c4 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -6,7 +6,7 @@
 .\"
 .\" FIXME Still to integrate are some points from Torvald Riegel's mail of
 .\" 2015-01-23:
-.\"       https://lore.kernel.org/lkml/1422037788.29655.0.camel@triegel.csb
+.\"       https://lore.kernel.org/lkml/1422037145.27573.0.camel@triegel.csb
 .\"
 .\" FIXME Do we need to add some text regarding Torvald Riegel's 2015-01-2=
4 mail
 .\"       https://lore.kernel.org/lkml/1422105142.29655.16.camel@triegel.c=
sb
--=20
2.51.0


