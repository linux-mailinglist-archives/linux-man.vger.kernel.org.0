Return-Path: <linux-man+bounces-4582-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DEFCE8CCB
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B860B3001638
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608052DAFB9;
	Tue, 30 Dec 2025 06:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nLzwdQlk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B5522068D
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767076989; cv=none; b=RWAnM4GVimf6VN6BCvW6kev+U/eB5hw7G1VXeGjAiW7zuzYKcab15+1HZ8+4Ov7vXJi7Tf8mhx6yABf7bOHoPIgUezjpsoJ48ylrUeRRzWXf3L7g56D9PlKcdboOLPqPLq9bk5jTcOR2cLR1B95UGp+GFKYmJWrTxNzbW3RNpfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767076989; c=relaxed/simple;
	bh=a2JYqQwJTV69qG/vgLE9aQmCRCezF0TiwV990fV71mo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZO7DwVq+z2gxzqG5Ctm4i9VU+xUT08zm47zBt2HoFx0Md+ghQtxJGhd6PNMmJyIz3JIfaWej7pnF3L34tS8nHEVpsD9Jnb72gTH5H1EYxh4os/5t8QXHdJBVwXrcpLE2FGxF9I4Yx8UmrOWsxsjorFeZjcVary+Zaz7wlxyzWQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nLzwdQlk; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2a0d6f647e2so156998025ad.1
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767076985; x=1767681785; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SKHT1g6FdnJq4SIZmwFTh1KDwFBZLLkE/O90AskEAp4=;
        b=nLzwdQlkHjHtJpEVEgxSlnfmOs+PS3N7dG5m/1wWsF+Ap+KHXYPLV3ReWcai6auFK6
         1ZlZXGXWq090nWjEn70KHzHSEi3UEZ393r1an3jaSBVjnqm/KCf40QXUXPTOBe13RyMT
         G0lWOMFAR6uuUNw3BYBJW5OR0R2Dsd/z2ZV4iclY10VKsm3ah/RRUOBK8mlss8FusnlZ
         Bc2v4pCJjpgXX0m0jBeMvRaqj8arB+qMCQM7E/1P3drL1o9fhO7ZgmAlAZAiaw9kmRQe
         ug451akco8VA3JO/SmzAow+ceO/T5n408Ffdbc7tNiUvZwJnMxJTSvxpdoHgTCnlGP0U
         F7RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767076985; x=1767681785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKHT1g6FdnJq4SIZmwFTh1KDwFBZLLkE/O90AskEAp4=;
        b=RBm3k+E4UMpUTJVNhdkrI7OGqdfvrlJ+E2T2GlLVosvlmO2mTQTSFmHWv1aMpK6Gcg
         AvInjpNDV3gM9UZCWbb/vF92sdq8iicMeRENIiSJNRncexQZTOinFOlicT/es20FZ565
         Wlg8zZ/JkD/hCgDPY3NJvLOKsBIDlrgsbG99pu/HijoOA9zWL/PAnSXMUoc9XhuxpniY
         H0yQXmWgE9U0xMDOwSIGK3lmocaPSZAT6vRdIiTfK1EoWwtiCeEHsEz1alCRPsbO8VNX
         wNlje/dNztH16cdw9A6IWSnNvPZcNbDli3HLoQr3RtDxVya6WFHNRTeRDUYBq2mMSoby
         9niA==
X-Forwarded-Encrypted: i=1; AJvYcCWPoH6wb7mWExhx/HXjPWkFwT/2C6StVIuoaovwgiLG5BiQGluKtY5Vkc2lwTe4nZNvw6CKNad5+is=@vger.kernel.org
X-Gm-Message-State: AOJu0YwpwBQXw81SNMi0rSjMVZurOdMUxK5CHd3taME3spJ5tciwtJIL
	0sHrRpLC1vLCCDCR1KjMHpldKoFW97N61sTCya7cP7wj2VD19nOaGxfu
X-Gm-Gg: AY/fxX5s0UlTzv1g/7QBqfhL4pwvd6mAVR/hPts+xcGLQAeLclK4Mkqs7tvEreKsSDk
	UQudB5ed/85mcZqqq9XC5uMsE5XUYCc6wiSZyX3Qh0KdiWNtjoaYkpHyluXjytMV+y1FsX2UV4l
	K4IjnGlsyeirJwSB3Ck8xOgyu1j/SeXYZtkHsR99CIqKlMofVuS6e226WxDSxhLbsiZaU9nVeI7
	V3DpnKNcAtauVVuKVXb3kNMhLoRbf8DTHWotBDekM1L08xZsk9qsc70lw3huhdC5zSseLM347fk
	xeUhyYdLtn97PNPNHL/tEEAHADtiquTdhDW57OZs2lwFW7tJF2jI8N3NKVaasWv6PhyUDZFCErd
	yKWX8LbA9gf72iQiCV7WgnMM/o1uGWgn11YBVCkCHcZqm6fwZ23K7u61tdN3lslYnt/qla6hlz7
	mQm6hTHqsmmnPSJjJql6SpcX/2sEJ6IyqDEM6fpJW5oZ9+XLGWyMamIE/80fbEhtgVg3lR4z4W6
	Cpc7tTxVIeHpUAhFw==
X-Google-Smtp-Source: AGHT+IGKHX0JBMp3pKoajbIqiWzlc7qlJ1ISw9U+XNDzKnwQPL2oTraqwVFnpirXgNdi9NUzsmjGZQ==
X-Received: by 2002:a17:903:290:b0:2a1:e19:ff5 with SMTP id d9443c01a7336-2a2f273818fmr361384755ad.38.1767076984868;
        Mon, 29 Dec 2025 22:43:04 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-841f-6737-2002-883a.ip6.aussiebb.net. [2403:580b:5de8:0:841f:6737:2002:883a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm287458395ad.71.2025.12.29.22.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:43:04 -0800 (PST)
From: seth.i.mcdonald@gmail.com
X-Google-Original-From: sethmcmail@pm.me
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 0/4] Miscellaneous fixes
Date: Tue, 30 Dec 2025 16:41:59 +1000
Message-ID: <cover.1767072049.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Hello,

Here's just a few minor fixes I came across.

Hopefully (fingers crossed) the patches will remain intact this time. If
so, I may be able to begin sending out some patches for the updated
HISTORY sections (currently at 109).

Seth McDonald (4):
  man/man2/syscall.2: Add HISTORY section
  sys/man2/sysctl.2: HISTORY: wfix
  man/man2/utime.2: SYNOPSIS: ffix
  man/man2const/F_GETSIG.2const: HISTORY: tfix

 man/man2/syscall.2            | 3 ++-
 man/man2/sysctl.2             | 3 +--
 man/man2/utime.2              | 2 +-
 man/man2const/F_GETSIG.2const | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

Range-diff against v0:
-:  ---------- > 1:  a2a2a51ede man/man2/syscall.2: Add HISTORY section
-:  ---------- > 2:  1477de655f sys/man2/sysctl.2: HISTORY: wfix
-:  ---------- > 3:  fad6d60041 man/man2/utime.2: SYNOPSIS: ffix
-:  ---------- > 4:  2f33ba3b5b man/man2const/F_GETSIG.2const: HISTORY: tfix
-- 
2.47.3


