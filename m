Return-Path: <linux-man+bounces-5009-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPISD+iSe2nOGAIAu9opvQ
	(envelope-from <linux-man+bounces-5009-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 18:03:36 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1955B2997
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 18:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EA8130252BA
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E403446B0;
	Thu, 29 Jan 2026 16:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i78pPjkr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dl1-f52.google.com (mail-dl1-f52.google.com [74.125.82.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B8F2EFDBF
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 16:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705934; cv=none; b=ddZEavEneIKIQ+5hgsOaTXVv9VF3kxJXeh4sBR0OUL2MOHcLilBLpzM2/ybtZDFhTT53DLHGwleULWXsiy55OaMHVtBg9pOLKaOTpNyzwRBjLZutyASPX8n0h9adQzrtm+j+AbRBfj96ZCvLpyaSTHtAFpti5dP1LTCXxW3KF7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705934; c=relaxed/simple;
	bh=u8dFyDK1m9nn14AygflR4aHoR2GBY9DdUA4YEi1X/rc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IGKautqciswzuEtgiwuEFEGlrwJKNhimJEDhoWu33VI/Uh+iw0EaJcnsl6SfK52Im2X1f65K/gTQa5TesXSX7LuPb/npHEnr1O1uzAy7iuLTKjvxX3oWgl2INIe6ZtpaKtiiNVXMJoPgIdHEXru+ul85RABZMlRyf4bTp746pF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i78pPjkr; arc=none smtp.client-ip=74.125.82.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f52.google.com with SMTP id a92af1059eb24-124afd03fd1so1802132c88.0
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 08:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769705932; x=1770310732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDRPdqfcX6Vxs8h25EbzQcd70SYFt4TcReqSeguRo7M=;
        b=i78pPjkrhV5zwy0kLaGE9DUJY1NlXa/3VbeZUlPH+MiaIBPuvt1Af+PaKYI+GjvfsU
         KCyzkmwEww/9naiQaQgbXtndcGxFnQKWQTyPuSXjuqbjz+6JCp9gU19WghSHfhLHjk+G
         sntXmX0qR95ldkMoTPFqRvWOEkVkKqkrp8PGdvJlxPgY48ErHvokC7jhgAmb49s7ePOy
         4IBrZdfcM8SsrX08LFn1XyhGCTflnko7w3P1YUmOLpFJ1Ed8OFI51bhbsYvj6B6fY5dE
         KfRSxVbci8bF+sz46WCRWZ/fQE8dJhJX8ANngO6bNzeb5I1NzJxsaznRb5OSrVuV86pn
         arpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769705932; x=1770310732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KDRPdqfcX6Vxs8h25EbzQcd70SYFt4TcReqSeguRo7M=;
        b=gAPryCykZN6FvfLsHNTqlyscm/IHK4UvjTg6FUQi4Hw4ChvaaRURx0MUI1+Ah+Fe3a
         ccglf/i0tYOknEO1q2t/AMWQ9NBw2MbRaCXFET53INxZYOmXIvOTcdTXCQr76vYI8hVY
         zFwh49PxTgSPVhRDi6TUpXXR4aQiXZU/+NoEJimmuO/AacIo58aFhSJkUhQWnE+Udn/6
         mPjcvXRR3AErq4rC/c5gAWfw+/+k9pIz04kp4uQp4mYgFvGaOPHi+LvZg4j6FTxBZAEg
         jnRcvYK+trR+FK/Ty9NqwKu6nRjhpi7CUHD4zjNiL3D8Q4lZ822jCOw1AZGGpsXto6kA
         6lWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH12rBXhHmLEbixes6ElRg0MTQ/vp2Y+WvSK+BfMQFM5BVul7BMHY9R1CDTLoGgssWcVkA1zQg18Q=@vger.kernel.org
X-Gm-Message-State: AOJu0YxbVCxqsNsNe47scEcV/zIUDlM0TRCsIJgNKFKjt6NnLCP2EXmM
	FG0aKzrDqoyyID4FzTM1h3FJStMTFBPQDPR8xPtJBN3ZzZj/uCE5GnHl
X-Gm-Gg: AZuq6aJjDVy1vWtQstNDRi+bXPybA0Cjh3ufTd0aFhLteD/cQCXpEMYn7R/bFtmsz2D
	EdLjpiJrInGOx2UXFQdvFeUS8l9QMziaA8cCtrMXG8jOgc4rrkfRBd8qC1dGU4g9KuqkcD6QpxX
	//YzJ+0nM5VYp+ZzyzhdC42p/gnroXr9rOedNsNqD8Wphowm3LpWzfQKzslYDiQxrW8XzHHpqGo
	RH/pPvOtCrZItcavf96Wtugcp9e1WYCQimKWeJUm6/Kx/VnYv5FwnUrAa6Bn3QxLqoPk9xGcb0H
	IRyauMLclEHE2hkvxooki8UA6LHIwhEd2s1ZnyPKLZZvD4e76wPcT2t/uqm5CcF+9EGhkAESvsH
	V2LdZeQEPefQQNlMvxSH27Qc/rY7faW7GUyY4BjX8kav9UFOBHj83JDPwyio5i/1f/QdMJm74yl
	H6n+P/3pucq3FLPfkzsnWIAfLm0Ps=
X-Received: by 2002:a05:7022:602:b0:123:2d00:1668 with SMTP id a92af1059eb24-125c10105a6mr69149c88.49.1769705931822;
        Thu, 29 Jan 2026 08:58:51 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:c9b:f7d:bf05:d23e])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16ee7d3sm7422015eec.11.2026.01.29.08.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 08:58:51 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org,
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: [PATCH v3 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
Date: Thu, 29 Jan 2026 08:52:24 -0800
Message-ID: <1955d9507d6ab4e482f92a4d7717872c98f39f8a.1769705123.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
References: <ec8dfdc495cb8d58e945b370658c6945cb424327.1769705123.git.mark.hsj@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,linaro.org];
	TAGGED_FROM(0.00)[bounces-5009-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: D1955B2997
X-Rspamd-Action: no action

Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
glibc 2.43.[1]

[1] <https://sourceware.org/git/?p=glibc.git;a=commit;h=f28a11e43f40>

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
v3: Use .TQ for time bases in STANDARDS and HISTORY
v2: Split into two patches, add time bases to History section

 man/man3/timespec_get.3 | 49 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 67da4858c..4f0fe1a96 100644
--- a/man/man3/timespec_get.3
+++ b/man/man3/timespec_get.3
@@ -29,7 +29,10 @@ .SH SYNOPSIS
     _ISOC11_SOURCE
 .fi
 .P
-.BR timespec_getres ():
+.BR timespec_getres (),
+.BR TIME_MONOTONIC ,
+.BR TIME_ACTIVE ,
+.BR TIME_THREAD_ACTIVE :
 .nf
     _ISOC23_SOURCE
 .fi
@@ -67,6 +70,37 @@ .SH DESCRIPTION
 and
 .IR clock_getres(CLOCK_REALTIME,\~tp) ,
 respectively.
+.TP
+.BR TIME_MONOTONIC " (since glibc 2.43)"
+A time base that measures time since an unspecified point in the past,
+where the time within a process will not decrease even if the
+system's real time clock is set or adjusted.
+The time and resolution in this time base
+are the same as those retrieved by
+.I clock_gettime(CLOCK_MONOTONIC,\~res)
+and
+.IR clock_getres(CLOCK_MONOTONIC,\~tp) ,
+respectively.
+.TP
+.BR TIME_ACTIVE " (since glibc 2.43)"
+A process-specific time base that measures CPU time consumed by
+the calling process.
+The time and resolution in this time base
+are the same as those retrieved by
+.I clock_gettime(CLOCK_PROCESS_CPUTIME_ID,\~res)
+and
+.IR clock_getres(CLOCK_PROCESS_CPUTIME_ID,\~tp) ,
+respectively.
+.TP
+.BR TIME_THREAD_ACTIVE " (since glibc 2.43)"
+A thread-specific time base that measures CPU time consumed by
+the calling thread.
+The time and resolution in this time base
+are the same as those retrieved by
+.I clock_gettime(CLOCK_THREAD_CPUTIME_ID,\~res)
+and
+.IR clock_getres(CLOCK_THREAD_CPUTIME_ID,\~tp) ,
+respectively.
 .SH RETURN VALUE
 .BR timespec_get ()
 returns the nonzero
@@ -103,6 +137,12 @@ .SH STANDARDS
 POSIX.1-2024.
 .TP
 .BR timespec_getres ()
+.TQ
+.B TIME_MONOTONIC
+.TQ
+.B TIME_ACTIVE
+.TQ
+.B TIME_THREAD_ACTIVE
 C23.
 .SH HISTORY
 .TP
@@ -113,6 +153,13 @@ .SH HISTORY
 .TP
 .BR timespec_getres ()
 C23, glibc 2.34.
+.TP
+.B TIME_MONOTONIC
+.TQ
+.B TIME_ACTIVE
+.TQ
+.B TIME_THREAD_ACTIVE
+C23, glibc 2.43.
 .SH SEE ALSO
 .BR clock_gettime (2),
 .BR clock_getres (2)
-- 
2.52.0


