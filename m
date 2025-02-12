Return-Path: <linux-man+bounces-2409-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8821A32FED
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 845E93A1C80
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 19:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5BE1FF614;
	Wed, 12 Feb 2025 19:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZL2KpSik"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0151FF612
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 19:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739389175; cv=none; b=TFcDaTasTDzh/HgCHF4BsIlOjWZZxQkT4l/jYwLUDe5L9D7NLTcgG08rz8Gv91QhQK9nxA81SzNon0y++/rH5gURCK0SCR7iigPc2GfZPaUzRZoWUdIAos8xbhDrwUY3/0hj0klOOoLYCweF4lBKmTSRC+JxDYGsL3lTCbiL4d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739389175; c=relaxed/simple;
	bh=nKsFjfkJ0B5jW0rqS0E+Q225ELfXF6T6rPL8HAAEezE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJIpgRT22j1KMIWwS2HoDZ+mWLAY4iIHFMG01+2znk1LK/woZdoaaFij6+GrFzsM1d/GdeIX8J9AXgjAlarXfGKkHhgxSr3n8ZbYhEFTRHB2ORk2UlUcTGZcI0B9aGTKxY7Q0bJYhTebrXEoPOarDMdnAyCeSEa4GaLEO8VNhS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZL2KpSik; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4395560cc13so942555e9.3
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739389172; x=1739993972; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3RHDihgyWcN+h74sr9R+2BUPiG9XtMDOKY+QO63U8Tk=;
        b=ZL2KpSikoPlSP4amHZ66j79Tq/EmDR3XQErC9T06YTJUd6nVp2PaoOfG+3wrI/0U7F
         Sqg4FKO2/0QmTijSJIxRWZXoIYGlat/3BsiU134xIm6HfmL7XrZxVspR2e8GAk3up1zH
         Lw1WXdpMtUeYuWhkJr9HTdlREui4Zv+aWMEJP/H0iKFn4JMlLrV6cWRBw0+uAtaIKoys
         l/lXINPEC2h91kN0FGubKiQ1RvlDnCNN7P0+28TINmDflVLd/fRucgmCMllNijzmxsFT
         rI6T3uYTukyKN1WW+rqCrFtniTIWaIJENrdLpaP0LnVUh7XTpipWGst2UDuFZH/BG/jE
         E69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739389172; x=1739993972;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3RHDihgyWcN+h74sr9R+2BUPiG9XtMDOKY+QO63U8Tk=;
        b=QM0d9kadU598rZinnvQQi4WjLnl5wnf0Sd4Kfap9XoVkVh0JW7MSZbo8rH4yKIHk4Q
         r+evu8a32WUH5E0z37IoW4gr8cV4pkLcBiGN5ytLHyDuwjmWeqvC7klRwgXX0SOyzZRC
         JlcyoytN18spIPe/oEErzh93/weHwFO2hb3wh/H9OwZjNgE/dv6aCpJCcrJLRjJwx0Jk
         UEFTHt45vIAV+volKiHqSqvc7if7GCwq4Cjn1zwpK1QinIOfhzSe9OMAUFy+45ngnLjp
         4pkcpMh/OgpM5lAhziT1BSd1bt2957cuz1Ot/KFGo5VexRi+tU4FsGcDi1am3HVkKlql
         wXXA==
X-Forwarded-Encrypted: i=1; AJvYcCVWTBf06Dtm0WqWKWcBOzoweA6JnusEcOGw4hASTcyJpp2U8sua+3gmAzjU3xvb1zOol1+ZFPOEg3o=@vger.kernel.org
X-Gm-Message-State: AOJu0YwdFlJAUqyTkrVohCrNbOBSUT+YntM5ZqSe9o25eJMvw0lRWlzm
	CcsqQZOd7RKaSbyEZi+eZFyRse53Q62zhPrrbI0DLakXvXNaJUk=
X-Gm-Gg: ASbGncsNi9+TliQiC3GDtNfxJ9wmrLDAhcA7WuCHe+4MFs/YfYruQ617rwOYh2ZySw1
	jB38SnphNYiizTRA1B5zqvuYalq17nmNuPGjAYsNr0He0UB5dQePHtxyh8pFSdX8rvAKfXWLo2V
	iqucMfk6Q1/8D3rQhMdQ6ZhZJGibmzZuIHTw2bfjGcsX7NRGJYVwwPjZr2O8wKe7MXYo6BKrEfr
	ditsprwX+rEm4GYeW9IczJWiwbzTdcwQPjh8UeqIEoKHCggA4en1wwKBMRg/gFa008FnBizzZoE
	1I74U71SVA54XQ==
X-Google-Smtp-Source: AGHT+IGsAO871uJlvoy//6reSF6NXstw6zRKQv0BPLxWnfkdVbtCRixJfPCNA4W0Gq4L0nAyD3d0TA==
X-Received: by 2002:a05:6000:8d:b0:38d:ddd9:5905 with SMTP id ffacd0b85a97d-38dea2900abmr3114244f8f.26.1739389171600;
        Wed, 12 Feb 2025 11:39:31 -0800 (PST)
Received: from Amit-PC. ([176.231.106.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8443sm28947125e9.35.2025.02.12.11.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 11:39:31 -0800 (PST)
Date: Wed, 12 Feb 2025 21:39:29 +0200
From: Amit Pinhas <amitpinhass@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Amit Pinhas <amitpinhass@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] [PATCH v2] man/man2/kill.2: Add Amit Pinhas as a
 contributer
Message-ID: <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
References: <cover.1739389071.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1739389071.git.amitpinhass@gmail.com>
X-Mailer: git-send-email 2.43.0

---
 man/man2/kill.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man2/kill.2 b/man/man2/kill.2
index 8bb75545b..3022ae02a 100644
--- a/man/man2/kill.2
+++ b/man/man2/kill.2
@@ -20,6 +20,7 @@
 .\"     Added note on CAP_KILL
 .\" Modified 2004-06-24 by aeb
 .\" Modified, 2004-11-30, after idea from emmanuel.colbus@ensimag.imag.fr
+.\" Modified 2025-02-12, after correction from <amitpinhass@gmail.com>
 .\"
 .TH kill 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
-- 
2.43.0


