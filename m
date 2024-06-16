Return-Path: <linux-man+bounces-1201-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE147909B0B
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11B451C20F98
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A03831552E4;
	Sun, 16 Jun 2024 01:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XumJQM+Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3C21527A9
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500782; cv=none; b=C5H+skZWZIQXaGqpDtX6iHILNADtzyJ2hz4hhCuYAtSt7NXHHPEI4n4xOkeXiYybypD8zE0KGVCwgrGUY0UqxKucAvN6ScxHORl4JSy0HULZ9lawUFZgGUHVPU0Am5Vy2W7L02k2FNy96vF4JQoGvPMveK354btc/RZ7v9vnznk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500782; c=relaxed/simple;
	bh=+fRne0fFO1Pr5NkvBSHMA1/BmEeUe/ICjXX1eZldXjg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qXL5HNv/g+i4kEPfUVurV/EsrNVm8QeNUfM/0WSIUgGhVtW7Vq6C3q5I2JUVYr9jxk/1X5TWmE86FnXAk0thu1ymMLnjYHdfn6VXtuQ9sb1Rtz3pkgNkf8beTDC2IgMUhYf78x2lxRCdfcRqg3dCtClQWxUiexwxRP4rFydFMKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XumJQM+Z; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7955dfce860so226325785a.2
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500780; x=1719105580; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SUp19rwrQw4ZtR65kjTVr/oie3/3JAuiCh2inOSnu+8=;
        b=XumJQM+ZhjDr4eyIZ8pK3gAEhxr6rrJrnYpUi1lmb1Ac9MAtrE9vS5sBuSn8BBZz1x
         TKxbLNqkhn8S3Mc29PTDnEiEaIp0cjB1a6yBRl826vxrGUXzFVXHzsaGYYeJw1ER5vIf
         RrWEqKIzzJldlSYNEJtCD0Y+2G37r5Kl0vdigl5geXyFDOju04p/dmf6Ghr1gdT3FOj7
         GhtKUjNniDENruqCqrhT+76WV1l3yJvOClV6rn+Gsm1Ft7WXQ/rMJ7DZhCmuaLpbOpkk
         xa457agS3tzdEwvy3DmCssWuxzPv5Z2v6RiTBt2gszSHQ/I2Ud2qVKbTIKMkFWPwgH7B
         HDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500780; x=1719105580;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SUp19rwrQw4ZtR65kjTVr/oie3/3JAuiCh2inOSnu+8=;
        b=VgThh2N9t7s1BWMjC+zdk27NcC0R7EKm9piuQRCsyKE+eIB5QNGVsblmjOe79qO/KT
         arSpGuy4mIO/VhGDu0CMgNnvKegWSBwRK3qqJTLoGHAXF21+Pn3J5MhBfh56nQpGlTF/
         /jSKKOkymi14tRed7yNvjiDiLfbw8TBopzdtWkwFOwe9SzmroqmM6IscflehVpoldJ1J
         H16doFHu2XxULBc+BNAg0cp5vpZ9sYLgb9NszYzS9Nek7rVwbTGwLheIS5gvbIvkKrxz
         mMZgDdYNILNzuYNonbAzhRkd17hL1oRy6VHRqz2gtyWiSkkRH3iXsUvJnxsrbf23utxr
         jdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMr/wQ0bXR6JK4ubKTkqplXuNPUjMDgDiSLA/SJFU0JJ+aEr/b4/WsL3QQ38AHQq1kXx0wYRBoTKL2qkIQEGef4BQpoRfx8ehR
X-Gm-Message-State: AOJu0YzFTh4nzBTVXz8BmVe6gQiW7UoWZSRaLOZMzI0TA8fh53ruc3kf
	nUU0E+AArpNhN9Zvyu0SlFFltsJ7VaczhxYXUKuUgsd1vOpjclEI
X-Google-Smtp-Source: AGHT+IF2wVtoPPoXdYDUJRlndAPkDRWr415rvwnkAJv7akysKjCokmQsEirSFsvScnCmCNEHIPEOMg==
X-Received: by 2002:a0c:f9d2:0:b0:6b2:caa1:e18e with SMTP id 6a1803df08f44-6b2caa1e2b2mr15727376d6.55.1718500780014;
        Sat, 15 Jun 2024 18:19:40 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:39 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 10/11] strtok.3: fix section reference
Date: Sat, 15 Jun 2024 18:19:03 -0700
Message-ID: <20240616011920.1627949-11-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/strtok.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/strtok.3 b/man/man3/strtok.3
index 34a90198c..ee9179d5f 100644
--- a/man/man3/strtok.3
+++ b/man/man3/strtok.3
@@ -131,7 +131,7 @@ .SH DESCRIPTION
 .I str
 should point to the string to be parsed, and the value of
 .I *saveptr
-is ignored (but see NOTES).
+is ignored (but see VERSIONS).
 In subsequent calls,
 .I str
 should be NULL, and
-- 
2.45.2


