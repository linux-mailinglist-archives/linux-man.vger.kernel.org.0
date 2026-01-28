Return-Path: <linux-man+bounces-4973-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFWmJmOweWnnyQEAu9opvQ
	(envelope-from <linux-man+bounces-4973-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 07:44:51 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9F19D819
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 07:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEDFC300B9B8
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 06:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01CC8331212;
	Wed, 28 Jan 2026 06:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dv+bjLzD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF124A064
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769582686; cv=none; b=aS15PlWCx/wuyxF6T07GFdvSS4+ddK4i9tJrm0+4AEgJ8fCWSAwijya8vNC3Q2Yx2iLUWKwduFyHHVycHk1RwoEX0OXidmBHsWOENUPL9UW61xM3s6s8C+eFiXI5jZQoYGPhBTc5k3p/dBTOHV/7Co/XiNzNF3grcIXd0dL2dDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769582686; c=relaxed/simple;
	bh=8zJ5zBZHkqmMwFhdaUzg8RxfgUHLXF1rVb6i9wB0YBI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PPl4FxvYbObMiYYtJABxveHNfWq/MNGo5YykALoODMAW2FaaYUxegZmg+9qHyM8G9nW7EZmuafWVXjHOIRGNXdG490MRSR7/Nt7DVRvsqg96XES13UdPcJZMv3QqwteZ6GR86JmP/7R4rJmdqqzt/6M5r3Y2lVDJBIzIZ8YuRlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dv+bjLzD; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b71515d8adso6322282eec.1
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 22:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769582684; x=1770187484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Y5QUyL2KP52T0727w7B1QmkHm/wKCv62hpFK0m5BMzM=;
        b=dv+bjLzDMdCYnNYFvJz82f8xUNz1BxY2DxlrI5j/uvg0eGH3nYzm0go4rUwEGLyltq
         a9FIZdvp9Qu8uKp4lnKO9f38bhSzOrAJKunfdHFUTJW50VlxsMwHdYbTvcqpT3fVtH79
         qPD/e79rCk5xbvy5BRHwCIIldaiyMy0ZtGSuk3ekUUlW9ujNeF2/mURVkcPJ7MBG0N47
         vn6yVD4x9vP+w7WRNbtYScSBSZepx8KjJByFo464mWsVDBoV3LN8XmvbB1mG9sNxkHf6
         BPhbLj4uLWqsLNgMrTSEJb+LLjXenINwhwJOkJwU1UGzaQ4F3T9bRPap9lkHytOnfUiQ
         CTNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769582684; x=1770187484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y5QUyL2KP52T0727w7B1QmkHm/wKCv62hpFK0m5BMzM=;
        b=oNJFHYGXs1vebS4zZ2rAdunBErFCg08G1zik26tXUJbT3bvwSkH1EAmwLdEt1fFBST
         0wsdBwJrDHYxu3RumNX9+tNcuGQJv9OIwL75ZrN/AdAT2N7AVVGMjRjk3HX9D2dmqqVS
         JzNoSvqd80DCysS8hSYU8dFIHYoaZ5PDz9W83tS/ROwZEAu0KIlTDn14eN169/ZgUWMA
         4pi2zF6tceqf7hJkMeveNc7/oxZonWV7Bl2GQGWB8ZSIHGN2nDwECBp3RTg1RsORtqVw
         DdUOL5VkG5YGSMZo/2mhXSLzwBvixqIF+YBVl/h+XWSOfTky1cdErjZcdGa0xjs+axNS
         /pCg==
X-Forwarded-Encrypted: i=1; AJvYcCWHheFKzKIyaLd0z3Bfle/kH9eT/w2iCvNET/KmfbCuyK1EVDYFkObulvt6a45rUIquANix3bUYr7s=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4+9SrlgXiWJbSuT4dR12QdTY9RZHBTQwnNxUZRrpvspfe+zUN
	oPjp01ISeeQgdoCSH7I3ipxi8IWtf92bXvkufr2RN/6zqS3wxeNlxSNXzJS//A==
X-Gm-Gg: AZuq6aKuMN8X0pb3+g+74pEg4H8mmz/R8+JDt6I2QnJkS8qxWuPvKjQVgS9oBMZ6hY4
	dwEn2fVOU54mVcRqo6xRsILZtrvoq6QHVVp/0ayhgIfwlvo7d9lv2PPs/acCrKquGGr0cGGltdH
	wgSTaqkvaHETYT3kmXt0QB0IXzcSVd8QDcfhKyYP3Ii4GAiLBT47D6JJ6nyVDqXfIh9oxU7Btwn
	vuQ3szJphNA5GcM+PqTvECXcpuqWR5W1ezZftCnetXHrSLWZ7eYLAAdZ5SSVW2xZF9Fxa7BwvAk
	qLuuABrhma7mPEO9WhZd9GvuEUHKlVzZI2JJePgx6vdxEB1MVZ2L2OMoXqHPa8Zzem6pf9bgTB+
	38mI+YtEHwuE0cANwKwiQIBTwj2NII1Az2Ref4Ae8QXzJn/xoJOu8v/0EdnJjj6HGeN3WNQF3fo
	ji4/vsn90dcFPAjUMqrjLC8mXGY5ze
X-Received: by 2002:a05:7301:3d17:b0:2b0:4f8d:2f5 with SMTP id 5a478bee46e88-2b78d8682f2mr2280809eec.2.1769582683953;
        Tue, 27 Jan 2026 22:44:43 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:8c26:9671:d3ab:40b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a16d01c4sm1461161eec.2.2026.01.27.22.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 22:44:43 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org,
	Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: [PATCH] man/man3/timespec_get.3: Add ISO C23 time bases
Date: Tue, 27 Jan 2026 22:42:21 -0800
Message-ID: <1b8aea00296c530f2a3a79158a98d44a46a795e5.1769581372.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.52.0
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4973-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sourceware.org:url]
X-Rspamd-Queue-Id: 0A9F19D819
X-Rspamd-Action: no action

