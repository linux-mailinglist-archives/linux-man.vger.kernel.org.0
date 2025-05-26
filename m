Return-Path: <linux-man+bounces-3015-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 093B1AC42A4
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 17:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E30403B3B29
	for <lists+linux-man@lfdr.de>; Mon, 26 May 2025 15:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1049E215043;
	Mon, 26 May 2025 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="O/mdelKY";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0cWyXiF8"
X-Original-To: linux-man@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D4E2147F6;
	Mon, 26 May 2025 15:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748274934; cv=none; b=MyiDB9X51ZcMzpdF2xoroxberACPwvNSnDcB8arSZrLwz9DPFplYtOS8TWiQkERpeqWfQ/TrTVXeMdGxmoBOFGivNiE5+9Y6M6qxmcWTjlb30bNMl2AtBHDtKXTj0smt45diJLyWEkSa4vngzSnxoTmD/hv4Yp/f1Y2Ic3uLtgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748274934; c=relaxed/simple;
	bh=pRkavSSrKLELLYEyxG8VOAx6a1OSCKlwEsUsa/rhHXw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lKiasH1rstXPYdEqHKKYlKWxvD6QN2oyKpEv6o/98AsWYIHWvOPt/iei7iGw/DTManIg/8eykbbSh5eYIfzDrULLSKdIp5SwybWLzVskWwzc+9Ysdw00T3FBnF7cYilqoVjGVYLz3xZizUZrunamRGdLIrqZekPazMHuhyz/N7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=O/mdelKY; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=0cWyXiF8; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1748274931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UJlE224RmBYGNDbS+Mw+IYOqU6oo4BkO2oGnbjLwdYM=;
	b=O/mdelKYDkGlnypUkTTSDHGnbK0Py4y55Wqu6Ug1AkXXuARsVU2RNGQg1Bw9xMk3mXwQmg
	iGjGFywpxRZjkKujG3E0IeesXOIxC+g+V0q7HceO84QOJX+Aj9Ecv8tYVyAlbP239DDZo4
	9AN+dKdUhL7gGE80pFzm4wHCziCd1tVbi/aJPM8f2ujyAYYzCumnjXK+NNq1hsC4cK/rGP
	Esuv2WImjcFTgCUKg65uDxyTveJU0BFgvDv1uYu8rU8+HL8+2/7M9op4dHTATPSEGcy0rc
	+SVfhPwhmjWgDT8Alq15uUHu+fVtuNd04alTOw5Y1150c7+2vi/wqkrNrJihrg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1748274931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UJlE224RmBYGNDbS+Mw+IYOqU6oo4BkO2oGnbjLwdYM=;
	b=0cWyXiF8ZdUYWma/Dl1MrsuO4uYAiJjtpHI4qfAG95e/JdN+d2GfeAjTUrnubq7IMzn0xY
	kkAB6Yjsl2Rga5Ag==
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
Subject: [[PATCH v3] 0/4] Add documentation for PR_FUTEX_HASH
Date: Mon, 26 May 2025 17:55:19 +0200
Message-ID: <20250526155523.1382465-1-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add some documentation of the prctl(PR_FUTEX_HASH, =E2=80=A6) interface.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
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
 man/man2const/PR_FUTEX_HASH.2const            | 92 +++++++++++++++++++
 .../PR_FUTEX_HASH_GET_IMMUTABLE.2const        | 37 ++++++++
 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const  | 37 ++++++++
 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const  | 83 +++++++++++++++++
 5 files changed, 252 insertions(+)
 create mode 100644 man/man2const/PR_FUTEX_HASH.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_IMMUTABLE.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_GET_SLOTS.2const
 create mode 100644 man/man2const/PR_FUTEX_HASH_SET_SLOTS.2const

--=20
2.49.0


