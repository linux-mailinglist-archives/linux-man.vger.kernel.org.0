Return-Path: <linux-man+bounces-4242-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C914CC288D1
	for <lists+linux-man@lfdr.de>; Sun, 02 Nov 2025 01:03:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 803FB3ACF34
	for <lists+linux-man@lfdr.de>; Sun,  2 Nov 2025 00:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B68DE17D2;
	Sun,  2 Nov 2025 00:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D/QJypol"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED08110E0
	for <linux-man@vger.kernel.org>; Sun,  2 Nov 2025 00:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762041822; cv=none; b=mUuuv6MR4QXUHjTD7o0LsqX5zyimTCVjzLz4uGsnJjKyXGx0lRYIT3ID3kDNcWBns8dKR90uSavQDbJGpp0kPOIM/FN0xKtQefFum8ugl81WaYiVOV5G7rL21bRWFwlKDK9f6jQPNPy8J9KzfsoEJ0W5NSEaaoz1ObC+twEQAwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762041822; c=relaxed/simple;
	bh=46dI8HlBWIiDAUnsugZXFUmoCzOSumHATXE379htpc0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bxYZrYKZ1WSoTCnlrYaqR5V1ddr3Ev0mKjBCgaj2pxbbkDrXX2bb8tXeoh+x/VWz0hX5FGZwaJ+NUHD1MNvOT77pmFL5nngUomZtmhw3IXOVpR2G6/uFk0sHtnMDIvlUErrXar5mWKBug6f0dwhCQ71+jBXImhaytObJuNWjY4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D/QJypol; arc=none smtp.client-ip=209.85.219.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f67.google.com with SMTP id 6a1803df08f44-8804a4235edso5968056d6.1
        for <linux-man@vger.kernel.org>; Sat, 01 Nov 2025 17:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762041820; x=1762646620; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qTC/27hwdbcr+kmt5XP61JnWsv5bKnIN2M8tojqJLN4=;
        b=D/QJypoleYQO/gwLDRLFpG7vzKVltWosDCAgR/xptLHiUjZ2jS7tybKTUlxHy6d6EP
         z6eOMTP4Mc6cLuFZEyHh5ADqwJ4z+UBQEsxp/WcwVA0BquSQMhQ6YeGSYRpIARopxhiS
         QmCwvfXzXRtTYZg0P56FNZ7Xxlee6mtMHJZMGx31GhXJf7gQU9u70eNaaJJoTp8UTStI
         +rWx5E9Q9tgxtpDXgJjLe8khf0FWRJRQXUM3cLdpVuok/vu3M9wZf+vS9pUHW7IRTBI2
         141WWeUjR0/Qkf9q38emiLFIIphIIutjffL9f/EbZQX/dbw0K4q05lvt/1SIpo9WIHwX
         NUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762041820; x=1762646620;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qTC/27hwdbcr+kmt5XP61JnWsv5bKnIN2M8tojqJLN4=;
        b=ualh3PTP4fdFaFboX04oAnYsSVhVoqAmIojuDIj4InJA0HN5NKDoizTHuUCntxI7EA
         SP6sbhdxaKIezTa20vLBGJWIvNJA9j43X/mZEqErT+jCJ+KPpWHWMkXP/M2VIgrXiwAF
         2WZrEsv5R5mBsGnYkapVsaZswOBze+cCZbppS7OAhdodKhH0HvdqIfLlh2XIwBOc/aB7
         tqNmmnYMgVX4Bcfp+mJ84ZrDUUmRftCezbAGAWUj32IOoI4MN128VN76wJbFpueZzXyo
         HBZphWOMJkeaoTQmBRT63Oi0HMgUSvcqjo8N8gCmMYNDG7uDv030NBHn6hxtGBj4k8F6
         +Qww==
X-Gm-Message-State: AOJu0YzJgPeSPrUz7Cun4LDYcqy/Vq9CrX5P2BHpBZx6T4ateosmqasX
	qOVGJionlFFNujioYOKpRN/e70XSe5AFjOjSXk5Dx9n5p4maZuQtgcqFMsz4FBpJrgD9NtJZ
