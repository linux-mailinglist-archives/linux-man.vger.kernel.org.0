Return-Path: <linux-man+bounces-4673-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AFDCF82A1
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19E1E30ABCD6
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF13533D6;
	Tue,  6 Jan 2026 11:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="adz9/Dym"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076B230FC04
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767700083; cv=none; b=QSwKqKdvZwLAwnmk4+JVYq6adXOtyxebcPTQTvmEWJ3qglbhL+dghAlNmMru7qTJsfpLXSyed1cwQ+ExPQnr8agP/mx1oPi5wmu7qEP5gIuvUv4uquFV4DfCzJxahw2Eg+mOu4RqG6+eVRBjJXbWYI/7YbX25amm6RbJgP9pDOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767700083; c=relaxed/simple;
	bh=6FGt2gwEoWB98kKGwUMMfAL6znrbDAvSVVhmyHd6AaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Mx79JyX/y8uQu/Jd6mRZe/C9LiaHT25O972LT6HgaJuO3iJsAINbntMY9Uap/NXBUhIyid9HFbA5dWMCG86tp5ayS2OhC17Uvfa1w9m70H0bz/w8CArjSpyitgTch/hTPScDZvUeHVRW2ZQNxmk5dzvKGP4Eac4UwmZcglr98vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=adz9/Dym; arc=none smtp.client-ip=209.85.128.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f67.google.com with SMTP id 5b1f17b1804b1-4775ae77516so9588285e9.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767700080; x=1768304880; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nq/fd8wnXT6a760HNO1f8HFrYoxWID6QQZGETz5uX7g=;
        b=adz9/DymL6BrGhtQHIiLDtuwRQ7uILbBpWwW7Q/x9NX58LO/4M53nXINUAERLYo8MT
         TZqBSh8a3I5Oe8rtNUWO1FMBNtINzLMufJ3AWN2n3RAcjsQDcUzHMEg/k6aRbtwo4Onr
         gEE5b9CPYHwJFN05+g9L4z303fVjxH25LDohGZmkmyA6eM5hNICygcJokCIbSF3UvVdV
         xk6wbza8UewtFsGB3bZWp+vH2GrZ/8Y+1SwNpnT5hAzHBmgbW3R5PPU+RZIvBXKvuCOE
         c6nM0sXbZ5t61S88IreAV8sDXgWS0Sc3eEIlZLMiqGNgQqhVNDnJY44rHKZ98jLaReum
         rJIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767700080; x=1768304880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nq/fd8wnXT6a760HNO1f8HFrYoxWID6QQZGETz5uX7g=;
        b=Qsi9GeyDmEJUXLHPw+/ke9k78mk3eVOCDz/EE8ccBoA3qKSD/CGmK9XTWYOhBUxZQr
         /TpMxQWPYDTjNewzH7smpQSSUqFTVnhttTyH1bsqaU5ivLWrAMlsGROwzExHx1BJJtte
         ALFP6ZcmyJv9L2CNNZadhq0k5ek2KBoWDtQ2n1h0H0T656zwy6J7PH4OQ2vdmWOG4PtC
         KjE6Yk78WEYvRUjuLiDgmsZWvXg2ofnWcmymSZpnrI3/4oB9WoD3Kg4Ca8Gp7q2pLFFE
         qKT1djH+KBADdvLFz1tNwbW0xmpeuHsa5ghI5lGcpM/5BM+qfTP4rAmSVaGrlpVxDNbn
         ARrQ==
X-Gm-Message-State: AOJu0YynaJuxowwsSU8c27KnW9rToOFwOGq7mgwBEjACQ+TX9Jvv9RRD
	vVoaffxHpzjnSR/KmrXw1KiCOq054vx7jNQY5M14vpYQpcQAOajYu9fR
