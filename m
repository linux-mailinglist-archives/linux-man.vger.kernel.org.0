Return-Path: <linux-man+bounces-4338-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1BEC8E725
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 14:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 10EE34E7CD9
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 13:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B313261B83;
	Thu, 27 Nov 2025 13:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U5WSn+a3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634FB248886
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 13:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249784; cv=none; b=b3e1BR/UeR4gWMdr97X33t5ndEKB6fjwO+kBd3lT4guoI/YohKYxqBPfORm0nQpuBGFxrLgLZ4vJFoxe188WhCsx2rfGN4e/EjgkahedN1oFfxeFsrnoqjlHoFgoBTCumYPd2uKUtxqBGdYFGN+Xot5Hx8VzUZbQzArzvVO9D8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249784; c=relaxed/simple;
	bh=7GDd3kcHQhN9SvunhqkhMYXm4y5VbZvgtdqMvGWvRpM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=J3dz0i/ltX68tFFq8bZHyyVLf8VBhwDzGN7vkKMtu6B7EcbEwuCAk93dFg3gZt/sG4eTY+B2Z3rqXcFwr1Tn947mAp/SxoxH1Pxwdl7J7LO9Nn9s3Z1xISemJ69T3Ptv8jEbDfq3gYugqg2UkqGdD5oD6ASk3q9d97v9E/2BMTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U5WSn+a3; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42b427cda88so619913f8f.0
        for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 05:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764249781; x=1764854581; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Vf9AEiDjFd+PjhpRl0JTXpK821qA277VVDHpLl6a6Q8=;
        b=U5WSn+a3R0AuHquUlHeYVAEDl7a1xhJUW086TGipOMiwOqoGB03Uf/Rh92Ayx5K31C
         WAdDwEJkgqqvLp/mCk2JbJEK8ysxdPISxUUJELC3dR0A21kE0poc3iaFXPqinragp0/9
         hHUL3DtWReFQd4aUarphuyVR4eMsIMujRhP3CjVIMQxAYBilZ/6HU69HU3c3Bk6InyL2
         gmvL5psRuVHwJlBCgBZj0M2zrrX1nnHuJormq6J3HwdN7aPUATJ89uueesHJdvUGYCyP
         O/kEhC5FpI24UwE32U+knw1TTHrKFg/T7I60QVwQyPVPxoqv6vyF71dk4ww1i5HhOs/l
         dvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764249781; x=1764854581;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vf9AEiDjFd+PjhpRl0JTXpK821qA277VVDHpLl6a6Q8=;
        b=cNYRo4ueVM8Lvky+hNgdmZpK5/IavxUWM3kofEC7sXX5SHZya1j4TQIEC8yTjiAig1
         4C3ibw3NW2ZBMLSKadQ5L0fzHgLB2Z5NUbjkPcdCKHpawgJSvkVvcmXUpWPl+bUouD6H
         K6uvZV1xKyGiQXITvJJYHCqpXMimwWOpqkZn8Yhii4nCqY4tb3SkqYbWZ0BG7IySsvrK
         BhJDgQ+aMSVY4g4wuneZvggp1438YNSAj/3EFcwhPGBzp7ZIvXzhoC8ugwickigDwwzw
         6/CHu9QwexkAnLJL5B1daWTHhge70xcdPf9MxYdJCveIeH3FlsHGm6d4gQckAdGRzpKx
         yFKA==
X-Forwarded-Encrypted: i=1; AJvYcCVFpFhnEKmM/16TvA6wbhiqVXp9C7Q/WubM656K8zTdIR4euic9P8IXkzKoRZLVx1JwMcfMkY0EZ+s=@vger.kernel.org
X-Gm-Message-State: AOJu0YwijiIbKpJR5uAsJ1FRYBV5fWonYmeP2z4cTa9/lqExmBEBUwyL
	P8Ak+5vzvqWdLUcHBcufH2K9TA9/xNtUH27SIjvcvuYgSTT+lEJ8XQgH
X-Gm-Gg: ASbGncsEm0Ktr38oDodoh0RHxCd20A+9y7o0OJv55V9ty9nbRBSYIxbCF+cf8Oo/GN+
	XFIJ3ioSiroozrQhFvxIZdcM4pgdyMcGV7re5dbF1SNShHItQvgTwwf8xqEFWTJQkxHom+Bgh6d
	ivVJdkKO4mQePw2Q+Vchg5f6EmtY5bUq0ibMELjNiWMsbcS8fSdXXlE8byZQU41vxOwXoSukGgX
	gPL3+7gLwlKUA08Yz/Fz/e5zFFRTb7tOkYdsSRaRQtMZmNnD/lCa9VXjFw709daZCZOLtsF5z8y
	FTnvWLIoA2DSROtg66BxYi33X+V6H6SLkXcfdwsHbhLEXNe6H1LOcNhFmowa7OlDxsHKet+JWPI
	5Tx6YTMbz6R7y6qKj+EPtWA+qbGTs06d4D1yKjEkT8ecWE5LmTq0rr2bE1RDzJQ9AFLzTtrkiUJ
	qSWsHTMh16heXPS5pLxn/CIB1VVVKyZWKb+EGT
X-Google-Smtp-Source: AGHT+IFc4QiMkhX7SHrNVPtx8M3chFIVdhsYnY2bk49bHrP93YYxClCv6llY0/JmbdpHz/BhsRUVjQ==
X-Received: by 2002:a5d:5d10:0:b0:42b:496e:517c with SMTP id ffacd0b85a97d-42cc1ac9146mr24845637f8f.13.1764249780540;
        Thu, 27 Nov 2025 05:23:00 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1ca9aea3sm3492286f8f.35.2025.11.27.05.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 05:22:59 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alex@manpages.org,
	linux-man@vger.kernel.org
Cc: Simon Essien <champbreed1@gmail.com>
Subject: [PATCH v2 1/2] man3/getgrnam: fix ATTRIBUTES table after adding R-functions
Date: Thu, 27 Nov 2025 13:22:31 +0000
Message-ID: <20251127132249.3566-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man/man3/getgrnam.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man/man3/getgrnam.3 b/man/man3/getgrnam.3
index 7d6365caa..87eaf39d5 100644
--- a/man/man3/getgrnam.3
+++ b/man/man3/getgrnam.3
@@ -1,4 +1,3 @@
-'\" t
 .\" Copyright, the authors of the Linux man-pages project
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
-- 
2.50.1


