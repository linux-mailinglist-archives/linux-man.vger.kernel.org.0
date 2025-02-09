Return-Path: <linux-man+bounces-2371-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EE8A2DA2A
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 02:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD2167A2E17
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 01:26:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16FF243389;
	Sun,  9 Feb 2025 01:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QlGMwViL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5FF243379
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 01:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739064457; cv=none; b=djOXPOwxtKdpyT1rvmKdGcvLdeVyNvpL8BMMwyhtJCG7dlkk6s98DfR3V8mMTZjj8agr027ZHVjvNvh8bzITyHTzDS/87EZy/c+UBDQSTrS8oirxLQA0HOPsd0vtgn2CVTCacEk5IeoRsyltYIjpeQxZ0f9bwscZANRERtjxtpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739064457; c=relaxed/simple;
	bh=kRNOygLSIFKUx2WrOG9J1k2Mt8OO3FV7zd/1LPHOlU8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mG6kJvoWp8GECAaBBsDXpfcRN+H/seDIdLUvvH65IIEpi6Q1zc8UwCV7yVPmzB4VwlYAkY/2tc1YS8voQ+HP2E+RjE+Sjk9WJIa4gCYur9m0c8I1OET0WFsnZpQWbct+nfsNC4f48gVhuIIMyRzZhxqLtoO92vj/yjdT8r1ff88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QlGMwViL; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21f7f1e1194so6304795ad.2
        for <linux-man@vger.kernel.org>; Sat, 08 Feb 2025 17:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739064454; x=1739669254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=tLtVVqvx8JOtJbI7Z6jjgYTq1FF7ImaMcgXKrMChMbo=;
        b=QlGMwViLMNashvaJLtdx2t80y0fu6yudMAjIFvgOxZeYlvvpERJlWg/xhJkNZJ/U9x
         Vq0WfCrt3HTWkciJFXAR847gAQ/2E6MgoFwFFcpIJycdsad7VfqK8vI6fFupfqey/duv
         JKOV+SHZ2Npc/xYKNEKJ5nAYQwKeXvFqsbxlOpRkDGH5MuEcTJZOTGeqmOc47RaYlJXV
         88LGn94VxpxGk/n8CN1axhmbEcCi6y+iNvZG+sLYKxM7cAbUPpyBAwRAqoyhrfYx54O6
         AHVME3CZaAJmIZukTmmxcBOKesyq/3nG3j3p9Tk8nOyTy/fwyhm9sUHEi8xizQaxV0Zy
         wZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739064454; x=1739669254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tLtVVqvx8JOtJbI7Z6jjgYTq1FF7ImaMcgXKrMChMbo=;
        b=NGOjX/OR+MYkoajrvL0lAb50D37xc8LtQPWtXTqEEC2iyCW1AHA7m1459f/ID03WTn
         FuYqbHjpy7Me17OlPRprO6byEdrTWGoAPCefsICNFash9GbhiLlIm3zrZOGk369tsxO8
         tb2mOmY6PdO52VYLl4++B/NngTQwwFyXHjPUfLMaHN2wfja3m74YNYWghMKEsONpoTmA
         hBYuiDYUm7NaLFNcjlj9b6DVg3nqLeDhH6rycJHXvJaHDAFeBfLuzVOJAXkQv4e2ImJZ
         lsCz5VJ5U5SnAMb8QsDWlsDU2qUwKdwCyCSKp49CEgp4w5C+oyZEX2vpZFGmZ6dMdDSC
         1x2w==
X-Forwarded-Encrypted: i=1; AJvYcCXvl1Z7yhMuWu0ErG0PCHiHVheXatTo7p+j+41PTDlnnY5V4ChhGOa9wwNLLhdwf2nGL6Cs6YV8PJc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/IjHGuXH/tFUBKKKLhK1qstzuCYxTGLbXvPsEDz/l2qAB42jy
	eN1OGoRMm5BtWQ2eo02DTbNGvCED7CjtKEqCJ0B/KqD/Z5JXg8PM
X-Gm-Gg: ASbGncvi7HuS9j8GjEbpp/eQX49wM6B7d4GmrnwP8DJj4A6i+KhzMHSHrn1XKIDdIbr
	T6tmoudxQ7uYC1X18HlVZoIy4M12e4wElos57yYuNj311kcxeAtbfxUbN9g0t5GYJCyp2ytpvvV
	DhBxvBHKo2VdtKMqEBL6bNYOAwkQkB70zRKw1aR6Xu0/3EnSY4CwJZRamYvD7EGCN8yNyo6CQ1Y
	e1sOBrm3dO7MR+uey7909KtonQzmkgTT3yXsimkgCjZzqpXO56mhcmeYTv9L9HaN3I9dhIuRh/z
	EIaPBUmUx6PnI7KWsQXao9gJKkp3fxM/X40=
X-Google-Smtp-Source: AGHT+IGBAL2hYVAQPWDeZqw/IIebO4o250BuCK9DdazKgGh3f49NPsTOk7CPntlN18FelFCeHL0A5g==
X-Received: by 2002:a17:902:da81:b0:21f:6b08:40b with SMTP id d9443c01a7336-21f6b17582cmr70244505ad.27.1739064454037;
        Sat, 08 Feb 2025 17:27:34 -0800 (PST)
