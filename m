Return-Path: <linux-man+bounces-3750-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B38DDB3C028
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 18:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28D2A18852DF
	for <lists+linux-man@lfdr.de>; Fri, 29 Aug 2025 16:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E6EC322C88;
	Fri, 29 Aug 2025 16:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="vAFrI4+C";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="w4kbhreW"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91626305046;
	Fri, 29 Aug 2025 16:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756483331; cv=none; b=f0/V0G72qVmaf+NaLb6KDNIVDH4bpvRaFGQB1JEtRMPp4ihJkcWWC36BliJ0/QAWW/JAm/cbV4n5iw3lLKC5a/q7pfllk9fE1bRk1qMj1yLJXDuTxEZnJyb29y0KZeYz7kNYoyq/WnNtMuyzelEsfbxVlR5ObWlWpvh/Ea9AOSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756483331; c=relaxed/simple;
	bh=pfIqQd8uHA4ATUntb/FL6J58wv1QXovBwoujqHca46A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cT57nEkTWvm+foNshM+zqhxKCVHsWS4cCHXOdbRFTvYJdY0Dvaox9PBWOZUYb3ch6fVyRYxmxR3bM6m0M+kTaacNPlD9a0dGW+Wp553UD8DvKflew42rn0pNYvycb37nWFQ9pLnOkzBtIlJ7+iTfC3lQ6krPC7RQ4WidwerHYeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=vAFrI4+C; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=w4kbhreW; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1756483327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=215+8Q3uzBnOfztiyaGDt27X3dq/IcEDuYL/qGm5BgI=;
	b=vAFrI4+CFurtisXvJqR8DAMdZeDykckaR1K7/YXND5ED0CdfmNDv6Rsku/P2GLRK4IazZF
	hFSfB4IkCDk6aivj9lHPpTLsfUbXMWR9jVG7R3GlNN4jtnHaJT+nhzj0514PIPI0PirN6b
	PRAqLsoGDCkPh/y/VR2dddRbgG5gqiL82Jark4X0Hb/JecyZ/BbTctUzv4SO6STQp+hTBE
	jeDzbXZk2+GWFZyHvZA8Z2s0IgQ1/f91EGlaW9cLxbsEiecR1pIPt3EQmtQddcGKNCH6Ou
	4LoI+SQdFFktH/s6Tb0BbIc9+f1c2xwFDJ21msixBmUX7/Xh2CgtKsWnNcb5uw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1756483327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=215+8Q3uzBnOfztiyaGDt27X3dq/IcEDuYL/qGm5BgI=;
	b=w4kbhreWZkOMeLON0ie7tShRlBWjS/MR6HTDzdGhNkm78dNcr5FCvaoypihtGEOJfFDq6v
	f8eig/vrU7tmA/Ag==
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
Subject: [PATCH 0/4] sched.7 and small futex.2 updates
Date: Fri, 29 Aug 2025 18:01:56 +0200
Message-ID: <20250829160200.756194-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

I went through sched.7 and tried to update the real-time bits.
I started looking into futex.2 but then got distracted with the condvar
part and didn't get very far.

Sebastian Andrzej Siewior (4):
  man/man7/sched.7: Update the real-time section
  man/man7/sched.7: Update the documentation references
  man/man2/futex.2: Recycle two gmane URLs
  man/man2/futex.2: Add a pointer to Linux' memory-barrier

 man/man2/futex.2 | 12 ++++-----
 man/man7/sched.7 | 66 +++++++++++++++++++++++++++++++-----------------
 2 files changed, 48 insertions(+), 30 deletions(-)

--=20
2.51.0


