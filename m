Return-Path: <linux-man+bounces-3192-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC75AE0FAF
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 00:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E932C17863B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 22:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 495B927E7D9;
	Thu, 19 Jun 2025 22:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A3sqVY5g"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E4F1DB54C
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 22:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750373044; cv=none; b=JivJWXfB65BqoPr12dtQ00veXCld3XAQ51VKAhAj7VmHKtBVe9+4fZK/gDWUDQFRrURHhnqUpJwxf9UH2KXe4pWqGzK2OIOfcGMdvGxHtYjYpcWAeSWd+JGDQgEU7elx9sD2YfKZMj9YUhOYTeIez5xlM3HDN7OU7iNNcWuXseo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750373044; c=relaxed/simple;
	bh=cgKl6QJCkQ3rDodrp+ly74xlYtoccAY8FbVXTpKbm8Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K13yZmoLiG2z+OCmb0+1KIAAnxy7+4kp1/aoQOV7Xk0sBlq/rmUVqasm5bu0yXNiZiSVkfKwqWE9T0NtSC+W0pTq1SVaHocFQW3oeF0MKlS2FSeUxGSrizl5TuCEmLyH7yYdLhbqRwxy8gX1Deg6UGdwJ57bQjhTQQIKKk05fKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A3sqVY5g; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-23649faf69fso11267905ad.0
        for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 15:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750373042; x=1750977842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3W+XTpaQmiYL1n/m9x3KBD1yBc23kEJMiIuHnxnDlu4=;
        b=A3sqVY5gR1eKMrXDCj8m/Q1RCLNbJ10L8OQ6lA6xJYMqSDKT+1neLj+llLCz0JXqtO
         86CSiEiwiw28ZpVZznRqlrYexUSreURl84+ryZKYm844PJBEQ58q8wakh6ewIoTFRFSp
         sFNhGHPI7qiAfS7Is0yql6ISmWjvGcR6gFgG86RS9quwhEQ2I6Puv/Wdv1V9JB/oSDlO
         s/zrrzD83IxMS1S8ci/GcAJDLSIz2RuXDldAjYLxZBdy5UipSIAEBAyMkBYMFP1Cbyux
         ZCZvyN/rWWQo/7g9q675tCZx/qm1GrUBdP9Yvw3xcUmTV+tMezq8hR+Yl+r/6p18zHAF
         b7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750373042; x=1750977842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3W+XTpaQmiYL1n/m9x3KBD1yBc23kEJMiIuHnxnDlu4=;
        b=vvXsJt8YFNMdFVVp+QESpSREe9UADSrB5QEwtNTVdMBdl/8IYR8usd0Kn7u95n8yaY
         ACwAhS7YylMrPWc2P690xLPa8A3P0Ha0epffrrRYR3hSGZPeEquKgVKRjcaO/Ee4xt9W
         lVGBlq5ic9/jyNVXt52JQJKIVbrZcb530vCALIPrQ6kGD15c5FGmYIGZyy3Z75JgfY8A
         ecIQvN+/xu2NuNSfYtjaCny6cra7RNtjnxJMYJBz9SiKPsuKtVbP7tqfp7MjEN4a7Tux
         xqaG7Hh1R4lZcmkv2k+l5dfe3o2g5d8lD/Kw914sAPssQhpH/sALY2+AfYQffdGRQ/Hu
         OiEA==
X-Forwarded-Encrypted: i=1; AJvYcCWWatJnCNMMKzOEb8yNgOET1oqn9cJ4EVPVzErPesn/Efz3uVrGGMH98yvdOQ7Cc+UyaT/9RuRDVpw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwckR0Q7O+bLDndW49wY7RXWEqlHHrxlOKG0200E0fk8xgVLZfv
	ERZ3H1Vv2U0XnNhi7Kb8GtEVlJTQGF7yNUQWDjvWrdoRD4n57gpC3gNO/bRqag==
X-Gm-Gg: ASbGncuh10x/xISLenLzE+wKwMoIPRC4qHFSPkWhRtZWcmUYDG3F7Y8m+BFVxljP94H
	pnsdn6k7MYWLJcelUC4ihUinbIbiohA5tcgzFEOTo293q0tu6bl2JZPj0LM+ZgQws5zXSMGpD7z
	1KAemrVgxvLbGDpx6QNWCtQJBPlf2H8Eqg+rT1HnjT8pJxf/Uoliv5k32z6WZRsPoPWD7wJn6NY
	igf6l0xVC3Xdhh9dr5jt5gm6fFWrgnpwt9OHCMJmW8NGlJSccCjdzOf3exAc1kHZaDyUPNmxT0E
	1ptDxmd6LPbMImmWDX28IQ2uC2kZnpMTJJ2vkSp0VixvQnYpp9FWoDgt
X-Google-Smtp-Source: AGHT+IF7SV2ViSVgwZeSpdbVbMsE1Qj9Ul2hJeIiy4KltY7K7tUu9Sh8FONASbCDNNelIYTd+rkVAg==
X-Received: by 2002:a17:903:2381:b0:234:8c52:1f9b with SMTP id d9443c01a7336-237d9ab0946mr8251655ad.43.1750373041855;
        Thu, 19 Jun 2025 15:44:01 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::15bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8393741sm3479985ad.15.2025.06.19.15.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 15:44:01 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2] man/man2/gettimeofday.2: Declare functions with [[deprecated]].
Date: Thu, 19 Jun 2025 15:43:49 -0700
Message-ID: <2d37d5a9251af3c1d25cf8e73e3585a9955d5772.1750373011.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As documented in the STANDARDS section gettimeofday was deprecated in
POSIX.1-2008 and removed in POSIX.1-2024. Mark it and settimeofday with
[[deprecated]], and mention clock_settime as a modern and standardized
alternative to settimeofday.

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man2/gettimeofday.2 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man2/gettimeofday.2 b/man/man2/gettimeofday.2
index d954a253f..83dfc2e5a 100644
--- a/man/man2/gettimeofday.2
+++ b/man/man2/gettimeofday.2
@@ -12,8 +12,10 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/time.h>
 .P
+.BI "[[deprecated]]"
 .BI "int gettimeofday(struct timeval *restrict " tv ,
 .BI "                 struct timezone *_Nullable restrict " tz );
+.BI "[[deprecated]]"
 .BI "int settimeofday(const struct timeval *" tv ,
 .BI "                 const struct timezone *_Nullable " tz );
 .fi
@@ -184,6 +186,10 @@ .SH HISTORY
 as obsolete, recommending the use of
 .BR clock_gettime (2)
 instead.
+Likewise,
+.BR clock_settime (2)
+should be used instead of
+.BR settimeofday ().
 POSIX.1-2024 removed
 .BR gettimeofday ().
 .P
-- 
2.49.0