Received: from kira.gmail.com ([2601:646:9e01:94:b9ed:2803:99f7:1852])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3683dbaasm52332345ad.144.2025.02.08.17.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 17:27:33 -0800 (PST)
Sender: Mark Harris <markh.sj@gmail.com>
From: Mark Harris <mark.hsj@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: [PATCH v2] man/man3/timespec_get.3: Correct return value and clarify description
Date: Sat,  8 Feb 2025 17:24:14 -0800
Message-ID: <5f8dc5d2dc51f080a18de53e98610df43389b98b.1739063937.git.mark.hsj@gmail.com>
X-Mailer: git-send-email 2.48.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
  Clarify that it is the time and resolution that are the same.
- The ERRORS section is removed, because it states only what is true
  for every function that does not state otherwise (i.e., errno might
  be affected by underlying system calls).

Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getres.3: Add page and link page")
Cc: наб <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Mark Harris <mark.hsj@gmail.com>
---
 man/man3/timespec_get.3 | 63 ++++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 26 deletions(-)

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
index 8c8d45d33..ecac06d99 100644
--- a/man/man3/timespec_get.3
+++ b/man/man3/timespec_get.3
@@ -18,37 +18,48 @@ .SH SYNOPSIS
 .BI "int timespec_getres(struct timespec *" tp ", int " base );
 .fi
 .SH DESCRIPTION
-.I timespec_get(tp, TIME_UTC)
-is defined as
-.IR "clock_gettime(CLOCK_REALTIME, tp)" .
+The
+.BR timespec_get ()
+function stores the current time, based on the specified time base, in the
+.BR timespec (3type)
+structure pointed to by
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
+.BR timespec (3type)
+structure pointed to by
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
+The time and resolution in this time base
+are the same as those retrieved by
+.I clock_gettime(CLOCK_REALTIME,\~res)
+and
+.IR "clock_getres(CLOCK_REALTIME,\~tp)" ,
+respectively.
+Other systems may support additional time bases.
 .SH RETURN VALUE
-On success,
+.BR timespec_get ()
+returns the nonzero
+.I base
+if it is a supported time base
+and the current time was successfully retrieved, or 0 otherwise.
+.P
+.BR timespec_getres ()
+returns the nonzero
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
+if it is a supported time base, or 0 otherwise.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).

Range-diff against v1:
1:  c6990f9c9 ! 1:  5f8dc5d2d man/man3/timespec_get.3: Correct return value and clarify description
    @@ Commit message
           it repeatedly) (C23 7.29.2.7).
         - Calls to these functions are not technically equivalent to any
           clock_* function call; at least the return value will be different.
    +      Clarify that it is the time and resolution that are the same.
         - The ERRORS section is removed, because it states only what is true
           for every function that does not state otherwise (i.e., errno might
           be affected by underlying system calls).
     
    +    Fixes: 7bda5119fe5e (2024-09-08; "timespec_get.3, timespec_getres.3: Add page and link page")
    +    Cc: наб <nabijaczleweli@nabijaczleweli.xyz>
         Signed-off-by: Mark Harris <mark.hsj@gmail.com>
     
      ## man/man3/timespec_get.3 ##
    @@ man/man3/timespec_get.3: .SH SYNOPSIS
     +The
     +.BR timespec_get ()
     +function stores the current time, based on the specified time base, in the
    -+.I struct timespec
    -+pointed to by
    ++.BR timespec (3type)
    ++structure pointed to by
     +.IR res .
      .P
     -.I timespec_getres(res, TIME_UTC)
    @@ man/man3/timespec_get.3: .SH SYNOPSIS
     +function stores the resolution of times retrieved by
     +.BR timespec_get ()
     +with the specified time base in the
    -+.I struct timespec
    -+pointed to by
    ++.BR timespec (3type)
    ++structure pointed to by
     +.IR tp ,
     +if
     +.I tp
    @@ man/man3/timespec_get.3: .SH SYNOPSIS
     -Some other systems support different time bases.
     +is always a supported time base,
     +and is the only time base supported on Linux.
    -+The time and resolution in this time base is the same as that retrieved by
    -+.I clock_gettime(CLOCK_REALTIME, res)
    ++The time and resolution in this time base
    ++are the same as those retrieved by
    ++.I clock_gettime(CLOCK_REALTIME,\~res)
     +and
    -+.IR "clock_getres(CLOCK_REALTIME, tp)" ,
    ++.IR "clock_getres(CLOCK_REALTIME,\~tp)" ,
     +respectively.
     +Other systems may support additional time bases.
      .SH RETURN VALUE
     -On success,
     +.BR timespec_get ()
    -+returns the nonzero value
    ++returns the nonzero
     +.I base
    -+if it represents a supported time base
    ++if it is a supported time base
     +and the current time was successfully retrieved, or 0 otherwise.
     +.P
     +.BR timespec_getres ()
    -+returns the nonzero value
    ++returns the nonzero
      .I base
     -is returned.
     -On error,
    @@ man/man3/timespec_get.3: .SH SYNOPSIS
     -Neither C nor POSIX specify this,
     -but they don't really indicate it shouldn't happen, either.
     -Don't rely on this.
    -+if it represents a supported time base, or 0 otherwise.
    ++if it is a supported time base, or 0 otherwise.
      .SH ATTRIBUTES
      For an explanation of the terms used in this section, see
      .BR attributes (7).
-- 
2.48.0


