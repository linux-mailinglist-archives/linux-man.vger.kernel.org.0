Return-Path: <linux-man+bounces-1469-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0245B9317EA
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 82CA81F21E16
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6171DF5B;
	Mon, 15 Jul 2024 15:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="darzR5tk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f73.google.com (mail-ed1-f73.google.com [209.85.208.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3922E552
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058973; cv=none; b=EnGlXCamx9xJ5vdT0nMO/6Aqs6xpeozPwxmpMipWeAu0jLo7P/zdVBnJi2AqQNQ9ZV2Ja9UMlCjZdomBJaV1cV8RqFFVRQ1l2deAPsVpAS76vvv5KjYN9VakdoroK+7KfAr/5U17A1Mra6kpaOt3H8GwpiKujO1ByqazSCnT3Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058973; c=relaxed/simple;
	bh=mGt7p/hOhyAo4shBgvkMlLKMgMZlNy+zlng2ZG/rflo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=tNPeJsV3V1ETNew+RfzXk5Qcp0JpAQzIPRrxZYosAIuKHLc6YmDSUeiQXLfYPvbYAo6Bq06sYQKYAurj39jQqYWwT0bYJXq+MephvVj/u2evg4MgZh96Dgv70+dX59FiWhBR+q8WGOrnMgFmAbembRs3mscV/fAMPTEjzths3A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=darzR5tk; arc=none smtp.client-ip=209.85.208.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f73.google.com with SMTP id 4fb4d7f45d1cf-5998e08a7e4so2870498a12.0
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058970; x=1721663770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXn5JgCfUftzhh0RzBKaoDTWhwB1agNUKXF2f0cMl0Q=;
        b=darzR5tkJ0iDEPRrYAHoUbV5qPZHRfK9hRAz51fMmaPo1VSjwzOfTcHGMA2s0AELXE
         qe2Z604BHBsXIB6208k9yME5+3l6qpHeb//ejMPd5ahgczvf982q5dCm2CIHLserxKre
         Q4N+T2l6JPhUolasUwNa5hzJA1m1OgPMe1g2RaKM8aoxdTQe7DAu0wpT3dFQAwX/cPLh
         SjgsoGJtmmhmJLsQImIBz32vIINgVyPIqWDlHeKdrHcsj+dzwlGmEhlANHSuDR4m9se6
         fkkR2MzsUpQ/w2qwLCWSwTztO2HBXxtAXhOoArH3jvXys8hlES2ZeaYnnYZaBSRwCJNQ
         ZPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058970; x=1721663770;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vXn5JgCfUftzhh0RzBKaoDTWhwB1agNUKXF2f0cMl0Q=;
        b=vCEDj0aLwiWiPbJIXb4VRJoNPLdzUYhBo4dPW9o6WnAn0GyF60bfo4qiNsgGd8wH0j
         OmtNV8wbIToCd9gGMmQzuDhyOYbqawYLGE8bgYO2szoYiKawXq6IaThcynKKZrqiPv7X
         ywPRRYKz3rBHDouztAI6OG+CbAlNNvD4BCajwrmDavzeGYFHYe1WLKgwa852bfQQkZSA
         gcsLprNecwAEBwWbw6qKx6jVeLx/kAFZTCJw4Hj7zKZM168b85IEtItkbJ9xhQ54W9sQ
         oWljOWT/p7LfzEEV+FcluqK8dZSMKLTV9XRZz2gHC0E14RDeiQXqg7sTk/MRIa/yR/s4
         zeJw==
X-Forwarded-Encrypted: i=1; AJvYcCV1Akimxz8sIR+0nur43brkIkTXGWZbocHhzCdRoDKVCqUytc4umDfTPGly0+/djhDVUolnkUvlGYeAAXA6vqgu1mvuYmLsh5Se
X-Gm-Message-State: AOJu0YzhxI053E+sNa2UZggvuFWa/yfCuiaTYuuowrCUkclA5DCNnWHT
	TtJz9xf9BfHiPw+KbT3B9oMPzqcLanSuuNvY5pgNIqtsIWUYpcZfMXfTXxQd4xwXiCN108s4HGV
	H7w==
X-Google-Smtp-Source: AGHT+IG5ldsRWyrLr2ilJ+JDuoopFD03JlaDmf+1khnaBuBXslrOxqPbSsZcAqqx8Sr3/v6vwXlupPmdSwo=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6402:3786:b0:58d:6353:3497 with SMTP id
 4fb4d7f45d1cf-59e992340e8mr231a12.6.1721058969906; Mon, 15 Jul 2024 08:56:09
 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:54 +0000
In-Reply-To: <20240715155554.2791018-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-6-gnoack@google.com>
Subject: [PATCH 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Landlock ABI 5 restricts ioctl(2) on device files.

Link: https://github.com/landlock-lsm/linux/issues/39
Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man7/landlock.7 | 51 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 49 insertions(+), 2 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index d452b93b2..044f57208 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -92,6 +92,8 @@ This access right is available since the third version of=
 the Landlock ABI.
 .P
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
+        LANDLOCK_ACCESS_FS_TRUNCATE |;
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
2.45.2.993.g49e7a77208-goog


