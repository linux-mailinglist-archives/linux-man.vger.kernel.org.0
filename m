Return-Path: <linux-man+bounces-3143-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BD2AD8280
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 07:29:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A431E3A01C8
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 05:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB50B1FDA89;
	Fri, 13 Jun 2025 05:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H2bFH/Xm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331B92F4323
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 05:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749792550; cv=none; b=k1I4uinKNY8dv10nmKa5ftpmF+svdKEyU6AlCWnea2WJXQBbyXuqv3UzRoyhHe7CBP4XiljF2zFykUWxJIPDvZM0qMci5yLdDdCAVCQ9Y30gMrseqcYKb1DdtPj2mitCDR4r9X1v3ndxkVaL8aaP6A3flJEttkjDkMaywEIjScM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749792550; c=relaxed/simple;
	bh=Bao1NMLmYACYXUtbynCiVrCIvmTSFXjOTP+1XUNlRcA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qm4FaK/t2XTsV+o+cehao/VqDkrJPbU0gMXUSvuqEsuLM4IEtmhjDVf/5OOt5Xt4e4nhiaKvrWLUVt1LmQ5OV1Y7Qu1k7PgvqcxEMh09dPZlq7NaeRDnPGCuMzmYMwvEeQw0u7TAtXE0pOBoRJ0QixeC5Qzr+cLWJfE1eooYfKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H2bFH/Xm; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3137c2021a0so1423829a91.3
        for <linux-man@vger.kernel.org>; Thu, 12 Jun 2025 22:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749792548; x=1750397348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LVoN2RShFzr+78nEcqCY6XzI7RYxNcZrSBYr1s3N73M=;
        b=H2bFH/XmsiKvXQZs43PJHqGxoWb32Xl58Q4axvVQK3Ig5aDpHdOKsCxcvGYN8i9HPr
         K3u0+qK09fNO2xInJz9Y1MQl3GaBjzu11waWrj5ZlD+csqDPNGr7qRrq79JSdUNvOlbR
         4db354nCIXqjelwKvp02EAVx61/FkAvAHIS7Pw/CfwR1IetJn2CIT2RG+SVTB1Bn3KBD
         fUfwNVqj93bG91Omc83mY0uApfH2I4q+EFw+ya9aoVmFj/+9DknskNVAmxcFIkUhD9Pn
         L2ganx6z/fXhVWgTzpz9ehE+lUm/cq0qZT+m+ZnXWhXWclJbyl5BpaXPAGAOkj5t78dn
         gmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749792548; x=1750397348;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVoN2RShFzr+78nEcqCY6XzI7RYxNcZrSBYr1s3N73M=;
        b=Kb6LfvcynkaPxiTLSy4NrzS9KiFbdZ53m4kHqDD9TfzF+hiEMzL5sy43w/D+kHxQhP
         NO/FNMilw1hCY7+bqjR7SXgtNt0pXxBulfZam4w5NsdpaNwLE/4kusUng6R685iD+sl5
         Vdnu6gT6gSiBvedIN9LyDws8nuz03X9la1OLFKXPrY51GOJvUBrnwXv/mv1OqEvKzqeM
         Yxz0nee4U+zfnFjwizIODrJv5awaIYO00AbohBLo3bk9l2xoRjmhWWWbOWCw9Pr9s/iZ
         tJmOA+CK4SJakYP/SezUnX+g6ISaEOeY3sOMJhGz4XjgwkK4HLlTBsn8j0F1LaoVm+qT
         9GRA==
X-Forwarded-Encrypted: i=1; AJvYcCUQVhp+OCX9lyPh+vtGWiv3X4BtoXbUnnlZAPSLU7pYUQtyzkEjzhTw0drm1Bxddt7VzqrP6tvvvv0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/k3LEnpjh+RgpiOOrTrT1HoDjm/SDKzFuS4XUNyxrYcDI6JxT
	u2D4uAFoE0hPLoUTg5aNoyiozq9QaZ41Vr5nID9mrsAJX/0rh87QGXOe
X-Gm-Gg: ASbGncuezCf75IFspoDBYsfawHkzvJbzgK8S2x6GMlHfZ2mH1p9K/FHVy+ZKVt70W56
	PSVypNHe4NWFOXDlKlfYCNBpwrhG9K8gUeQ5ij43jm17WX0kVwdgj7mCRjid/Xk8yfZrKMJttaM
	EUHfOykAVXfUluwQT3Z5OYjk9qmoVggtyWGFN3SzSzoosTWXVz67vNYf/Kfk3nY1rslS6M3HfQK
	8LmsC4kl8ZEhyW+ZarnbyvwQ7BYBAbpqzpw2b3rsNJdIGfcI78GEIU27yVS3G6oH0e04zqKEY4+
	YW70652pZQLrZ7RGdr836L1hyMPdL0/yAko1et64FLYL
X-Google-Smtp-Source: AGHT+IFF/Sh67r5wpO+2ivHzHlfIEzLgehGZBKl0K4/q339lGkxbAiGwBSEt80jAgl9pecRTW+pmIQ==
X-Received: by 2002:a17:90b:1dcd:b0:312:1b53:5ea8 with SMTP id 98e67ed59e1d1-313d9e9c8ccmr3049092a91.24.1749792548196;
        Thu, 12 Jun 2025 22:29:08 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::f55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365e0cfff1sm6296845ad.251.2025.06.12.22.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 22:29:07 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man3/ptsname.3: Document ptsname_r incompatibility on FreeBSD.
Date: Thu, 12 Jun 2025 22:28:50 -0700
Message-ID: <37f138bc5c5e6604f0a0afcc531694387d2cc424.1749792527.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The FreeBSD implementation of ptsname_r returns -1 on error and sets
errno, instead of just returning the errno. Document this issue for
programs written with portability in mind.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/ptsname.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/ptsname.3 b/man/man3/ptsname.3
index 748f1e19a..3254e7809 100644
--- a/man/man3/ptsname.3
+++ b/man/man3/ptsname.3
@@ -110,7 +110,7 @@ .SH ATTRIBUTES
 .SH VERSIONS
 A version of
 .BR ptsname_r ()
-is documented on Tru64 and HP-UX,
+is documented on Tru64, HP-UX, and FreeBSD,
 but on those implementations,
 \-1 is returned on error, with
 .I errno
-- 
2.49.0


