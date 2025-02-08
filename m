Return-Path: <linux-man+bounces-2359-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA04FA2D8B4
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 21:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E51261886279
	for <lists+linux-man@lfdr.de>; Sat,  8 Feb 2025 20:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9481922F8;
	Sat,  8 Feb 2025 20:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vpq8DtPI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DE5243946
	for <linux-man@vger.kernel.org>; Sat,  8 Feb 2025 20:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739047430; cv=none; b=J7MPbv1fev4lfhT9yTGilts7U2AducZ5g52ElfZSkUFxo2nsxvofH8zS4xQhv4nCEZNznNEj4rD/yOG2arrFgoXxKgckHjQnUlAHAxFokEiTT4NTNYfSM9SezsUEKDoP2hPKwlUv+xwNX1qkXZ1ctUQUzUbl21wP+j3/mUhFKCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739047430; c=relaxed/simple;
	bh=MAMeo9psevvmDQMy1FIqaT0ZZMV/KMQWmKBOw5Yp5DI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jrfYeh6jH2iOi7WJWM5Tviyx3E2sGrPYmVySXzL4hV6m+JgXyWkUWNQ5xryKoXu8TF5SyscqVoo1Yc/owg4/ZM48ALBYuJJ3vLpNdHIwx27vxWzi6pNYyiDEOBkPv3QhZ2tcKqHTMqjz6DKE9BgejyHKnPl3le30lAC6a3HrVrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vpq8DtPI; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21f7f1e1194so3664135ad.2
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 12:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739047429; x=1739652229; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=frwx5m1ot6z1RPlQQ2vUxxXO3onC6wMdBlhebKoyliY=;
        b=Vpq8DtPIRCfu7khFEO3FsFhH0rYjWHE9BjMIhloSYBOW1e7j8qtE6NpCWmEzr80E+2
         JS6cAJrrJDHzBBeoRFMvJ2k25CFVwm7p3OT24ANv/ZBFhLr/dX0Y1VxJ91sUnO17gP0R
         YaC7345Bg6PX5IayBn9uFc5t/eMWLXDgWS5DQNExkVGin5lrEkFHOw3G5l2GYafwy96L
         RJ4FjptnfmSsHONndn5SZs2+H57yMGTE20xpyHvFJiGSTbp2QLB4JMwNS0dJNmUqZtB0
         4XmhT4BclLp2GrZp/tfBjLUxmI295KhVx7LHzXdsfTnNgz/2ayiH2I7IXiv52dXpiDll
         xdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739047429; x=1739652229;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=frwx5m1ot6z1RPlQQ2vUxxXO3onC6wMdBlhebKoyliY=;
        b=ZoJwCVJzOxIRPEno/Tgs+sWShBWE+m8roAvy8E42OT0uTdsB9ndA9lM0oaEULXea+2
         gH3R4Z6r0W8MO8lDB8Zm6G7wmHp2rzz53dpnIvdbgOUPRe2qOYNSEJ4s88iqB3Vy40qI
         AjW8mS9TJHLObnEz1rVG8nz5CeVx9dRky8odc/U7sZQiWcjG4bSSdwR5JnRQ74w4G0e9
         pKUcJb352dJ5jZVPNTME2S3puGyV76xcML0MZg04JqTwbI1v98nErnzneJb8VTNJaBST
         Z+U7gy8C02belmj+O7O3mzPwP0ZG0uF/dVDQ8eyhQq34QlMSAWJydSv5V9FN2YTrf4xV
         iAUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsNw6jnw6ishjW7l2b4z3q2QSkG+CjfQsVx452AFofhaf2NswXg1B/Mz3DwlvHxa3tvOkltxF0pcg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzMtnG8OZ1VGiJN9W1R7aqH5YX9agvOUfp7nA8X0JdzhVts7Zve
	r8py/Pq2PzUaq4yyFlrhme+CbJXbqZ0k5yKyHwjBgiNhUuxXFU2m
X-Gm-Gg: ASbGncullbrr1t35GG43s/ZUFl3nB3FVVNabXXa9mH6bGaL9CdwJ/HC3R6hbSCcbGkF
	n/0/9c1d7KCDF++9s4vUQY4Ajx6fQSZjo8YOf4l/i+F4Q5tU8f0HfPHT8LCTkS4APTN/9H/bbSf
	jjmOxLNMoX96B/k9oAwm80fxO/9AuFSWaL0GnIZfuSF3PW+fPSD/oLwvnbvIPWe8twGehppyqPs
	fpi1GkPMX+b1wgGkG36cJCxcE2/K8PguZc9Sy18Uh8EqxeycVAa05D4L5uzzJdiguIBnhRqfV7w
	BcpyNp/jArDUPFfIWVGTNwaIfDUqHars/uE=