X-Gm-Gg: ASbGnctzhNNEUpO2JLeEcFb+8vaStHqkk+Ck2pUUbFy0q18J6dm2UhtX1QCXYot0sPq
	Exokf4BWIP16EqGKMYIjI+0AHWhJvauWyHN92/gQmd86suRighhosGOXPfTAjqCcu+cjSn1qe27
	X07jn+6a4pqyPk3GOI0qTbir7C+lc6r4u2lw3n0DjrDR571akFS+KNY47xlcg84XzIU37nq5GxN
	XiX8xjhMmLbAjg+yh0WKIJ1jPfms31xpxMsZRU8R0DU6G26aXA/Sj7mTlK+Q/3f9BmMtLTStrLO
	J3vvcnvPmMwO5cO9gTygurBlnkUaufYAtmNeO1RbEbDHWzr3To90jLvc2aESXthJKfhmk7nUL7c
	DYiwxiPaW33nZO78tsMF0e+A/GBZR81ebz1qjnaL/5iPelQVOQhOMzNkoKkDj8G42CNJfqLy1Tf
	jOQ71hlhhPOlXKYtWLtWxpBfo4hRh41Kt2meXHcNj2wCkLLOpGLUGHFvMUw/0yKDvHj+144g==
X-Google-Smtp-Source: AGHT+IE4gxruA4np13u1k/cryo1STFZkJjiZIqX6OrYduRg2NV+xnFbby3+7t/PvdulVGXCw2OljJw==
X-Received: by 2002:a05:6214:1d06:b0:880:2cec:3f6d with SMTP id 6a1803df08f44-8802f521e09mr117269466d6.60.1762041819696;
        Sat, 01 Nov 2025 17:03:39 -0700 (PDT)
Received: from secra.localdomain (pool-71-255-240-10.washdc.fios.verizon.net. [71.255.240.10])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8803631eb02sm36909536d6.40.2025.11.01.17.03.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Nov 2025 17:03:39 -0700 (PDT)
Received: from secra.localdomain (localhost [127.0.0.1])
	by secra.localdomain (8.18.1/8.18.1) with ESMTP id 5A203c0f155604;
	Sat, 1 Nov 2025 20:03:39 -0400
Received: (from secra@localhost)
	by secra.localdomain (8.18.1/8.18.1/Submit) id 5A203cNI155603;
	Sat, 1 Nov 2025 20:03:38 -0400
From: Wes Gibbs <wg21908@gmail.com>
To: linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, colomar.alejandro@gmail.com, bigeasy@linutronix.de,
        Wes Gibbs <wg21908@gmail.com>
Subject: [PATCH v3] Subject: [PATCH v3] copy_file_range.2: glibc no longer provides fallback after 2.30
Date: Sat,  1 Nov 2025 20:03:30 -0400
Message-ID: <20251102000330.155591-1-wg21908@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

v3:
- Modified Signed-off, Wes Gibbs <wg21908@gmail.com> is the author
- Clarify that glibc wrapper was introduced in 2.27
- Fixed commit link and ensured semantic newlines
- Updated to correct URL in comment to avoid 404 - Unknown commit object

Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=220489
Author: Wes Gibbs <wg21908@gmail.com>
Signed-off-by: Wes Gibbs <wg21908@gmail.com>
---
 man/man2/copy_file_range.2 | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index e9e9e9945..e1e36dd5e 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -202,10 +202,16 @@ that was also backported to earlier stable kernels.
 .SH STANDARDS
 Linux, GNU.
 .SH HISTORY
-Linux 4.5,
-but glibc 2.27 provides a user-space
-emulation when it is not available.
+Linux 4.5.
+Before glibc 2.30, starting with glibc 2.27, the glibc wrapper function
+provided a user-space fallback implementation when the kernel did not
+implement this system call.
+Since glibc 2.30, that fallback has been removed; the function now
+fails with ENOSYS if the kernel lacks support for .BR copy_file_range ().
+.\" Fallback introduced in glibc 2.27:
 .\" https://sourceware.org/git/?p=glibc.git;a=commit;f=posix/unistd.h;h=bad7a0c81f501fbbcc79af9eaa4b8254441c4a1f
+.\" Fallback removed in glibc 2.30:
+.\" https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=5a659ccc0ec217ab02a4c273a1f6d346a359560a
 .SH NOTES
 If
 .I fd_in
-- 
2.48.1