X-Gm-Gg: AY/fxX6K1qLu2zGrmGEp9VLmT3C4TEawaTldVfz/0nFaTOktU6faaV75dK9n5eXoPya
	cgdJjOeITo8BcxMfE1r1MPvnL3V7sY3YLpKt3muziJple/0FSzGeRPr7HEvBpBb/kYDy+G1J9JN
	iYWR8CryqvUSJWFlH0l408OYhYYhgHNJhmCGLv3tJAbzsI0H3OyQBSFQ/iJcXICr+eUjdCPdbMX
	xiezUseD+pMHSLDmcdUicuuWow1zrpixoYAwYcbj5GoxTD2SnurPHvYnPBHzj2P9OMRpK2et0yD
	ioo70H/OsB2oPmqavKAIarJznmA8ko1M4I4J5ARsbMNRAbuvAtBjkrpT2gUZOMfapu7jG4Z6473
	gCmo3BuoCP8v8Mfun2QoNizF1Zq7Usp9L+tdkmdXvXx1sQLEWNgL8AOKX9mRCsB6d8atWn0E6mw
	p6lsvZ38Z/8rNnl68UnvCCncCDHPR26D+H8MUg
X-Google-Smtp-Source: AGHT+IG52BaX4KEQumAOaAmh4qbjFLTjhJs7WejrftoO4EJREEioFNk0ndjFyRP20tntJg0cJhCOjA==
X-Received: by 2002:a05:600c:4447:b0:477:b734:8c53 with SMTP id 5b1f17b1804b1-47d7f076913mr33286445e9.12.1767700080230;
        Tue, 06 Jan 2026 03:48:00 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm38310895e9.5.2026.01.06.03.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:47:59 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH 3/3] path_resolution.7: document read-only mounts, ACLs, and immutable files
Date: Tue,  6 Jan 2026 11:47:36 +0000
Message-ID: <20260106114736.105645-3-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106114736.105645-1-champbreed1@gmail.com>
References: <20260106114736.105645-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Address several FIXMEs by adding brief mentions of:
- EROFS errors on read-only filesystems.
- Access restrictions from filesystem ACLs.
- Access restrictions from immutable file attributes.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/sched_setattr.2   |  7 -------
 man/man7/path_resolution.7 | 18 +++++++++++++++---
 2 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index c8010b8fa..ba6eb9196 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -20,7 +20,6 @@ Standard C library
 .BI "int syscall(SYS_sched_getattr, pid_t " pid ", struct sched_attr *" attr ,
 .BI "            unsigned int " size ", unsigned int " flags );
 .fi
-.\" FIXME . Add feature test macro requirements
 .P
 .IR Note :
 glibc provides no wrappers for these system calls,
@@ -498,12 +497,6 @@ if the in-kernel
 structure was larger than the
 .I size
 passed by user space.
-.\" In Linux versions up to up 3.15,
-.\" FIXME . patch from Peter Zijlstra pending
-.\" .BR sched_setattr ()
-.\" allowed a negative
-.\" .I attr.sched_policy
-.\" value.
 .SH SEE ALSO
 .ad l
 .nh
diff --git a/man/man7/path_resolution.7 b/man/man7/path_resolution.7
index cdf21e1f7..78573f3c2 100644
--- a/man/man7/path_resolution.7
+++ b/man/man7/path_resolution.7
@@ -225,7 +225,12 @@ Similarly, Linux uses the fsgid ("filesystem group ID")
 instead of the effective group ID.
 See
 .BR setfsgid (2).
-.\" FIXME . say something about filesystem mounted read-only ?
+.P
+Even if a process has the necessary permissions to access or
+modify a file, an attempt to modify any part of the filesystem
+will fail with the error
+.B EROFS
+if the filesystem is currently mounted read-only.
 .SS Bypassing permission checks: superuser and capabilities
 On a traditional UNIX system, the superuser
 .RI ( root ,
@@ -256,8 +261,15 @@ The
 .B CAP_DAC_READ_SEARCH
 capability grants read and search permission
 on directories, and read permission on ordinary files.
-.\" FIXME . say something about immutable files
-.\" FIXME . say something about ACLs
+.P
+Beyond the standard permissions, access may also be restricted by
+filesystem-specific ACLs (Access Control Lists) or by
+immutable file attributes.
+See
+.BR acl (5)
+and
+.BR chattr (1)
+for more details.
 .SH SEE ALSO
 .BR readlink (2),
 .BR capabilities (7),
-- 
2.51.0