X-Google-Smtp-Source: AGHT+IHQPrhbNlzyTvAf2xFnqJ8KfvBXxAUj1/V9MoF//xTODhXpW4yo/OwAQPGcxULiu08xrwqasg==
X-Received: by 2002:a05:6a20:9e46:b0:1e0:d796:b079 with SMTP id adf61e73a8af0-1ee03a474acmr12606072637.17.1739047428509;
        Sat, 08 Feb 2025 12:43:48 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:b9ed:2803:99f7:1852])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73079facc59sm1236154b3a.123.2025.02.08.12.43.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 12:43:48 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man3/timespec_get.3: Correct return value and clarify description
Date: Sat,  8 Feb 2025 12:41:42 -0800
Message-ID: <c6990f9c922bd8b842589c700efde8f7a00ab68b.1739046395.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.48.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- 0, not -1, is returned for an unsupported time base or error
  (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74358).
- Clarify that any supported value of base is always nonzero (i.e.,
  there is no overlap between the two return value cases that may
  require errno or some other source to disambiguate)
  (C23 7.29.2.6, 7.29.2.7; POSIX.1-2024 line 74357).
- Clarify that timespec_getres(NULL, base) is a valid call to check
  whether the specified time base is supported (C23 7.29.2.7).
- Clarify that the resolution for a particular time base is constant
  for the lifetime of the process (i.e., there is no need to retrieve
  it repeatedly) (C23 7.29.2.7).
- Calls to these functions are not technically equivalent to any
  clock_* function call; at least the return value will be different.
- The ERRORS section is removed, because it states only what is true
  for every function that does not state otherwise (i.e., errno might
  be affected by underlying system calls).

Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
 man/man3/timespec_get.3 | 62 ++++++++++++++++++++++++-----------------
 1 file changed, 36 insertions(+), 26 deletions(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 8c8d45d33..7993e138a 100644
--- a/man/man3/timespec_get.3
+++ b/man/man3/timespec_get.3
@@ -18,37 +18,47 @@ .SH SYNOPSIS
 .BI "int timespec_getres(struct timespec *" tp ", int " base );
 .fi
 .SH DESCRIPTION
-.I timespec_get(tp, TIME_UTC)
-is defined as
-.IR "clock_gettime(CLOCK_REALTIME, tp)" .
+The
+.BR timespec_get ()
+function stores the current time, based on the specified time base, in the
+.I struct timespec
+pointed to by
+.IR res .
 .P
-.I timespec_getres(res, TIME_UTC)
-is equivalent to
-.IR "clock_getres(CLOCK_REALTIME, res)" .
+The
+.BR timespec_getres ()
+function stores the resolution of times retrieved by
+.BR timespec_get ()
+with the specified time base in the
+.I struct timespec
+pointed to by
+.IR tp ,
+if
+.I tp
+is non-NULL.
+For a particular time base,
+the resolution is constant for the lifetime of the calling process.
 .P
 .B TIME_UTC
-is universally guaranteed to be a valid
-.IR base ,
-and is the only one supported under Linux.
-Some other systems support different time bases.
+is always a supported time base,
+and is the only time base supported on Linux.
+The time and resolution in this time base is the same as that retrieved by
+.I clock_gettime(CLOCK_REALTIME, res)
+and
+.IR "clock_getres(CLOCK_REALTIME, tp)" ,
+respectively.
+Other systems may support additional time bases.
 .SH RETURN VALUE
-On success,
+.BR timespec_get ()
+returns the nonzero value
+.I base
+if it represents a supported time base
+and the current time was successfully retrieved, or 0 otherwise.
+.P
+.BR timespec_getres ()
+returns the nonzero value
 .I base
-is returned.
-On error,
-\-1 is returned.
-.SH ERRORS
-Some C libraries
-.I may
-set
-.I errno
-to the same value as would be set by
-.BR clock_gettime (2)
-or
-.BR clock_getres (2).
-Neither C nor POSIX specify this,
-but they don't really indicate it shouldn't happen, either.
-Don't rely on this.
+if it represents a supported time base, or 0 otherwise.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.48.0


