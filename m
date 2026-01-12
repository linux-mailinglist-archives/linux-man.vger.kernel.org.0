Return-Path: <linux-man+bounces-4794-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE5FD151D4
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 20:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4675A302533A
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 19:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19BB30F818;
	Mon, 12 Jan 2026 19:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P5XuENM/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1495A254AFF
	for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 19:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247048; cv=none; b=nJYkwNUfTVgShEwTEb1M5C3aw2/pWu32Mk9CiDExP2z2LDPJMPncP0WzsMoTZM46cPw8k1Vb4LqAh7RmrXG3nDSHBlmL24pO0h2kBeGswQN/i9OG1dxOdgG8mOj8qG53HevKPCo7PrjDtKrvLLHSTDhUCUo4Dtz8hFSezRe7i8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247048; c=relaxed/simple;
	bh=4tbE0i/Cd/iR/roO4TPIxZVK6iCtZPNBL1rkCBsheGM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GCOd5ThLt4dGOayGp3I3d/Hk+nW/YfkFZp2bh3nq5PeT37k+lMevJK8nOIsC2jKRUnNJq490MapHnFIGdeSujWcsynQxz7l0SQZJIO3LyX5Z86Vy0Jj3Q/1yTpkqvVwckiKG7kysLBnqiw+E+oX7wKJdu4xvrWsX/n1r2M4+u2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P5XuENM/; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b86f3e88d4dso277606766b.0
        for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 11:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768247045; x=1768851845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=91Y2/qO2mBqRktnDr8aFMUJJJ3+yQuTweh6fIwnu4Uk=;
        b=P5XuENM/qjKlPON8tsZFzXkX5Df2Y9v5ONqnrsT9Q2kenXajkdWReVribylwpyr5MD
         ENx56RoYsxZTIE7Zkmvt7i3Yw9/B/YBbX1yjf9JTDaNehtzdQuDHvMkvioBVUdUvMTNi
         4S7bxXpb0Zzsz+Co/8Eu60yGPjRmr5e1TwD6RofufMCt5dD1ZvyLINfmwPliBHsCoiQb
         zfL2Wh41bXxBTaBR6jWT5asiFVZiC9aW4DFivGPnfcg592VfF4H6OgZR12URSv1baEBg
         yIszpydHR1Ui5kUS1gWnzlo5f84I2inQbgpNol+bHfTb0xK9/34MU4hJSZrc5VR6oWIq
         cH8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768247045; x=1768851845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=91Y2/qO2mBqRktnDr8aFMUJJJ3+yQuTweh6fIwnu4Uk=;
        b=D9lV+9NmaryqPi7knUij8VO+WBlM/GduPUJsx18cJz22Fq6k5Lc2gevQIiCJor/Nef
         65SNSJw3kGJy94dpTBXfP/bANO8pbCKZxILnSyYJDH+MbHHnbxVFZDKG3OSSs3IeDHa0
         HfCBlhTiXN4EM7hwP1DJdxKZEOsFwKJ2JxOlQYkaaDwymgLeKlF7TyYf+iiHiFeP8dMm
         XFAkWOBQ5a/tBbiuUZWLncUoZ1ogK5h0+Pjac541s01SClyN4wCcntdZZ+tGx0c13Dyi
         xAwI0n6Y5p8X2bZGfQ1tdDO3nP3ExnoHKZKx5Uw7g1Tx6quM5Qx5KWt7+hnzkM7QGfqV
         30lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGzpgJlPfl0DgYuLziPfLm2E0tQmviRuH46MVj6fEpQQhqNXvnL5Fbsri6LoRFC9TqQcN77Q4MVmg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzYQlsUoUaqKcurtYPwCM7EVVegQHBNP/I9kYRsMqC8tAfr/HTJ
	n13VqBAZwVXFNoW4ZcZIgj6TDyZ5GeneYHHsklexfMNtoNFCcRuAhzx8
X-Gm-Gg: AY/fxX4moMcm/KuFE99rMf5BLnsNjFd7YEX4R2GKnSlg/hdSnW3xCF7lBgtaHAkaJmq
	pT6tpR/dV1y3reGlEX6hO4ZJc5xlCgszNh6OHM6pzL2j/WiXNGzkfBP5/zCN+mQIDY0pqi7eqf/
	VspLhC7BNzzeIbbon8nPUu1fzSiyRKMbOl8Xe9rVvidPoTawZnwXjMeb9ttRs5hp+sPPeiMQULf
	bqr9OET6rYNC5ZCX+ygz+iXkG7bJWKlIcRmPO9+Gpq0weGeZo9wk2xKSKpaB477KjNtRtNEmUmq
	OZZqTSK2cjXtvqfDN9rsLNQWpbYeKst1YwOmSa1U0SzjH3ekAR/ayCvM3D7K7ZMuye4uhwiMeND
	hapPTnp5BXlc001N1phNVmz1wC46LUfVfu49uPbpkjzQkQKlS0y50cZ+4VnJ4R3lcD7XwWxI9g9
	KFvOi1cUNVZ5SEdCFwf0jyYX5yP6YO2L5sOIrSoZ5TNUJ65kw=
