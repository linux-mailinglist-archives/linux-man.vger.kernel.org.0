Return-Path: <linux-man+bounces-3161-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F06FAADFC54
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 06:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C98417CA82
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 04:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B37818D643;
	Thu, 19 Jun 2025 04:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UTR3eaio"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B9E3085D4
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 04:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750306950; cv=none; b=ign0csniDIInFRyr+bpHjfvaN6MhP73DvaRUq15zrgXttT0+MYJGK/f5VUVNt0ScBTzYjWkcUYF96w4I2uUvmvxyVEojr/P85yQWXpD7WtSxxRlQuM8dDih2/x2BP4j94HY37BmB0vJKMDve9eMloL0yf3Zeoa7NMXomK3NxaiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750306950; c=relaxed/simple;
	bh=Vj8ep6WisuHWQOgwIOPve3Bxl93IENX13CSfoTRvTtk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L436fHc16rlQWFW4muUQ/W/Mf9g+K/yoQrh+w45uJS9OJoUP8bEqV94CF2YgRkIwI95kQ7PoGGNJEB/igyOKBXyuRsyHuETFpQ0r3U+gTgmKRxlctDILs1spGRgYlkta/iNU9YXITNUoLny7V5pYVrgjMVcMXWUjNGg/AlFn1B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UTR3eaio; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-313910f392dso179531a91.2
        for <linux-man@vger.kernel.org>; Wed, 18 Jun 2025 21:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750306949; x=1750911749; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dWZgFypYseBIsi0MkQ3gOOo9EzpCqbuWwGo23VDuZM0=;
        b=UTR3eaioUyZO4G4o3UIt4xg0UFgwi8SL/60Pmn04weRBUhd+IKiha8IJemcUIcB1m1
         Xgd9Vy3gvtM1TLfkqfUq738UoXv598iG/USIsBfBrs01VbUUWUWP30DwixXQcAzxK/5S
         Z6+XwwXIQgkA7n2fJYIry66atgLJ7XAj3gTrdAwjl0GwQPoG4FfEiZ79ROo9VOXHzdgz
         ywHimFMwa6VQkr7Onqmgo62tbFT6Js6ZmUx7FCrS7VGsGgw2MuBeLuyBy0ybHvNwrhW1
         jL+/IgDhREg4IM2UrFUH4rnoibORknpl4pD/vAGt611/OFDxoMmLlUtdcGMIO3NKJmoE
         JS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750306949; x=1750911749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWZgFypYseBIsi0MkQ3gOOo9EzpCqbuWwGo23VDuZM0=;
        b=F5Hl8fMaXNIce4yjyXq3gEdg0df7YM29EZ+5QlKQzC5tvZd7eI2ureDr5lxXkFQOUC
         F/4fqxMdvBQv+rbbnjKsKjpJSfxnp8mNRx/FNLb2PkVtt5FkR3gIRyq8sGuIYNf+iRvc
         tEHSuJvrnkGpmiobRFY0XhK45CSzjGBYbzQWHDRJFVYxsmEc7uPjXBHWy9FVFg8l3NJI
         WXMvPfMq/LjLTVZsI6W2yIKiMBeNP5Ik0oy68Kvm0HVTSLSJAI9F+W7l80xw7pmW54qW
         qbgb5Eny+yKe85+5a7T8Q/a2RzNlQMyPBMhUtPZ/A4k14SwsZ8VlHioUDsqIIdrsQzs6
         wshg==
X-Forwarded-Encrypted: i=1; AJvYcCWo1QUE+8QXKWYIrSQYwl7/2uAib57crBGpWG4/AB+5h5ynWom2usgi8N1ola7oiinME5cUXfyXXf4=@vger.kernel.org
X-Gm-Message-State: AOJu0YyScXmlrD/XII7fgGfKeDeoBZzr2/1pzfuJlV1Gm3+cimqHyTQr
	rfkL+P4176l2gKkGKGea+9MUCSp6B/WYKB5YHl7QWvxTI1f7JQtzP+6R
X-Gm-Gg: ASbGncv6O6TEDmeTUnNdmbLze/HWME08xiZErM5gNQJtL85+4TndSWfl9QBNPN2LPV6
	k1A2MAoz+FKFSjB95T8yN3Wc13zTGoWzIe8q9YkPODdyLZN5kiF6GPiac2YS/ocUhAqe6ARA9NG
	3+J1/RlTLIvX0E5hUy/rXBm9Yys/y8RcJmngazoWq9PuVr3Xmu6X7U56pSY9O5FRQPfzTfgX/Ps
	2WIs1O7cQCJhzfoX2SW20TC0hZurc9l0L6qpoO5l7zoooXTVGT+hC3wRyj5YqrHMRPU8RWihfRl
	aHfaFcbxYn/VYbWh5ZUb5k4hwI6iOOV8o0LDJEGoBNoioQ==
X-Google-Smtp-Source: AGHT+IElwgH8YdScy9xxCpZnzqvEdrjWe7SQNA6iMEEAlEE2U5bH+9u0VHWTHqS8IoZz2LgN5D+CyA==
X-Received: by 2002:a17:90b:28c8:b0:314:2bae:97d7 with SMTP id 98e67ed59e1d1-3142bae98admr13737078a91.15.1750306948722;
        Wed, 18 Jun 2025 21:22:28 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::de7b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a24377fsm1007495a91.20.2025.06.18.21.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 21:22:28 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with [[deprecated]].
Date: Wed, 18 Jun 2025 21:22:09 -0700
Message-ID: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As documented in the STANDARDS section gettimeofday was deprecated in
POSIX.1-2008 and removed in POSIX.1-2024. Mark the function as
[[deprecated]] since most systems still have it for comparability, along
with a more modern alternative (e.g. clock_gettime).

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man2/gettimeofday.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
index d954a253f..bdb2b0bd3 100644
--- a/man/man2/gettimeofday.2
+++ b/man/man2/gettimeofday.2
@@ -12,8 +12,8 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/time.h>
 .P
-.BI "int gettimeofday(struct timeval *restrict " tv ,
-.BI "                 struct timezone *_Nullable restrict " tz );
+.BI "[[deprecated]] int gettimeofday(struct timeval *restrict " tv ,
+.BI "                                struct timezone *_Nullable restrict " tz );
 .BI "int settimeofday(const struct timeval *" tv ,
 .BI "                 const struct timezone *_Nullable " tz );
 .fi
-- 
2.49.0


