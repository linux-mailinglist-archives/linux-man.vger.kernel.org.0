Return-Path: <linux-man+bounces-5517-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCQjCSReB2pa0QIAu9opvQ
	(envelope-from <linux-man+bounces-5517-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:55:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9918B555B4F
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 25709314A01C
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 16:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40844CA287;
	Fri, 15 May 2026 16:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d8Ec4jh8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F39F2949E0
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 16:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864317; cv=none; b=Btvkemq0Qnhjk6jAz/HLFPe+t4jh5ZKq9Gtdaps0KFAIUyDwenvdThOLiaIVohFOKJliKcsrB6xpq79RR7A8xKNHS2MAh+JDa4TY6GTFOBTSHhQ/nvtSF7BGmGR+dmbo/MGs6Q0/GMtqqVVbbpGnLib8Y9aj2D2ql9sH6q8Zuuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864317; c=relaxed/simple;
	bh=//u9CMvdAIqoW+IFAJ/4+RIuAhzkszFsXJg7MVQ76Rs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=t9ZuCXsgZAX5n3wYOGD0zTRtntp0fuhc91Uqg/3sslyQmmeMwD4NqF/9SzfhYHBrJzL+An7fdtQzeNDbf4esxUAkV7ld8+ldyepQJTaTDk0QNGF3WgMYq5mYYas45V5+pLCCo/jtBGqSYHiGetxnJjd3dkJwMInAOS++MPKRnes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d8Ec4jh8; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43fe3e22e33so6489f8f.0
        for <linux-man@vger.kernel.org>; Fri, 15 May 2026 09:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778864314; x=1779469114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9nyXzUOs0YRNU/wuqTWEHYUSQPzqCYPHEoz+WyNpv0=;
        b=d8Ec4jh8UYemt9cuBVocNMda8WWMW4YoA+bvqRnh+1lw4+zkXQ8ZtparCRVoH7qX8L
         q9eUndTfBdzSIRntCq2Zx5ZPp6PiF/Gsob6EkmtB5mK0r+sN7GvVsCXVBe2ycFXJe2Lh
         sfzTeAyodAWAmzVg+gHKEIMi3179cVxKbysDOGZBs1l9kitbQIfVoYj6zZY5Dav4ZPeG
         GWsi+cR4PfnNtycEb1GuFiJqlO2MfhNN3ukk2rHRBvfHIRsSWLd5Y5qS2/FXLT/4zoCq
         XVDMTr0WD31Sx6Vu7/GFfI2snHX/s5reReW45t1blA3Nz1E+C+aAlpbzYF9pP4POE4I9
         HtTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778864314; x=1779469114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P9nyXzUOs0YRNU/wuqTWEHYUSQPzqCYPHEoz+WyNpv0=;
        b=gyX+xU2cHDuqWNTprKyDO1oqVb9r4J7vypK/8XGuXpveyKebWSO4fdLjte9KmReX7e
         Qpx8hVhkyj+Udkoi6GPpcE/VMhjKSm9p52D0V8KMyUjbIClC8HBPvdlAhgTyiITbkihM
         1oMNLe5ly3FYaRtyvtEJ6YMRqz9NhyMHf82EdolptAdsqj+t5h84Ps8hNSwBSSc+MUyL
         61n40utkDGx/HpTD6cJ2ODZveHMF4TT2yUKkY6BNO4+P7Kiugl254idEtbTczHYRAlTP
         MdYrxha5TNUPAOuNHOA+mXSVKp7UXGBzgIgHN842K1Zp0X3pfMCxHDjuMcW8VfY46Kre
         cD+A==
X-Gm-Message-State: AOJu0YyNngyT68U+Y6TocTMaEWvjMSxGXWJN7FsHlgsjvZJ8RsnhiAWq
	MlBqS3nbreg+6vZ7AB3w869T7h+YXfw1RXejL/ZH3wf4kZbuOx1TbP5L
X-Gm-Gg: Acq92OHJjJpB9jzzF994MYXqIhOf5dxGiZf/dGjhCI3rwGlFXYrHsjPw4nMosYJ/l50
	MTR8ZE60wgAa0f2xekFVw+axoW4gcvP3TyTXFmG+cEf+862A9XX/q686UElWEWLzlbg45peXHcn
	nKrYNHezRJF8PcmGD9W8q/bYIBeaN/df3k3VV7WiHAvTxs1zEqV7Vnu82zmTdgIilclqhyVXRcu
	sQPAwT6R9ZaKLPRRR7s0VSM/ujL9LFa0UF8/05L0Ww13HBI4TAjJxew5cFbsQLNc4ZGi6KAtlU3
	CNgDYTuJ4/utFilLTJzFbt20L3YO/FH0LWgcaiBFDE0jNvbxpkcheDfm7rNIr105wtAYFTvc9cZ
	0sADYxHQG4PYhlfGYyYaoWcoW0QGThqe75/UTY17ElECX6FVvbBb4D32rZwaa1KkSnMgyRQiDGd
	rsf9Pcsb9EkQTwwfykj8AQSq9Kgc44bT57MhNLAoW/G+OZW1tj
X-Received: by 2002:a05:600c:5ca:b0:48f:e6de:1cb9 with SMTP id 5b1f17b1804b1-48fe6de1dd2mr40573355e9.19.1778864314480;
        Fri, 15 May 2026 09:58:34 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5694fcasm64645815e9.5.2026.05.15.09.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:58:33 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 3/3] man/man7/landlock.7: Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Date: Fri, 15 May 2026 18:57:53 +0200
