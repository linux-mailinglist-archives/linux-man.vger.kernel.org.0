Return-Path: <linux-man+bounces-4745-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AF6D071CD
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2420D3010529
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C6CA1991CB;
	Fri,  9 Jan 2026 04:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dpb0h//G"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3038500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932422; cv=none; b=tOikS+wnTZ6Wy55MDYz+1i5fPWneANaCMmbwF1XpYX/XCmsgNTV6YMEjNNuPRbrHlpneGdiWP0/08pwOVKY8jUs6nqpXzN+f2OocNRK6zfpwe9A1gS2u/moh0XCSwFBIs5FGAii9YoPvg2kKCsYFg9kCu0NIItpLeXAkrClHRW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932422; c=relaxed/simple;
	bh=UzrpAUHfWX0MONNODQDR/OXADtRTcXpc2Fp6xfFfSqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MgyviXmh3B9BN6xSP6FeoqkNDxunFGcGf1eAfXLpVQZK4zD5h/a4bOSW/zntsXan98TtFqp3JKwPEDRPA9GIsvR3Ua1oEiNQNQe3Dm0jCKJ3ufyO/e2EMN7BJXB/DwpHsPZujnLxpZ2TXXV9/ERJ4quEh2RtJ4fezBkFuZhlCyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dpb0h//G; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a07f8dd9cdso29281475ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932420; x=1768537220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tE7V4Vf84Fm91eTsBQ+sD9pgMu92bfcygsHSYyTfAIs=;
        b=dpb0h//GZaxG6CU6Cigs983UsnHux7+NPzgo7dk6MqTaxxfb8d6u0pW0wxU6tUkuod
         9AqSejix8Y90yhsa9imtsM91XwdfQiAbvEobNv/EImNs63q67WKm5SZZGvLNhoNfLxfz
         w+AChaTN0lKBEHtN4Ky/NqvCopFTDfWSGnQ4hLvw68Za7FkOE/aMWoL1F6b8LSNJwRwX
         zBg5J33qxK8g2WneyjwBeQkNhsgVLKxUlK6JWZkYU+3ADz7eqUNPVRchnbmC1Eg+2hZ1
         tgu8iMiZMyfzlaFgD0QO+hxzVzCz8abST03EY5ruMFZ9g/LT9wOc3JvBz5CT0wzanlHM
         PSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932420; x=1768537220;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tE7V4Vf84Fm91eTsBQ+sD9pgMu92bfcygsHSYyTfAIs=;
        b=VZFmaOmhyaTScnYZf38oplcbf5VrzBkOcuAULLQPYa0e+Cm8zfy2DEKzozMC5pljmN
         XbUMf05VCVEoDdkFMQk2T5G56ymEvmcidCgBwyzRhB0rAQWjD1BuM7Jjj++t7c2UnQ5M
         nhwoe6LicTkYeBgYDyTETGwLOOeEn/iCQuLl+EftNfyM55hKBe2QBC5sHorWSxwcdzZQ
         +CDwgZueo/cXh7B0XAjW1p4MLi2x6x2vxfrZwLF7i/PasNIppQ/E7FtEx8YYxKZG0F6u
         0WEISZTcCoNXWEwUV2hjA2qR+E+80+Sy2+vOLFZo48/gN047W3vaXyUzpakfkMhoO7bH
         5OQA==
X-Forwarded-Encrypted: i=1; AJvYcCV1F0CmEQrP/fPOHLA7WZRn1QLRkKpjCrYqYrCOQMmRkbG7l/zRuAs5Y3BWdtjtDNVhtNpCQkL+h68=@vger.kernel.org
X-Gm-Message-State: AOJu0YzlryCqBiAAlMVrQ3q8C1NRW4Br5NL9ZVDU27ZEh3bd2nqKBEtw
	D3LeMGpzXF50yXGkJxVJwaNphBepmF15qXAZpGn71yLyldBaIEbLlyLy
X-Gm-Gg: AY/fxX7KymZ0oY3+WMHPGyNv7vaV+h8qK2fHxfGG3+usGFW4lY9r0AVxByZ+YMb691r
	I18rChJM5qXhqkf0Sh2RXax+LWDcwCn/ZTnvMdWRgHQ7waKvdCWHSC0WUJcFcOt/1mCbaib+U/5
	6kiedYM2DvxK1x2KscYtE3NwvwxUub2bMokRtKlFxgrSUTWyzXsiAw2o38v/BDEMdu0Xu8JjqjT
	zsBkzB8y/F3hxoUbKQZzacnr23pinQaDYIvxiHkrPK7xsKlIv5AmzHiR2fzs009Ba8n+7mVCAWk
	kCR/j6zYbC0fO2gABjHB8qf1kk58XRit0vc2mxTP+aVO9TnjdmdCU5+TpliyirKA2AwEhkmZ9UR
	CJZcvvgzHNUBT6XP4febdjT0nxuFWNsS8S1ELDr6h9DdBaekQYawrQth43eUtmu6y4xaI5GRk1/
	OnMqXeDivHt74GRLCAqDK4Ogh5CnqaXnEWIOn+jSdQy8M4wZhP0z3b2eTmyCAouvz6pMJgcrpc8
	OZaQrW8Zh0eXYVW4AdISJcb+Zti
X-Google-Smtp-Source: AGHT+IF4yJcyIDvBsWE5jRdUrxoZRY7JQdfErIWTHnIw5oVhlaeZs0z/8UfsRPqR6Op5lvKag6wxHA==
X-Received: by 2002:a17:903:b90:b0:2a0:b461:c883 with SMTP id d9443c01a7336-2a3ee4900e1mr80747195ad.45.1767932420143;
        Thu, 08 Jan 2026 20:20:20 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:19 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 12/12] man/man3type/timespec.3type: HISTORY: Update first POSIX appearance of timespec(3type)
Date: Fri,  9 Jan 2026 14:19:06 +1000
Message-ID: <9b6fedfdc71ee99fa2d6e400a3f139dba9036e25.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

timespec(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.1 "Time Value Specification
Structures".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/timespec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/timespec.3type b/man/man3type/timespec.3type
index 30bad58d1cf4..3e4d939bb3b3 100644
--- a/man/man3type/timespec.3type
+++ b/man/man3type/timespec.3type
@@ -38,7 +38,7 @@ .SH VERSIONS
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH NOTES
 The following headers also provide this type:
 .IR <aio.h> ,
-- 
2.47.3