Document new time bases TIME_MONOTONIC, TIME_ACTIVE, and
TIME_THREAD_ACTIVE, introduced in ISO C23 and supported by
glibc 2.43.[1]

[1] <https://sourceware.org/git/?p=glibc.git;a=commit;h=f28a11e43f40>

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
 man/man3/timespec_get.3 | 64 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 57 insertions(+), 7 deletions(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 79bb82226..d2be50fd4 100644
--- a/man/man3/timespec_get.3
+++ b/man/man3/timespec_get.3
@@ -17,6 +17,25 @@ .SH SYNOPSIS
 .BI "int timespec_get(struct timespec *" res ", int " base );
 .BI "int timespec_getres(struct timespec *" tp ", int " base );
 .fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR timespec_get (),
+.BR TIME_UTC :
+.nf
+    _ISOC11_SOURCE
+.fi
+.P
+.BR timespec_getres (),
+.BR TIME_MONOTONIC ,
+.BR TIME_ACTIVE ,
+.BR TIME_THREAD_ACTIVE :
+.nf
+    _ISOC23_SOURCE
+.fi
 .SH DESCRIPTION
 The
 .BR timespec_get ()
@@ -39,16 +58,49 @@ .SH DESCRIPTION
 For a particular time base,
 the resolution is constant for the lifetime of the calling process.
 .P
+The time base
+.I base
+is one of the following:
+.TP
 .B TIME_UTC
-is always a supported time base,
-and is the only time base supported on Linux.
+A system-wide time base that measures real (i.e., wall-clock) time.
 The time and resolution in this time base
 are the same as those retrieved by
 .I clock_gettime(CLOCK_REALTIME,\~res)
 and
 .IR clock_getres(CLOCK_REALTIME,\~tp) ,
 respectively.
-Other systems may support additional time bases.
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
@@ -78,9 +130,9 @@ .SH ATTRIBUTES
 .SH STANDARDS
 .TP
 .BR timespec_get ()
-.TQ
+C23 (though ISO C doesn't specify the
 .B TIME_UTC
-C23 (though ISO C doesn't specify the time epoch),
+epoch),
 POSIX.1-2024.
 .TP
 .BR timespec_getres ()
@@ -88,8 +140,6 @@ .SH STANDARDS
 .SH HISTORY
 .TP
 .BR timespec_get ()
-.TQ
-.B TIME_UTC
 C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
 .TP
 .BR timespec_getres ()
-- 
2.52.0