Message-ID: <20260515165753.8830-4-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260515165753.8830-1-gnoack3000@gmail.com>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 9918B555B4F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5517-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
which controls lookups of pathname UNIX domain sockets.  Restricts both
connect(2) and sendmsg(2) with an explicit recipient address to UNIX
sockets created outside the Landlock domain (same semantics as
LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.

Available since Linux 7.1 (Landlock ABI version 9).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man7/landlock.7 | 54 ++++++++++++++++++++++++++++++++++++---------
 1 file changed, 44 insertions(+), 10 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 60915bdd9728..55cd002d5789 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -135,6 +135,36 @@ whose implementations are safe and return the right error codes
 .BR FICLONERANGE ,
 .BR FIDEDUPERANGE )
 .RE
+.TP
+.BR LANDLOCK_ACCESS_FS_RESOLVE_UNIX "  (since Landlock ABI version 9)"
+Look up pathname UNIX
+domain sockets
+.RB ( unix (7)).
+On UNIX domain sockets,
+this restricts both calls to
+.BR connect (2)
+and
+.BR sendmsg (2)
+with an explicit recipient address.
+.IP
+This access right applies only to connections to UNIX server sockets
+which were created outside the newly created Landlock domain
+(e.g., from within a parent domain or from an unrestricted process).
+Newly created UNIX servers
+within the same Landlock domain
+continue to be accessible.
+In this regard,
+.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
+has the same semantics as the
+.BI LANDLOCK_SCOPE_ *
+flags.
+.IP
+If a resolution attempt is denied,
+the operation returns an
+.B EACCES
+error,
+in line with other filesystem access rights
+(but different to denials for abstract UNIX domain sockets).
 .P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
@@ -468,6 +498,8 @@ _	_	_
 \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
 _	_	_
 8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
+_	_	_
+9	7.1	LANDLOCK_ACCESS_FS_RESOLVE_UNIX
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
@@ -553,7 +585,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SYM |
         LANDLOCK_ACCESS_FS_REFER |
         LANDLOCK_ACCESS_FS_TRUNCATE |
-        LANDLOCK_ACCESS_FS_IOCTL_DEV;
+        LANDLOCK_ACCESS_FS_IOCTL_DEV |
+        LANDLOCK_ACCESS_FS_RESOLVE_UNIX;
 .EE
 .in
 .P
@@ -568,14 +601,15 @@ and only use the available subset of access rights:
  * numbers hardcoded to keep the example short.
  */
 __u64 landlock_fs_access_rights[] = {
-    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
-    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
-    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
-    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
+    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  // v1
+    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  // v2: add "refer"
+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v3: add "truncate"
+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  // v4: TCP support
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v5: add "ioctl_dev"
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v6: same
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v7: same
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  // v8: same
+    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  // v9: add "resolve_unix"
 };
 \&
 int abi = landlock_create_ruleset(NULL, 0,
@@ -588,7 +622,7 @@ if (abi == \-1) {
     perror("Unable to use Landlock");
     return;  /* Graceful fallback: Do nothing.  */
 }
-abi = MIN(abi, 8);
+abi = MIN(abi, 9);
 \&
 /* Only use the available rights in the ruleset.  */
 attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
-- 
2.54.0


