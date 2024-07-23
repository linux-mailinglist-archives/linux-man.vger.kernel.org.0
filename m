Return-Path: <linux-man+bounces-1515-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD3B939EAE
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 12:19:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7332A283499
	for <lists+linux-man@lfdr.de>; Tue, 23 Jul 2024 10:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B244B14E2C0;
	Tue, 23 Jul 2024 10:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="MlK0SZ4q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1DE14D2A3
	for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 10:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721729971; cv=none; b=N++11KBDq9GQ6u8RLe+O+dQ8gdWt5jNfVkkyh0dIsuG8hSTNW3AeBqFphR7HU6ODPc1INHI/FPWAkBbI4mL40pmRcdMq8dI1Pa4NghbfprthhJfo4d/aOV5chr9QyxMBs1BQOMGQ36youmeEdaJlGxq8UFLjLT02omXCIaTIpAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721729971; c=relaxed/simple;
	bh=A5pHnX46GKBYweCTG9/7kGWGo7IyV0YWsjH5o1pUprA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=FWMcjW4adefyQqAfL4WREG5O8qN9GiYWfoj9cvBdnIgqwy8SYjS6NQeFlGhFlU3N8typWygGNFow968LvSbcaSbIfzHEwFbK/eN039c3Dr1H/bg/NstRzBxGxyz31rE/6eJOK4HDnjweXm8dLdClGtKJNuoD0bWEubZ7BS+ayWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=MlK0SZ4q; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-65fdbfb8fe9so157769907b3.1
        for <linux-man@vger.kernel.org>; Tue, 23 Jul 2024 03:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721729969; x=1722334769; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z9bPYt8oq9FtGvCVB+CllKsaLd1/P6d/wLYTaz0722E=;
        b=MlK0SZ4qbKwf4pp+JHfV7C8isb4h/WRsluFVULhaFq9dLeoJIZXTXcmk1XxPlPcTcf
         FXa+jRkVFg/LPekjh0DXKaRpe1C8QiCILNpZKwm1scvPYiuDKUNd+mEhNqz5hYnSIvSu
         73fBVhNSUZxSxd/v24aSwFIgcijb4MHVhXjFOFwLnlNFCdeaY064W7wRQi5kMvjNHbKn
         jCXNszTiveWVw2OJQ+ZHfV3F/4BfFI2tKvwacFYa2/dp3NS5P2pZh1LQ/FbuYjVUAoUs
         soaUbGqwFFJKEeMVDmSs8Eqo+BA3vGSbRzqXg9m/v/F9ypMOPOqKF5/T/6Yqc+wDhg+i
         1lQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721729969; x=1722334769;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z9bPYt8oq9FtGvCVB+CllKsaLd1/P6d/wLYTaz0722E=;
        b=NY0IuTg2NDK96QNIq8adJgL5Zj0qa4jbSjSPMSDqqn3MhyYIk+vJxFfzcoVWE4KJ1r
         VsN66/RHEm/njUYmcVSTlDw+p9hQAOh3RwvATU89bx1IrRUhaPOj6miIaHqXjxU550Ge
         wipbp2MxjFVt3/ZUqtlDNL4VwMxbGUvWSXBm662ye1Azc26BFRhwUcTTSdoIZs2Em8ko
         ZKK/AjV8s25IkVckpp/1iS4nW3cr8WNIWYEE++D3lVS70yuwEVsT3uDLfLVmH6KlY74e
         EvYZysu8Px4P5MJrJmRxYMs3SamXH6cMgWrllx4/oW40u2WGG457GkqmyZHNUZOEN+Oz
         KcYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgSlKc9RpYLfJEsvfL/tRoANpAlkuCNOSvkbn4pJrXtYgJYF5nqr+ptotoIMNaw73ZCyCQkO4tpNCBw/R3KlYGj/8Vffu5gr7C
X-Gm-Message-State: AOJu0YxT/XRTyrqBlEClmukS13PtjVNQuKckGUk+lkis02BjmeGFAIUV
	V462MoTUXWIMKFPL5v2bKXLu7yg9UTJ6ED3KrDwJLsG7hgBsWAjNsNJ9Pd/gDM7WzaG/dmBaG85
	x8A==
X-Google-Smtp-Source: AGHT+IF4v0WDuMiqlCYHeaAiyMf9so+rrHPrsyzT0smAvKrhlys+G2nvGC6/beE2hs+UfuQMF75nv8BINUM=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1892:b0:e05:afa1:9c7b with SMTP id
 3f1490d57ef6-e086fdea457mr85720276.2.1721729968831; Tue, 23 Jul 2024 03:19:28
 -0700 (PDT)
Date: Tue, 23 Jul 2024 10:19:17 +0000
In-Reply-To: <20240723101917.90918-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240723101917.90918-3-gnoack@google.com>
Subject: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Landlock ABI 5 restricts ioctl(2) on device files.

Closes: <https://github.com/landlock-lsm/linux/issues/39>
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


