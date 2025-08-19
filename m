Return-Path: <linux-man+bounces-3481-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ECBB2BA83
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 09:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B940A4E2311
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 07:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98123311949;
	Tue, 19 Aug 2025 07:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="4SIdO0ix";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="DRaL44o4"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85A83101D8;
	Tue, 19 Aug 2025 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755587855; cv=none; b=ftQJ/IegaM/brkNhHAUKCK3RaNg+VkkInp2bWwbyeJLG3fbFPRJYYMimGzZuH1e1NlWaWWUKCdNsxEYrfiQTt5hnG4SgxnO0mNMevkafT3CNHtxFvffJC2LEOdQAyFy2+5m9Ml2GLEg4JyGMEl7zc37N4TUVv+8Gw3DYcWZrzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755587855; c=relaxed/simple;
	bh=46javDyCPiYE8fwnUArx2IU1gLYMrydW+58QuTTqi+4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=kxuyKTYzdf48j1fubFEPyt4sLUVO4/6l6yX1mFxA+VaLHRiDJdNRRPaXMibIbiAXcpy7REqvZaOA/PJJt2i3M0COBK5S3e8CLX22m6+1tmcTQwwOVDJOsL2pYxYaIGsilc5q51fl+RHvdOSSZ1BjVcrdizDXpVzx150pm1T1NLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=4SIdO0ix; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=DRaL44o4; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1755587851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=urZnAmr6IKj07Yy0t81dLgcsPTGgOlUWfOlJKuAdu6I=;
	b=4SIdO0ix4Eqmxu019l8HT/y7agDTYOFfDq7oNx3aqbdBQSSNZ/bQ9PKxDYS4uJBt/p0dNt
	bL4kIELkYpX48Cax6SaG+h607JSRBs+VJ+PgjT7rrN39Jg8Y93TjWA+h5wr/IJ3hHuKdAC
	YRFxXGdiCv2elE/Mx+RUM2motFedzKhQbLtR7KhaY8CAN7w0MNWYbAaG8ROPCk/sJF65U+
	QmZju3HKI4sWHrC15btncerZG+SoEUxuLAqSn5Wzp9CrpRegVpoJIol/GJCYbSQtunss1V
	rLvn3AMpdkDmbpI93XjS6KoFnOmoQaoleU1aL7byAJqVdG/SIGCNLUNpgWbuig==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1755587851;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=urZnAmr6IKj07Yy0t81dLgcsPTGgOlUWfOlJKuAdu6I=;
	b=DRaL44o45U237C9WA6+pMZkVcPx/y4o806CXcGee55mHukk276Y9ahXk7Xc+c2qEm6eS1o
	zinqxsAmvTKTC1CA==
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
Subject: [PATCH v5 0/3] Add documentation for PR_FUTEX_HASH
Date: Tue, 19 Aug 2025 09:17:25 +0200
Message-ID: <20250819071728.1431543-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add some documentation of the prctl(PR_FUTEX_HASH, =E2=80=A6) interface.
The PR_FUTEX_HASH interface has been disabled for the final v6.16
release and enabled again for v6.17.

This series updates the merged PR_FUTEX_HASH page and adds
PR_FUTEX_HASH_SET_SLOTS and PR_FUTEX_HASH_GET_SLOTS.

v4=E2=80=A6v5: https://lore.kernel.org/all/20250602140104.2769223-1-bigeasy=
@linutronix.de/
  - Update merged PR_FUTEX_HASH
  - Drop PR_FUTEX_HASH_GET_IMMUTABLE, functionality has been removed.
  - Update SET_SLOTS/ GET_SLOTS based on review.

v3=E2=80=A6v4: https://lore.kernel.org/all/20250526155523.1382465-1-bigeasy=
@linutronix.de/
  - Make FH_FLAG_IMMUTABLE and CONFIG_PROVE_LOCKING bold.
  - Drop one too many "Relative inset"
  - Reword return value for "GET_IMMUTABLE"
  - Reword the description of "unrelated futexes" in PR_FUTEX_HASH

v2=E2=80=A6v3: https://lore.kernel.org/all/20250520104247.S-gVcgxM@linutron=
ix.de/
  - Split the individual PR_FUTEX_HASH ops into their own man page.
  - Reword a sentence referring to uaddr in order to link to futex(2).
  - Address remaining review feedback such the semantic new line.

v1=E2=80=A6v2: https://lore.kernel.org/all/20250516161422.BqmdlxlF@linutron=
ix.de/
  - Partly reword
  - Use "semantic newlines"

Sebastian Andrzej Siewior (3):
  man/man2const/PR_FUTEX_HASH.2const: Update as of Linux v6.17-rc2
  man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document
    PR_FUTEX_HASH_SET_SLOTS
  man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const: Document
    PR_FUTEX_HASH_GET_SLOTS

 man/man2const/PR_FUTEX_HASH.2const           |  7 +-
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const | 35 ++++++++++
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const | 67 ++++++++++++++++++++
 3 files changed, 104 insertions(+), 5 deletions(-)
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

--=20
2.50.1


