Return-Path: <linux-man+bounces-4803-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DECD1B052
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 20:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7FCD306BC57
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 19:21:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3245E35CBB4;
	Tue, 13 Jan 2026 19:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hZJS1H0n"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A3430FC12
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 19:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332077; cv=none; b=hWoX1x6ceiH7wkJQs9Y8u491ro90r3FDZuyzRavRw6KZC5zVtSFjwX8OTuuHjtEuJfBSI0nAWct5CXNvXnfdhcPDje5l/a2kww/Eo4Q5HbKrtgfrf6Bxqxg7r14S4YXkaxG60hkUHwPP1ClCgAcqaTdWp0CqyvVUCkAD1FNVAt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332077; c=relaxed/simple;
	bh=dCHHGwefgkPq2e4IKZJSbFIg1KaATHbOhkpd+6Id070=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VxPkRgO9TaOByEfXCjl79sH6SHcExdZNk6bTYREGhX3qq99HeRyjfUQv4D2erGhDo2WeOr/pQmhK/H+8Un9p5elnUOx/vkMolAZH9vjNiE0W4YnjgXLVFY/upgeXcxiMsHywbLqQTJ0/0TEw8j0+sgUYVPdoitoOzeP9sE7fChM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hZJS1H0n; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64b4b35c812so12944967a12.0
        for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 11:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768332074; x=1768936874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e0x6Je6GZKr9QCzO52cDT7X8vRUxGUegWC1lwgBQni4=;
        b=hZJS1H0nnZWYH9iJ9gEZHRO8xIf7utqbqZYLRlp+oiMe+6O0rqnGNDnHPILN3pDxDq
         ZkvchPZz8QtjNBuB7FBqeh4+ZLJiwlHXoqDvH6ZLkNoBDKQ/25Ejy3SD1zOKcK7ukQ0N
         9XZYarGjMpIEiZ7QHSpHo3ZyRC0JBheTMDvqH2vNp/YTaatz2OgCOv+xJFRPxqHWByPd
         XZLHgIgzwEnrUSb+8V8C6wfI2wjqpshZyWnoTjkK6CxVPiuES8DwzOBWmNpMU+BWCVGK
         eNmVdavNgXZ3DclILEYkEoB2tTunFI6lkkU8dpiV1T5VU0TGZ3ycNbP/PPLLaX2xvkDy
         /Uig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768332074; x=1768936874;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e0x6Je6GZKr9QCzO52cDT7X8vRUxGUegWC1lwgBQni4=;
        b=gmb5BYUDNaKIH8YulNZvIw/nDErvQJQWr+IgkbCHYag8lEtuV1IqN3JZdxYVOlzYKg
         c3NUWzt9wjDhRxZj42NRNYrMXwsNgwPwRGO2SmgbaP7obOM+VpUDD+p4RqCBfxwHsQl9
         i6HV05x511o1Vt9cQGzL4oDb2e6LO+j4oYPxJhA9vxNHCcZGZVrDNcynRZyGFwi+FDFM
         ASgjxe2EFWBQZEtzblnFdtGmCva5XAPwIN1hIsb3NKrzDaAeAd/35CVQEtN3RlMBgi0x
         FNhxfmRKtBNCD35jYI/058fiyQdVWctsiOywKBlgNrXZNW6MuDf5HyzH2J3UXEaWLsC6
         UbpA==
X-Forwarded-Encrypted: i=1; AJvYcCVJWKPVOu+Rgxvn1x56A4C5CUE8z510WD1wvaFvaqTgaPfX1sbqj/bn+zVs8bxSNWWhgFQb39qFLfw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxIUDf2JoHXOYbuvaYnzWZPtyZ7x4Bm7tY3rn3BDOAx9twkGoL9
	Ad28V0XkDYam/cJvyWZURHTl4/ZBkmXu/k29UhuHLReF1eOE95Hzme+z
X-Gm-Gg: AY/fxX4EyYvti2Y16eUMxrm2tBe4Brw9LT/y18O8ZA9vCtJkU1INe43bPuIp7obDEZ2
	VgeyOqiooNwHGVjwxY7Qv2Q32nJtz6Fk9784xvNp4WdmvbYt7SmM6UrILUyDOuHdFxOvLC8yysq
	wZzVYLHxQXVnzoEvcR16iSawnXhpIUmMIN578nDUEzNE6OABr6vu0EBd5m09prbXY+iR7uoNC+h
	/YGhSCrKpJ18txnkfUFkgRCpToiWcocKUaO7TdcI6guywQ7w2GJV9e94ugxzNV+oo39bDIvZXuL
	qUXRX+Ym4ENQgGcRyBo4SU8NHIXBL4KmSZxeVtrkUSMhpJ9CtYfnD3TYdIFQWiaBTPjjM8P4wgd
	PogNdOp+AQJfDN0yUuVIfQz09JNXmi99Y9XWcGoqQtjr7Mijis/gWIp5V5Psmiefub3mm92zgLN
	2fJk5FcheLRvuVpX4YA3flBuLlU+DAfuuoWxQK
X-Received: by 2002:a05:6402:268b:b0:64d:1a0f:6968 with SMTP id 4fb4d7f45d1cf-653ec101c4fmr72293a12.5.1768332073838;
        Tue, 13 Jan 2026 11:21:13 -0800 (PST)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d51basm20873978a12.12.2026.01.13.11.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:21:13 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH man v2] man/man7/landlock.7: Re-group description of IOCTL access right
Date: Tue, 13 Jan 2026 20:20:53 +0100
Message-ID: <20260113192052.4703-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Fixes: 893db5f60c73 (2024-08-21; "landlock.7: Document Landlock ABI version 5 (IOCTL)")
Link: https://lore.kernel.org/all/20260111175203.6545-2-gnoack3000@gmail.com/
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
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


