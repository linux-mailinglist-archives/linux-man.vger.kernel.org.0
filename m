Return-Path: <linux-man+bounces-4669-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 582F1CF81D8
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB5FC300F9F1
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DF30332ECF;
	Tue,  6 Jan 2026 11:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L2l0Jp2i"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7674F332ED8
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767699573; cv=none; b=LmVA9kMx26qxMA7wLq5NRj6fEvmjhLJaxU1HTfa8r/ehUAohN9H1RsCEhx0EvNAGcNv0257YH7eYj2CWm5g0VFpXYqQUFcgN9Jr2+XHsovL55kcV0hbbd9T+iOnydA86p9aHlCs2jWPBopGtJUubz56Puy4J3xVvk5BECbkvxsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767699573; c=relaxed/simple;
	bh=dBKIqD8h51QypEZo/f7gB9GFK1j6T4Va98kV31IXLEg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UaIhJwzEqDjh1lMdsjIPIimyQexRMhNm3lU6lLTTp2NgkEhho84J1QFe1FOoskp5WBSQYXDa0kdhIxVhgxY6/+6GNishcySMMMSzDe5has1iJ6fJ1O9jaO2M8PvjWZxoZQCAH5skgWzT4OmIz654M7dbG4AKwaF8WxJu9ixztv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L2l0Jp2i; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477563e28a3so6057985e9.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767699570; x=1768304370; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=L2l0Jp2ie0gOdQRsOOnSa60J8ZwqnsGKEOjGUnQRnoU/DHkRn6VJnB212AsXadhs43
         Ymql01cRK817u0JBYV8QJUx2torFeU9R/ylPSzsu+dDIHhBkjzcU2ldJRv08+Lt7Eg4m
         dUTiu3l2Eh9PbMKdgQ+jdH71zA7lHLgEZ4/n9zjgUZV1+OiqLpaTKufnIRvHOXOC/UG2
         qmwbIdlMniJ6cMR0Ctk6ZZ4IK91+tJ04W6XQie/0uHO1p8IYTIbWUKXypsg8MHeMyj9y
         i/u3CGuEd3NxOAFcnCalyR9V3rpfHOLoBEj6798NsVNS5p84Y+rKKz4VNz45jq6d19LI
         HXzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767699570; x=1768304370;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9LhX9tUq2aRl76m84eTozLW4opGZv4Q4yJ+J8lNfiSY=;
        b=wIwzlczDZOm9lqDrwLN8Al0NGd250E70QbgcZ2RuQkD3JZq/d8K1JRDNsbkVIJDTR+
         LpTGza0tLqJkAERkRzGilP/dVFNJteOrAngnmpRZSumdXTVYsRbeqKf4/3JtxOaIr0Eh
         5u9mG+Oi3U3upje3vfIFrCBJQVF71RnWq4Mw+E6d3xo8W9otVnOm1Iz8N045x3ymNObE
         P8butvNpiG9z+N5CT9D/oyQ4jlV3U71s8FJBMrzaobJXOvpCl9o8HDwcxnGIiDXV3QY+
         /0xZVxjvnWDkZCc97j7PiPEE81SEQRgv/phbbCdSCgBDbhykXJAR6blDufGhiW6GGUrV
         PZKA==
X-Gm-Message-State: AOJu0Yylj0SfW3GBEMj1qzLuSSHAzcSPKjq/5B1nx+IKU5jJpx/V6ml6
	nbilBq7PWqkiVJioNmsPx7tY+vc2TNqzdvVAM/caMF3CwOJVky1dbmYIvBcc1TdZ
X-Gm-Gg: AY/fxX6dwpewp/kHUlWhURxipnkD9yBaF7AEYgCsU+fNeDdDEX1JcsrVGdW3NOIN8Ha
	nA1UyhWTupFuc2VFEEGSM7h+qvh+HiHSMMXyKoUetPBQUyJSMgA12pMa4V8NU6u58i/mdPt6f+T
	GkpPXsdcywSeMBSNAF/ewd7TlFxhF0b9M7Wr99S/PgG2xhHiAZtB0hUAALgSQAty84fac3eA6iJ
	KX3ppZB9rq03/HhYr4Cga+7c7kkt+9QfjvU+si8EodfF9JP13NeNInnm4AKA30Gy1bG8ZB97l5b
	/5s5VDwJGhBKdENutUZkxlpJrO9oacgWekeC7lBL/LVdwWo9nav2u41NSJbkdmWz8oQca87l7uV
	wYY/AuhX/jrZg71hj2eb7NFN0u/ToDDXLFemT63rbV6Zwxyk63AvbcJOOJMfEF2EuH0v9UGJWoG
	5W6+CLkg9XWr9J6GEhwVp3uyxnqBHxW2tSBGBul1iTgBlJrhk=
X-Google-Smtp-Source: AGHT+IH3J06TxA/eOR1Jb7v1N21isD051aRvJ+/Z0BaaFSvIqcZFryA7koCVDmX0dJJ36/RSstZemA==
X-Received: by 2002:a05:600c:45d5:b0:47b:deb9:163d with SMTP id 5b1f17b1804b1-47d7f4106c4mr28109145e9.7.1767699569639;
        Tue, 06 Jan 2026 03:39:29 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7faedd57sm15863895e9.5.2026.01.06.03.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:39:29 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 1/2] man2: update glibc wrapper status and clean up FIXMEs
Date: Tue,  6 Jan 2026 11:39:16 +0000
Message-ID: <20260106113916.96467-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update seccomp(2) to reflect that glibc 2.33 added a wrapper.
Update sched_setattr(2) to remove obsolete FIXME markers, as the
lack of a glibc wrapper is already correctly noted in the text.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man2/sched_setattr.2 | 5 +----
 man/man2/seccomp.2       | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/man/man2/sched_setattr.2 b/man/man2/sched_setattr.2
index 6d5718022..c8010b8fa 100644
--- a/man/man2/sched_setattr.2
+++ b/man/man2/sched_setattr.2
@@ -460,7 +460,6 @@ does not include all CPUs in the system
 Linux.
 .SH HISTORY
 Linux 3.14.
-.\" FIXME . Add glibc version
 .SH NOTES
 glibc does not provide wrappers for these system calls;
 call them using
@@ -482,9 +481,7 @@ provides a superset of the functionality of
 and (partially)
 .BR getpriority (2).
 .SH BUGS
-In Linux versions up to
-.\" FIXME . patch sent to Peter Zijlstra
-3.15,
+In Linux versions up to 3.15,
 .BR sched_setattr ()
 failed with the error
 .B EFAULT
diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 125794880..685ed4713 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -25,7 +25,7 @@ Standard C library
 .fi
 .P
 .IR Note :
-glibc provides no wrapper for
+Before glibc 2.33, glibc provided no wrapper for
 .BR seccomp (),
 necessitating the use of
 .BR syscall (2).
@@ -863,7 +863,7 @@ be determined.
 Linux.
 .SH HISTORY
 Linux 3.17.
-.\" FIXME . Add glibc version
+Glibc 2.33.
 .SH NOTES
 Rather than hand-coding seccomp filters as shown in the example below,
 you may prefer to employ the
-- 
2.51.0


