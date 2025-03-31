Return-Path: <linux-man+bounces-2691-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C28CA7612D
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8C68188852F
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C35A1D6DDD;
	Mon, 31 Mar 2025 08:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YbHEYCEA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900771D63DD
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409009; cv=none; b=VgSXxzPwN1KAnQ+uBqeNO0RiV2boM3LdvayMEu9/krBXuHLqRItjXAHHqIQOABnske8P4HXbj+M9IeaXEnYj46H4Kj6S4rSO6anZ2LlGm5v5b5mrLTDe1dv6HzeD5HBbcgqbXxtZLMG0vD3TOZrj6zIduePNIQHaruW3eUgesVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409009; c=relaxed/simple;
	bh=oTUb1b5tB/uVHc0tkGePk/PAmaDqCIZrWrtfeQhi/ZI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ap7EPuakvstUR/GbI/U9pbFeZ4qw5qbF3MiS7avXZnlldp1YY0YmCkZ8OliUheXnfowL7cjdXu/AgfpVkVBC9WzOx+98YUvHgmsWsdEkf0EThdCWcNqIYfA8uEEbvK6uSsc6fimqQ34f71u+LwJMlMUIw+8IoSeir0Ny3B31N74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YbHEYCEA; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so7933346a12.1
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743409006; x=1744013806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vdGAhReyYCviiNn4fGsVXuoN6zPmDD1Fg05I5CdmUrk=;
        b=YbHEYCEAhzTkb3tpdMPgfVD931gbDPQBZoEI6yTvf5ItOJhtGcsJKkQ3CfOxwtc4fR
         RhCPbCDT32G60thdCojETCTZw9nALn4mj6MV7D5gZl0hZB/l/mW2e5EBLqVbwChpuXBo
         R3fBC/ba0CNESOa08a95MA3ime8Mgd0PIEnTwsJrV3PeCnS/O6LacQhNthJaRpfE6doq
         4HUiaRhmT8ny/+RaEnlzgFgGVrcaft+Z1T5LZ/9SrrfD015xRDG6lrmv6ms80MlPQsfe
         0d6YJXst604TgGXnZK8jO1Sk++mmlCnLrty8FoMAQ+41DMb+baKlzQ3GzHTU+Icb0t7a
         IsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409006; x=1744013806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vdGAhReyYCviiNn4fGsVXuoN6zPmDD1Fg05I5CdmUrk=;
        b=gH58Qu0f49H0V5BqBgnzd6NK9NrFgZ6cuxjWlhjG6lnkxzGaJgFBdrJy/GhNs1bf+J
         Z53ZAXyZ+ULUcwsgjA3ucSXHpj/gzzkVfvJUqR3aEZSm8zD5UYjISkilMAHco4Pn1iUv
         HqTap/Gyl13N6t0l4zzHwKn4DVds6eZSgw7+w+M8qcXNH1eDSumdbMOsjlyOP6AdF4yK
         YTRiEtn+IP6+r/4MTB2kCsUikVmoehlYtCriig0dkzWPtRIc1FmwSx5pL9yB4dWb8X22
         nEJptAgozRBf/VmY7Nk0Gb4p6aaV20ISP3quSTM+helkgiHPYZeXvpfP91+TTQ3I9IJG
         JEBA==
X-Gm-Message-State: AOJu0Yw5oUeAX9jtB+RFeF87VW1SU7IBWD5JJ3mwdOe2EeUKMS6WY7Hm
	WYZq2RnDV0wezSkuegzvxf6YlHnhlZrRNcSMjjPZt7+YsS4RBfUNr7nhtr8H
X-Gm-Gg: ASbGncvqnK/5FvZRCQULcgMV9aZOgyZXGd+KO9bdwJ9Qpr8Udyeu+5253cmvtSiw2Xa
	7aXZgCuOyaYI8a0fMC0R8Ww///CEkjQwKHt8pfCAxT6YxqE5C3aRGj2uGZSncIB45Re89fYK6+R
	OciyfNgPxFeFQFWACPphhFE5GCnBVSZJkBUdLnCsy+jfOlwQIdknGlvmMDcy3gq/vtFtxeq6rBH
	rcWzAbJBoGw22lHjLbRcDHJjjOhrHNp0JH1sQYLgaLCBMY3xQwRLDQtuzY4/Ycun4/Hb89votas
	yEssN5rmQLCsF8ePytQLMtZjfKZQlaMwgnwPEUO2d8MOwzq01X6OCN+6+D5nBWKa1XFmMeYLeTF
	EFNS0j1L6r291QqFkwKr+23levS4nD8FaJZKM1hBH+zrpSjd0/pra
X-Google-Smtp-Source: AGHT+IG+aJExtP4lbEwl1pN0k183PR+IE9iyOTF/BjvimkYtGj5EG52yZ1kCP6T5L6tjcy1RwWl7rA==
X-Received: by 2002:a05:6402:3229:b0:5ee:486:ea33 with SMTP id 4fb4d7f45d1cf-5ee0486eb5amr6789103a12.33.1743409005393;
        Mon, 31 Mar 2025 01:16:45 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16f1b73sm5466528a12.46.2025.03.31.01.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:16:45 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] name_to_handle_at.2: Document the AT_HANDLE_MNT_ID_UNIQUE flag
Date: Mon, 31 Mar 2025 10:16:41 +0200
Message-Id: <20250331081642.1423812-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A flag since v6.12 to indicate that the requested mount_id is
a 64bit unique id.

Cc: Chuck Lever <chuck.lever@oracle.com>
Cc: Jeff Layton <jlayton@poochiereds.net>
Cc: Christian Brauner <brauner@kernel.org>
Cc: Jan Kara <jack@suse.cz>
Cc: Aleksa Sarai <cyphar@cyphar.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---
 man/man2/open_by_handle_at.2 | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
index 6b9758d42..e3ec70dd5 100644
--- a/man/man2/open_by_handle_at.2
+++ b/man/man2/open_by_handle_at.2
@@ -127,6 +127,7 @@ The
 .I flags
 argument is a bit mask constructed by ORing together zero or more of
 .BR AT_HANDLE_FID ,
+.BR AT_HANDLE_MNT_ID_UNIQUE,
 .BR AT_EMPTY_PATH ,
 and
 .BR AT_SYMLINK_FOLLOW ,
@@ -147,6 +148,21 @@ with the returned
 .I file_handle
 may fail.
 .P
+When
+.I flags
+contain the
+.BR AT_HANDLE_MNT_ID_UNIQUE " (since Linux 6.12)"
+.\" commit 4356d575ef0f39a3e8e0ce0c40d84ce900ac3b61
+flag, the caller indicates that the size of the
+.I mount_id
+buffer is at least 64bit
+and then the mount id returned in that buffer
+is the unique mount id as the one returned by
+.BR statx (2)
+with the
+.BR STATX_MNT_ID_UNIQUE
+flag.
+.P
 Together, the
 .I pathname
 and
-- 
2.34.1


