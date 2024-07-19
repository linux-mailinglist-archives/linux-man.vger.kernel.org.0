Return-Path: <linux-man+bounces-1497-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E97F93789D
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:38:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3B2B1F21FC3
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96C90143881;
	Fri, 19 Jul 2024 13:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jAafypQq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC6F142915
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396319; cv=none; b=fJ74BmkTssY2dRhPlK1gmdBCwhnVgRvB8T6R6fYS1Q+8o/oyPAd2Y46jPsBLYAJvAHU8WuFKi1tHXADPfaW8l0SjLVClD6LKHyEdQXFgTYVWJ5EVCrnDzTZHRP12XIIgTvP1fgkYxLksfhI/NZqqNFR/2841/9aY52eT6+/wmtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396319; c=relaxed/simple;
	bh=P90ESTWqCk2OgGpUGKudXVvUsFb7VlpVu+ryQwAOonQ=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=EUDyF5vngT7P0r5PaJp5PLmjYPWIc359cJA/zJOrIG/IwPNpPhmDacsK9c+yJ/YhAzF20klkXuMvp3tsGpbM3iqE3I4EIwq+gMoYEq7eM4tuX36wmMhyCl5KjLQQVvy78WEmkdKednMh4caILbnttTtRjDmaP67xipArjDa8Xa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jAafypQq; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e03a434e33cso4052771276.3
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396317; x=1722001117; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DymRfNkMeSGFAYsf6GC6Mgxy70Ef8SP9WMPScBIdEJU=;
        b=jAafypQqWBBIhIPqu+fq466Ig4amNVdu8y27IjPzLzahUe/hwwXmhXlZDDNXmE8acD
         t1L1FSK2u0aPLl3Hc6c3MuLNYN8E77xDXu67M5KKgi7yvsWDEnVqXjrLUbSfhFrjpuYs
         fsKxG7G10Xzh6PHPUdnOMosl5Dum/znbkdoO0eOBa16ynUb0umDvdZNikGIiZpLKKDpG
         WBG+SoZYL4NlfgW+3/VlQsc462gbfAhG+u5Zx9zmpQ6xCtlt6GhkqRf/JDFu3Iy11XXf
         EtCF7EHAkCuGvqb8zuVL1VJpAmjvu2Yp4vsChvkiJZTD9TmJZ//w5ONdHgxxyP5qjNQx
         fIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396317; x=1722001117;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DymRfNkMeSGFAYsf6GC6Mgxy70Ef8SP9WMPScBIdEJU=;
        b=HhszFmWg1vEW7EwiqFhv/hAio3as1eojXH0uff/AL0b4BlODtRDHI0vmQy+SA6U2/Z
         2ZzWphUzpXsCBm78dX+3mxMiZp+xwyrH1uU0dkz8SztxUT4TpDHN02piW433jZmKRkTF
         dfMyIt15CXSVijnd0MOdH6Z6HfhAqU56J7FWj4tG2h7CUHjLQlcFfHNqa1cJpb/FLkvP
         y7ghPLC9CTF7nFTL83wzxcFhc3fDpBWXTyOPtNvlxiNeZiT6gSIvtAgOgOGUk5tQZdjc
         Ykl9ARhxRhA3wC+++qdRqGyY9gOsmzXSBlz1GT7NlJxomxqSUY+Vy85caiSzEM9Og3Dv
         NaDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmLu0BQCM0a0Kw9fWLjpZcDeUfNw5VZTH53eCVD/1/yWQY1/YpyjIyUEnym2kTfY/ObDVjx2ZYole2/804U3UY5Elq2+1R1GWy
X-Gm-Message-State: AOJu0YyNQ9RyuhHYdWypMAEyGRTSWej7htuVwu1Rfcbj0xacutFeSCIj
	lXZxUJlDGZEco2LVnRJmcG+GHPML8b96grGisQlr1k1ji75FLSY0tnrqI9pgIorW3kYRt+4V29s
	Tqg==
X-Google-Smtp-Source: AGHT+IHzOITqhHR10dcuA6PjUMBFmypjye4IHCIO53WbKsXBOeJqfeh1kmP9Krul4wbPDua3sqHqOqhxalg=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:c10:b0:e03:3cfa:1aa7 with SMTP id
 3f1490d57ef6-e05feacb8a8mr22451276.1.1721396316756; Fri, 19 Jul 2024 06:38:36
 -0700 (PDT)
Date: Fri, 19 Jul 2024 13:38:02 +0000
In-Reply-To: <20240719133801.3541732-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240719133801.3541732-2-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240719133801.3541732-7-gnoack@google.com>
Subject: [PATCH v2 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Landlock ABI 5 restricts ioctl(2) on device files.

Closes: https://github.com/landlock-lsm/linux/issues/39
Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 53 ++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 50 insertions(+), 3 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 52876a3de..c6b7272ea 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -89,9 +89,11 @@ with
 .BR O_TRUNC .
 .IP
 This access right is available since the third version of the Landlock ABI=
.
-.IP
+.P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
+or used with
+.BR ioctl (2)
 is determined during
 .BR open (2),
 in the same way as read and write permissions are checked during
@@ -188,6 +190,48 @@ If multiple requirements are not met, the
 .B EACCES
 error code takes precedence over
 .BR EXDEV .
+.P
+The following access right
+applies to both files and directories:
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
+This access right is available since the fifth version of the Landlock ABI=
.
 .\"
 .SS Network flags
 These flags enable to restrict a sandboxed process
@@ -355,6 +399,8 @@ _	_	_
 _	_	_
 4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
 \^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
+_	_	_
+5	6.10	LANDLOCK_ACCESS_FS_IOCTL_DEV
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
@@ -405,7 +451,6 @@ accessible through these system call families:
 .BR chown (2),
 .BR setxattr (2),
 .BR utime (2),
-.BR ioctl (2),
 .BR fcntl (2),
 .BR access (2).
 Future Landlock evolutions will enable to restrict them.
@@ -440,7 +485,8 @@ attr.handled_access_fs =3D
         LANDLOCK_ACCESS_FS_MAKE_BLOCK |
         LANDLOCK_ACCESS_FS_MAKE_SYM |
         LANDLOCK_ACCESS_FS_REFER |
-        LANDLOCK_ACCESS_FS_TRUNCATE;
+        LANDLOCK_ACCESS_FS_TRUNCATE |
+        LANDLOCK_ACCESS_FS_IOCTL_DEV;
 .EE
 .in
 .P
@@ -459,6 +505,7 @@ __u64 landlock_fs_access_rights[] =3D {
     (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
     (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
     (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
 };
 \&
 int abi =3D landlock_create_ruleset(NULL, 0,
--=20
2.45.2.1089.g2a221341d9-goog


