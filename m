Return-Path: <linux-man+bounces-1466-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7EE9317E7
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 182EE1F21CCF
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C49EAE7;
	Mon, 15 Jul 2024 15:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="4Cha8l4V"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB51BD53C
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058965; cv=none; b=db1/XaT5aBNRoArqw6TIn9fXeZJfSUeQUdumkNt6tSD/qeKvHjRiVuknx9WA3qyfW//YIXS9X65RRq+ZmVhnwTsJ1xvjJCKZ6KwK0Oe5l0St0mQ6Nzw52O2hyO8XGqylxjAFLbPRd1F1e/3Z9Wir4l8v8px/poja2q4XDuBrxlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058965; c=relaxed/simple;
	bh=YsyXYdCZ1ZWv5ZQ1lZ+C7+GPUz08fAhS5ajb9S3Fj10=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=l2AjnkxXfWr/Ncl33EirvPz0wrA7JdaO2fwPdnzAuJ522nwwNv/ypFR850LRpQx0SYrahq+y0ONTNIHsibAjtOW4dZng01AZiNkQVWplTlaKtzqRAIYCOo7DKVMiZGDEFbJi6CgdP4CUouHFM8vp8UyY+KIpd1pT/EhMRniUgcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=4Cha8l4V; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-e03a694ba5aso7293766276.3
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058963; x=1721663763; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YsyXYdCZ1ZWv5ZQ1lZ+C7+GPUz08fAhS5ajb9S3Fj10=;
        b=4Cha8l4VeGquiZnZqml/SGVeseGNFtW7EQhld22mkDSrTUbNwPWMfzMcuq0pAMTjkY
         pXfwkS5YgAi84Vu/o21VDZASHSJwZqzg0KyJP7jnz1EKeZd5BljaQjIhN4bJYCQpcTWq
         RpC4lVtnT8JKOZZ0deFbCFCGqVs+mIVy0jFqHceKNql4+Xjhe7TlsjKbZ6TDVuLCntqK
         MpmZTSGfyFDhbBa9XwQ+8Y+ZMUCd2QwMqUA7yFKsGFIlVC0ixmUqsGHE9pjRrablSG4a
         I+maCEeN7glGMMJaS1SksZIsZfSK4nuAy95TXazCyxXJUrea8Vj3C8p3Mnhy+ptCyf/G
         SNng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058963; x=1721663763;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YsyXYdCZ1ZWv5ZQ1lZ+C7+GPUz08fAhS5ajb9S3Fj10=;
        b=cGVIcaIt0+a+v3AYo//KZ0fI8VTAn79aGqA1Hf0vtgbLV1VclUNSo7nWE4YCt4jvmZ
         J/5YJTPwZhmF+YemhLhf/LjLK4nyPrJ7ccvh3TTwRei5D4Y2wZ/I5iE0EFpIWbD1yPaf
         7B+b9qYospKLuGK4oJDIS0ngx4jz7hKULm1HTBbhqbW9eGrYlpiX6FHdbeXIfE0+kVW3
         +LnFKbNs97sZ5oOMvx8pvLqlUp4RyHxJCqxr4KxKcY8xdJMDSjWC1Y+LxzrMNj0ahIex
         ySpZESsNmg0ZnjwxeCyYR1EaGTDNAIsm2TaLnNDqjn5EcLlHLoLn80ET+yFn99NJ98lS
         IlkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXo3SSS8C/NqYo8r265OK3yEscDD4FpadSAOZuQ50nw8H6FzmWm97I/hlIyLRdW+cTLuUWEv1s7rxTo5IlmfbKBiH5sXiySLwLT
X-Gm-Message-State: AOJu0YwNjoXDnsD0JkBu4/lcKKsmIPVz9i/8JI1rtnjzmF6tMLpuv6Xt
	MsF8KfIu5DHa3HOnQPRXmMDNh1vPZYlvpSaXYZ5z+dVwWJpvtdW9egINhWbqXQO8vjoS1ZPUDHN
	XaQ==
X-Google-Smtp-Source: AGHT+IFzfvsO98PLrpdMcnoe2ZEE2RDV+MlUuZqjT9WmOHvAsi1eFUgokVnHFzhzx1EHqYUrjNKS3y3qacU=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:2b8f:b0:e05:a0c1:a2b9 with SMTP id
 3f1490d57ef6-e05a0c1aa0bmr12899276.5.1721058962641; Mon, 15 Jul 2024 08:56:02
 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:51 +0000
In-Reply-To: <20240715155554.2791018-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-3-gnoack@google.com>
Subject: [PATCH 2/5] landlock_create_ruleset.2: Update docs for landlock_ruleset_attr
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This updates the documentation for struct landlock_ruleset_attr
in line with the changed kernel documentation (see link below).

Cc: Alejandro Colomar <alx@kernel.org>
Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Link: https://lore.kernel.org/all/20240711165456.2148590-2-gnoack@google.co=
m/
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_create_ruleset.2 | 34 ++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_=
ruleset.2
index 871b91dcb..105e9b062 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -51,8 +51,38 @@ is a bitmask of handled filesystem actions
 .B Filesystem actions
 in
 .BR landlock (7)).
-This enables simply restricting ambient rights
-(e.g., global filesystem access) and is needed for compatibility reasons.
+.IP
+This structure defines a set of
+.IR "handled access rights" ,
+a set of actions on different object types,
+which should be denied by default
+when the ruleset is enacted.
+Vice versa,
+access rights that are not specifically listed here
+are not going to be denied by this ruleset when it is enacted.
+.IP
+For historical reasons, the
+.B LANDLOCK_ACCESS_FS_REFER
+right is always denied by default,
+even when its bit is not set in
+.IR handled_access_fs .
+In order to add new rules with this access right,
+the bit must still be set explicitly
+(see
+.B Filesystem actions
+in
+.BR landlock (7)).
+.IP
+The explicit listing of
+.I handled access rights
+is required for backwards compatibility reasons.
+In most use cases,
+processes that use Landlock will
+.I handle
+a wide range or all access rights that they know about at build time
+(and that they have tested with a kernel that supported them all).
+.IP
+This structure can grow in future Landlock versions.
 .P
 .I size
 must be specified as
--=20
2.45.2.993.g49e7a77208-goog


