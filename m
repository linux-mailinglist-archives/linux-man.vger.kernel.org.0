Return-Path: <linux-man+bounces-3864-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4ADDB57E82
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 16:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A751188BCC7
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 14:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A868F31C58F;
	Mon, 15 Sep 2025 14:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="LMIjl4qp";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="cyMH2N9J"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D408B31B839;
	Mon, 15 Sep 2025 14:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945591; cv=none; b=N+w5gM4BBzEciDdGRQ9bgDRS1Xoj9p0tvR1AlEws41O+LUpXfFM5C0iA+6b8WqEetmIrJ5hEaE0naARirVtFM5Qop8/LgYk9GpGZXSQVmCkhM6vGWpIMQyC5X6ZVRtCmUOhUy1Na8WNG10Lo6SRViaMQDy9WaeblQvQeVbVhpgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945591; c=relaxed/simple;
	bh=KkF4gfUuQ+1uEsQ58irJ+hGANC+d64/kLKIQmMP+97U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=KNbaT2f84XstYd92Zd44B94aEjiHVLr87OdiJncALeXLsB/zYc8AydCynVLFQZGt5hbhSpruIkb8XAGUMLorP5EvQ0wN0NyensDDWp/MEbVqcsjo9qBUuQUBhxrWDOfZchTbAg+UMzAKhRE+8XNbTxp3/8oE0J56wOJdXJTvfzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=LMIjl4qp; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=cyMH2N9J; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1757945587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TbsBY5aSzYx4rFzp8VobCG8vfTktc2ecHZo3N9ebpJs=;
	b=LMIjl4qpXFr7kWj/pLn+s0q4gWK1iJnTgIREiKKpXmYWD4d8Y+AjgU7FDxqAOVExiI6Lt4
	v0hSN6EZTomANK4gvtUrC/ucUjXWv1OKgwTtJCKNUnBN7xLCgfaofQJBWhfhE6bwcvxs4F
	/pozOEw+Xye0NRVgGfEKvBJQ2Q3W2nK4eW6seh7KBHAwuLgqVT6cpBrKS8B4sBxbuxnXsC
	Rdtjd7uAE48X5JZwSQ1A1MeaHOwDmVdkqof6oSak69lnZdPl+9t5UOYdYVklmGeL4la8EA
	BsLfibz7NsER1RIJvdAiK1IDSFlnQpuRkalpmbhblBrD8jK+czo/DdBoFAIN6Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1757945587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TbsBY5aSzYx4rFzp8VobCG8vfTktc2ecHZo3N9ebpJs=;
	b=cyMH2N9JtsdVMOGEoe3mHvOLKmqEq9pynrlt06AEIi0zxn5tCNdcma/4vYWVjI3EFUtfB7
	ACHxVInFbhdQzlBQ==
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
Subject: [PATCH v2 0/5] sched.7 and small futex.2 updates
Date: Mon, 15 Sep 2025 16:13:00 +0200
Message-ID: <20250915141305.906440-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I went through sched.7 and tried to update the real-time bits.
This is an update vs the last posting.

v1=E2=80=A6v2 https://lore.kernel.org/all/20250829160200.756194-1-bigeasy@l=
inutronix.de/
  - dropped #4 "man/man2/futex.2: Add a pointer to Linux'
    memory-barrier". According to Carlos it is not entirely this and I am
    not sure what else is meant. So dropping.
  - Updating the link formatting in sched.7 as per G. Branden Robinson.
  - Updating the link in a comment in futex.2 to the one Carlos O'Donell
    suggested which should be right one.
  - Added a note to pthread_cond_init.3 regarding real-time.
  Independently=20

Sebastian Andrzej Siewior (5):
  man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document
    PR_FUTEX_HASH_SET_SLOTS
  man/man7/sched.7: Update the real-time section
  man/man7/sched.7: Update the documentation references
  man/man2/futex.2: Update the link reference again.
  man/man3/pthread_cond_init.3: Add a note regarding real-time usage

 man/man2/futex.2                             |  2 +-
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
 man/man3/pthread_cond_init.3                 | 21 ++++++
 man/man7/sched.7                             | 67 +++++++++++++-------
 4 files changed, 133 insertions(+), 24 deletions(-)
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

--=20
2.51.0


