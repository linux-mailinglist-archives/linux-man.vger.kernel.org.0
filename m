Return-Path: <linux-man+bounces-3078-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B64ACB031
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 16:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B500D4025B2
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 14:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663602153CB;
	Mon,  2 Jun 2025 14:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="es6Dta9o";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="8in+sZi8"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21F81E3772;
	Mon,  2 Jun 2025 14:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872871; cv=none; b=P+4tcxDpWENqZyKDMe1qk2LYnX03B0LwVun0e3TamTCOKvH8eA6mVOHzh36zRVP0O595vkZz61Rm2tL22DJ0Z4SvpXY2DV8uXgk+ZtCXwfMyhMPQR2kaaJEGmbukl13FT3PkmORgDdYvO1/8ghLVhw+lRzzGygK9cH2RZM2TjRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872871; c=relaxed/simple;
	bh=tnzDrYQlCcDbVE3Ad/PaUGDBvXzYbqTNAmF/EbjsrTI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=L0RyiYL3NdqF5SBRafKfvek1utefyGQI8F06aNNDj0udzYlZrB8jAXn1nn5wlIgfkFh5VdHc22pOnDgk1xoiYN3QyisjqW4tbLK/LkefD4LYEVrz4qWuR1aT8adTApORp7trUPnu4oBWVvqgXiJOoRkkukGYk3eD/w0bMCabnIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=es6Dta9o; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=8in+sZi8; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748872867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mHTcjK86DwFps5axChZfBj5W49tmXXBhspRAwpyzkWk=;
	b=es6Dta9orxDVsX11t3dHqhgC6G7xiJHGVZ1iXkBtvNndMLKIrTOhJ4/ujm8do9GCpX2vys
	cWigCkn3Ka1c6Mvsc/drXHdg9FMLIatSllOC+wGH5ib7o6GHeM5u8rITP3g1WODwNrce6K
	Gv/xOT0XCWoAu3UM/Gra6o1nThsO69pf1NbHCUVr9D5R1/rBj57B5TiSykQDD8A3efeRKg
	aunbno7PQVCLWp765mZ+TnUVRlXh3Nig3/N8gBP/4xhrO13CjUZts2Pc4vq1G8fgtTzvGL
	auQm2rG+EJPU8L7dw4AJ8uCdObu8mQ/X1Xpnj3IocvC+13+hcRORhPBwMLFI5g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748872867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mHTcjK86DwFps5axChZfBj5W49tmXXBhspRAwpyzkWk=;
	b=8in+sZi8NxEYZxzj9t86eHP8TJw4kuf2SdPxiFdQk/uWtWUpuAzNFEJjX8DZkGFzpRVu5T
	AIQqkGnuLgn4TvDw==
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
Subject: [PATCH v4 0/4] Add documentation for PR_FUTEX_HASH
Date: Mon,  2 Jun 2025 16:01:00 +0200
Message-ID: <20250602140104.2769223-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add some documentation of the prctl(PR_FUTEX_HASH, =E2=80=A6) interface.
The PR_FUTEX_HASH interface has been merged during the merge window,
v6.16-rc1 is expected this weekend.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
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

Sebastian Andrzej Siewior (4):
  man/man2/prctl.2, man/man2const/PR_FUTEX_HASH.2const: Document
    PR_FUTEX_HASH
  man/man2/prctl.2, PR_FUTEX_HASH_SET_SLOTS.2const: Document
    PR_FUTEX_HASH_SET_SLOTS
  man/man2/prctl.2, PR_FUTEX_HASH_GET_SLOTS.2const: Document
    PR_FUTEX_HASH_GET_SLOTS
  man/man2/prctl.2, PR_FUTEX_HASH_GET_IMMUTABLE.2const: Document
    PR_FUTEX_HASH_GET_IMMUTABLE

 man/man2/prctl.2                              |  3 +
 man/man2const/PR_FUTEX_HASH.2const            | 89 +++++++++++++++++++
 .../PR_FUTEX_HASH_GET_IMMUTABLE.2const        | 39 ++++++++
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const  | 37 ++++++++
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const  | 82 +++++++++++++++++
 5 files changed, 250 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

--=20
2.49.0


