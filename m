Return-Path: <linux-man+bounces-4994-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CoYCgxJemkp5AEAu9opvQ
	(envelope-from <linux-man+bounces-4994-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:36:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD04A6FE6
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 271473006111
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 17:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7072F3C37;
	Wed, 28 Jan 2026 17:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e4YrEuDE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF35028B4FA
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 17:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621769; cv=none; b=XD1TswlBHJeHfPOlk8VO8I5xTcMNB9LSvs2kA4OuRXD8gv0oT9IpadBpFtc/URdazWkH5wYViRsjUwdn5kBA1NVvSt0rsFUpeuu10oyGTz4woIFkuq8NubjPWNvmTU8kqRJaymin0UXoiFIZhBrE1v6+yiBAzSgxGMcFtKBUJKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621769; c=relaxed/simple;
	bh=QdY8Q64SqnhhOjC+IaAk2VdM74ap0++BIdY8ogVQveU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XRc70po7FWZSFY0kofSlEYdIDkWPIL6lcAo1V/bPrPUInGE+8y7pIQYwFUUk7XT4tf2oxYO2r5i8NQG67ePHlNja4IEgV0xKJX41U5eV7WchNeYTE3ku+fCWg2NRuhP9g3XiZcfCR/c8vvInAJuSrz//bTrjCSZYoqceiyR3qY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e4YrEuDE; arc=none smtp.client-ip=74.125.82.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-124566b6693so61992c88.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 09:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769621767; x=1770226567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1oCjMS8iFoW46tq1nj2yA1I0Js1MPiMie383Jow3zDc=;
        b=e4YrEuDEsZifq0i+bWLY+02u/uyruwodS6nHfZEuquQXS7qVDqHOsVyzPWlRM6pTED
         w75mGWTnPMLeRGnWJFMNlgNBRM3D0q9yimWKojatb/SYv5F4UC9IN+t+zBXL/4jl3pCv
         91CzPXNtiq7isNn1eSF8RYet3ySTHm6+s3+l46sbOV7t7leNIFAqGRUrUiy54AF9yP/G
         qLsF64RGIrmG5JrG49I9KL36pEjU6oowXg9caj0coJol1+FwiuNxg2HZpuK2YtXvY8nS
         26be5s+mCIfbLS/lM2KjIwnTLObYsoQyZrzGA3xjcLzascEKv05WJTs2b8+7SG0Y+AY2
         a3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769621767; x=1770226567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1oCjMS8iFoW46tq1nj2yA1I0Js1MPiMie383Jow3zDc=;
        b=njwCZGaoRsda4TdECBMaiEJKxcm+SKtRqsYOVbdP356jZSpj4yeCK3KsONrq2Mr9FE
         TK9WcxwhYGZi9hn8miZ3aowrk+iP18uHL7m7q6SKmWBQodMJJfRNIqqFagabbNOTsahx
         I+8UhWSBIlyEwnDBL3nPU6D90/Br3sVTrxrl3RJReKDpiJcsM7hNOE0cbpYrrDfDc/8r
         7m2FhRgNIngPZYqhGNMyU37vfBZxpRh9DEpSFKiEYracP9fNxcRFzoue4pz2HM3snbxT
         UpxdLiWoiVvIRyeRwqFT0BmzF4gkvQrozbKF4dZj8ektn89Pm+jHysjA69ydX9fnX85T
         TlyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJqM8ADxjFPTZ/cZk7NDgZON2Nw3vKchS8bFJRM7xWwNNQ6Z9izolvaPilWG9TjGc297dSk50x2a0=@vger.kernel.org
X-Gm-Message-State: AOJu0YyQPKdUs1NZuzG3z7+wz8s5fuAJkJuxcJLCqd8wFZ8a9P0aE2n1
	dgf6JGujVXcc+7/IOPkWtAohIUz5BrNuAvu3vSpq4ByE4UQorY9rpz45
X-Gm-Gg: AZuq6aL4+KhgB24k4dKodNcKNHsZrM5KdmcfLpHIvZaHbgMV6HJlIRBa9uD7tZJVC+K
	zmmG4qQwygpq/w0i9ji9kYEbReYVwSLZgt/qXzh3qJ5s1HDr16ap+u8zpynCdHQFTJZx+JImS47
	+d+Je6ph9XCAHjLQd8mzee0mMfg3ZZCEcHgXvDUzpi1fly7EOo8A9FwwgGTF3nLlkDv5C5o3jCe
	ioO1eS3sT/5+41jkUtXL5VR5HzhMK64OzLkvo9wRscqqAl/Gu3xYkZaKaxXlX57Q/DrvWE7eO/a
	G4Gzhb+nJ7DpyMZ3lVr9g4CAUoilUrpBf8yTY6cZu4Weh3c9qDRQuTe9ROHiR/GWJLHP79Fwcd1
	IfVkBAAwHGl+mDR10CZXAyLWsLVd0OAhvrZgO2B06IQo0FWkA+KhTfseK/ewSNsXRGqNCAXERsW
	l5cBnoXOwmy3zRxrDgBQfKmgcua/78ug==
X-Received: by 2002:a05:693c:809a:b0:2b7:a3a9:9c28 with SMTP id 5a478bee46e88-2b7a3a9a632mr1171369eec.20.1769621766592;
        Wed, 28 Jan 2026 09:36:06 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:dd54:61d0:1c69:1eda])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1addafesm3545813eec.25.2026.01.28.09.36.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 09:36:05 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org,
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: [PATCH v2 2/2] man/man3/timespec_get.3: Add ISO C23 time bases
Date: Wed, 28 Jan 2026 09:33:04 -0800
Message-ID: <e780865ea2ba7114da21fbc385c2861c1d694e7a.1769619403.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
References: <79f235d4b360689a290d525c36c3a06a36e5164a.1769619403.git.mark.hsj@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,linaro.org];
	TAGGED_FROM(0.00)[bounces-4994-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sourceware.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BDD04A6FE6
X-Rspamd-Action: no action

Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
glibc 2.43.[1]

[1] <https://sourceware.org/git/?p=glibc.git;a=commit;h=f28a11e43f40>

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
v2: Split into two patches, add time bases to History section

 man/man3/timespec_get.3 | 39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 1c89865d5..8c68d142d 100644
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
@@ -110,6 +144,9 @@ .SH HISTORY
 .TP
 .BR timespec_getres ()
 C23, glibc 2.34.
+.TP
+.BR TIME_MONOTONIC ", " TIME_ACTIVE ", " TIME_THREAD_ACTIVE
+C23, glibc 2.43.
 .SH SEE ALSO
 .BR clock_gettime (2),
 .BR clock_getres (2)
-- 
2.52.0


