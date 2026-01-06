Return-Path: <linux-man+bounces-4653-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94BCF6F90
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 285293008737
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5553C307AC2;
	Tue,  6 Jan 2026 07:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fx1dwl1s"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C317B2C11E4
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683401; cv=none; b=K+6sX5UbWgZTTXINtpLcgby3uMVbFRujqAXnLByI0g39nxdaKDHp+bM8bBdksH5ksOjDRz4GyFpJ+d8BjSD3VCT4lls5OJVXerl9Oq7ZZ54ziqCVRxSe03JMorQDpU2Ti3L6ZiCgh/g7QtAlx4irCtpivEd6OgLYhTAhqZ2aG3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683401; c=relaxed/simple;
	bh=B/ZejakU92UO2AawUnzUnz6OfWWQuSRNmqeO5K6ttTA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=emg0fJXsnyYB1YzaAZIgten9ou2jGXePdguvnTM5ft55t01Flgz/wUZ1bayYsL7YzlQAeQNxsq9N8qxi8fL+4iFPClaQ9OlqdLopdcka8fExzx72bXu4lTUWhRSwCAbBGNu9aI9TEOk5edC3hlMLDofbE9HtYjVqdKdc0UTKU70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fx1dwl1s; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7b6dd81e2d4so750729b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683399; x=1768288199; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B7o659ccPqlRcuBDl7O8ryWDqKdyhW6txJF8zT31h94=;
        b=Fx1dwl1sPlJWX4z1FV5lLD4cf/GB/8e4XWSaL/wNLsHmzHnKOsQC6sDSmL8fmPY8Ek
         iKkC6LgLmZUZ7f+5DB4KQUbDFqFb6IX1Bcw53QboAm/4Bui5bNTz7hcJAPUSjjMLH0Nl
         jBay/UUyv2R4iOxlpGfES3RbUxRk+4yBjXLliH+wD5YdpGklV7+9k2hAaSqpeFcQ/NJ7
         sGAJrW1+vKzjbLDyacwwDVPsWCe8NA4GWih5XkHk4CKp0Y+KBzLIA5IAucTb3h01K0cw
         bPrF4P0uZZrR2l7YJJ3rc2ndzm51aNl8wjJLd49X7G+m/K1b5jUQVCnytT8Xuh5lTih5
         zMhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683399; x=1768288199;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7o659ccPqlRcuBDl7O8ryWDqKdyhW6txJF8zT31h94=;
        b=p5ZegXIB/kx7eW+ZcIm3PBF0AsYB5I53g9wiH4Yj5WQ0xylQpHzCVVpaCI8G0CGtwt
         Jp9rnTOAw7pknTr84W2+s5CAOzrNXFoEyS3DsXRkUB/z7cDNqfbxH7w/x//gdP1SXRkp
         gHPtRwfRMW8g0PnQeWeABhIYXoqJau3Cx+Gzc/6NVzxCyPLjzUy3mQCb782m9iEReFy1
         QW0LB2D3oDWJBpcHE+MgQQR4gB+x5UFA1uQjkHBRg65WKI9EFkz4sjIAZ4hc0iAlB7/y
         /CUP3bY8hBNI2HroRMJgztANXasnRrhg4drbOiWTGVWMFLOLI5EpYh6nhLzomx+NjyKY
         4PWA==
X-Forwarded-Encrypted: i=1; AJvYcCXjTSf5w/kotkkQFSn8BlUv64wNM3oqfdeMGUANt9WzI6Y8oEb+SCXkmqIX8kmn//05g7VrocNzYu4=@vger.kernel.org
X-Gm-Message-State: AOJu0YzhEuW2AuvVBUE/eIZQLLpxDlAkJEQ+r4sKlZJCUbMUDDrRotMz
	r32Tl/aB5OTI3pV3F5hM/Bk3HrMeXzhDdZ5iAR+xKwoinxW8TSTrNaM/0ryDJtBo
X-Gm-Gg: AY/fxX4R4pEddbTcERfOms+DJL5pGTfpLU0UTBORGpP4DuxU5Ag0zvt7R5PCnWNIo+z
	vdXaNUJMqI/13/S7ORU1IlQxY77miMBHfQ3xlikdmR28rcBqbuTt2tTzD6LScjwym/NqdMl3zXM
	CBXQNN2dTxQFdej4Jbx5pCYtIa6IBQ32vK3zRprODYPh1RC2hRsKAg+PQcRqI0otF58WOJgiuW+
	sqkkZ2QH4azkJwBsjt1x6uNf71a+1WcuiLAbUdZ+S4LwsV+8mjEkhw2qKSF1UZ/FqDBfU0/7lMM
	N4S2uZXx0zg7OqZOAWSlH2W9BDr5LOhCV2tZkJ9+ATYZhSS7SC5FZZPLSGx6A6ecYfK5jQOrC1R
	NuhqK5CEtQnuCw9+qUuUs8W9pHimS+Wyf9njcAxwSE70iilyDGqQWhFd3QUdBBfLdOrCaUf12Gb
	UCKiV6QD1kqJ9dcdaIpgFYm6pxVHyszmBf5mRFVZjY/ljaUsGhHIsLIs91vPJTVcLsbYnj4ypyg
	/91dsgrQg0sGF5x
X-Google-Smtp-Source: AGHT+IGeM92d6AYjrciZOIw9SOUbo9i5+h7INDVQMsCHIZQn+dEfSir/l1FBHmGgJZJtqtFnvk1OdQ==
X-Received: by 2002:a05:6a00:94f3:b0:7ae:fea:e928 with SMTP id d2e1a72fcca58-81880b6b844mr1777289b3a.18.1767683399080;
        Mon, 05 Jan 2026 23:09:59 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:58 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention change in datatypes of [pug]id_t(3type)
Date: Tue,  6 Jan 2026 17:08:01 +1000
Message-ID: <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

pid_t(3type), uid_t(3type), and gid_t(3type) were initially not
specified as integer types, but as arithmetic types:

"All of the types listed in Table 2-1 shall be arithmetic types; pid_t
shall be a signed arithmetic type."[1]

This technically means the types could be floating-point arithmetic
types in systems conforming to early versions of POSIX.1.

[1] IEEE Std 1003.1-1988, Section 2.6 "Primitive System Data Types".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/id_t.3type | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
index c4b87642c755..ad79394b1b72 100644
--- a/man/man3type/id_t.3type
+++ b/man/man3type/id_t.3type
@@ -50,6 +50,15 @@ .SH HISTORY
 .TP
 .I id_t
 POSIX.1-2001.
+.P
+Initially, POSIX.1-1988 only specified
+.IR pid_t ,
+.IR uid_t ,
+and
+.IR gid_t
+as arithmetic types.
+It was from POSIX.1-2001
+that they were restricted to integer types.
 .SH NOTES
 The following headers also provide
 .IR pid_t :
-- 
2.47.3