X-Google-Smtp-Source: AGHT+IEvfiX26z1aNKT+d2taCx4WEzGOjwnSGy/7lpI4A3ggvhQjeXrXh0wvb4t8GICQ5bWzvPZW0w==
X-Received: by 2002:a17:907:94d0:b0:b87:1ca0:4a12 with SMTP id a640c23a62f3a-b871ca04b68mr307658966b.64.1768247045181;
        Mon, 12 Jan 2026 11:44:05 -0800 (PST)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87207e08a7sm281669466b.55.2026.01.12.11.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:44:04 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: [PATCH man] landlock.7: Re-group description of IOCTL access right
Date: Mon, 12 Jan 2026 20:43:24 +0100
Message-ID: <20260112194332.5498-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the description of the LANDLOCK_ACCESS_FS_IOCTL_DEV access right
together with the file access rights.

This group of access rights applies to files (in this case device
files), and they can be added to file or directory inodes using
landlock_add_rule(2).  The check for that works the same for all file
access rights, including LANDLOCK_ACCESS_FS_IOCTL_DEV.

Invoking ioctl(2) on directory FDs can not currently be restricted
with Landlock.  Having it grouped separately in the documentation is a
remnant from earlier revisions of the LANDLOCK_ACCESS_FS_IOCTL_DEV
patch set.

The same change was also done in kernel documentation, linked below.

Link: https://lore.kernel.org/all/20260111175203.6545-2-gnoack3000@gmail.com/
---
 man/man7/landlock.7 | 81 ++++++++++++++++++++++-----------------------
 1 file changed, 39 insertions(+), 42 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 5d4a24f79..c31d513d1 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -97,6 +97,45 @@ with
 .BR O_TRUNC .
 .IP
 This access right is available since the third version of the Landlock ABI.
+.TP
+.B LANDLOCK_ACCESS_FS_IOCTL_DEV
+Invoke
+.BR ioctl (2)
+commands on an opened character or block device.
+.IP
+This access right applies to all
+.BR ioctl (2)
+commands implemented by device drivers.
+However, the following common IOCTL commands continue to be invokable
+independent of the
+.B LANDLOCK_ACCESS_FS_IOCTL_DEV
+right:
+.RS
+.IP \[bu] 3
+IOCTL commands targeting file descriptors
+.RB ( FIOCLEX ,
+.BR FIONCLEX ),
+.IP \[bu]
+IOCTL commands targeting file descriptions
+.RB ( FIONBIO ,
+.BR FIOASYNC ),
+.IP \[bu]
+IOCTL commands targeting file systems
+.RB ( FIFREEZE ,
+.BR FITHAW ,
+.BR FIGETBSZ ,
+.BR FS_IOC_GETFSUUID ,
+.BR FS_IOC_GETFSSYSFSPATH )
+.IP \[bu]
+Some IOCTL commands which do not make sense when used with devices, but
+whose implementations are safe and return the right error codes
+.RB ( FS_IOC_FIEMAP ,
+.BR FICLONE ,
+.BR FICLONERANGE ,
+.BR FIDEDUPERANGE )
+.RE
+.IP
+This access right is available since the fifth version of the Landlock ABI.
 .P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
@@ -198,48 +237,6 @@ If multiple requirements are not met, the
 .B EACCES
 error code takes precedence over
 .BR EXDEV .
-.P
-The following access right
-applies to both files and directories:
-.TP
-.B LANDLOCK_ACCESS_FS_IOCTL_DEV
-Invoke
-.BR ioctl (2)
-commands on an opened character or block device.
-.IP
-This access right applies to all
-.BR ioctl (2)
-commands implemented by device drivers.
-However, the following common IOCTL commands continue to be invokable
-independent of the
-.B LANDLOCK_ACCESS_FS_IOCTL_DEV
-right:
-.RS
-.IP \[bu] 3
-IOCTL commands targeting file descriptors
-.RB ( FIOCLEX ,
-.BR FIONCLEX ),
-.IP \[bu]
-IOCTL commands targeting file descriptions
-.RB ( FIONBIO ,
-.BR FIOASYNC ),
-.IP \[bu]
-IOCTL commands targeting file systems
-.RB ( FIFREEZE ,
-.BR FITHAW ,
-.BR FIGETBSZ ,
-.BR FS_IOC_GETFSUUID ,
-.BR FS_IOC_GETFSSYSFSPATH )
-.IP \[bu]
-Some IOCTL commands which do not make sense when used with devices, but
-whose implementations are safe and return the right error codes
-.RB ( FS_IOC_FIEMAP ,
-.BR FICLONE ,
-.BR FICLONERANGE ,
-.BR FIDEDUPERANGE )
-.RE
-.IP
-This access right is available since the fifth version of the Landlock ABI.
 .\"
 .SS Network flags
 These flags enable to restrict a sandboxed process
-- 
2.52.0


