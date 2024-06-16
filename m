Return-Path: <linux-man+bounces-1208-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E54B909FA1
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 22:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 774E71C21192
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 20:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9A7C4D13F;
	Sun, 16 Jun 2024 20:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pcq/6vdQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 608493A8CB
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 20:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718568843; cv=none; b=D+DqLXPQlP/d/MX0OTkJjYYp71huf1dKK/RPwrHKsQkWJrGUB/F1bn2Dv/L+IQFdmX2masF85N00DG2aGI0PvR7+JMMbXgB1TKC4xiNTgnbA57l2JFpq0aBCi82NtS4Al8uGok3e7RHaEhwS7UgV5Hbb64SqNL3ViDqB0/k5ly0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718568843; c=relaxed/simple;
	bh=wM+u4oT1irEi8mpzxggiZFKpkko0ganzfbynRj3C1x4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ICoE7E9AMztLHDe4Ys9KbZVt14WsUy30aVT1d7qc/CVl6svDFrOWSBrdEXk7aiIE7wgPAj+1DqP9Iaj1BjtV0Sx/05CS6q3fC7dOrC00/4BXb3R2Mm86vqzKz8INM2Md9DWyliq1y8Cz0hdojuABbBUNK+hWY3N3Jai46oYf+DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pcq/6vdQ; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2508320e62dso1973056fac.3
        for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 13:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718568841; x=1719173641; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16Uj40n4VwliVAcdrABmuelta04sp41nUZ9n7jYaczQ=;
        b=Pcq/6vdQmKkGi6Tx/QIF2Df/qtkNjdpxZLTta7sFd8EfaOxb0cXJuAUo9JHi6i/5SM
         eiNXKmJf+y8F9UcRyiDUjr+gwVDpwXn3q4VxJSCQA/eokndkYAhNxDpYpYEIKCShTDCp
         Rrd9mjgDgwZNj+9byZ2N1Nxf0xBrwMGqNwQf0CkWEF5zx77AHRnf3N6xXxZXW+e6j+zd
         k6P2GbpELCoLYdzEnJe0F3Vhmv3V35enI1tSpn+WrkPU5bVyLM4WmmD1i0wvTGJFwySw
         1KAXf77DA6EmgJbAsthggv8MKbThVhedPWJf/gUgW6qeMiSvPC0BFh9Gm9WepgXPzRS4
         WSJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718568841; x=1719173641;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=16Uj40n4VwliVAcdrABmuelta04sp41nUZ9n7jYaczQ=;
        b=JmuNLoGCo0zga4dgzCEN5J0mWVwG4M8MiweNmXHkXznnmKBkbg5lyZuUFHlU/O6saK
         nTNWe6gzI8HZdMRihn2w6wpp8odtRmAgU5GExUI7F80j0dCJ+kMs/sCU1VBFWxYr2DR4
         au4ucOqLYeJhcu57ov2xDXXVIeM7qSrZYYELNy1J4Y8Xl37gTXkVD+VVQGNmdUCzcOwb
         Xx/Vykxx6nfsdy8u0MFR2FG+y2pdQ9efrYv8IFemJcP5vHvWORXGy5ggfXZMevmzB04U
         FgyOhTKxgLVbEhDe5+gjSPPl1/WRQvGSp8kViaMoUzj12jqmDtTfhaN4TqA2zAEq6s+5
         XYGw==
X-Forwarded-Encrypted: i=1; AJvYcCVJdeWd8/9cTK74RWJaXF/xtNW3sFEXnf8G29KjEubQ0oLYMVrzWwJDNkLqUyUHnb6F4Rc0IZlkKL+3x79VHXPmyO8EHnaq6IO8
X-Gm-Message-State: AOJu0Yx9chtkj5RQc1N98ZI1hR4tIekbzDAdwhsfLcnL/tQjSKhwhi0n
	pV9Kg4S7wuVHu4AtDrFesk+jYvDNapwvWWf4xqlA6TkFUYZxZNHz
X-Google-Smtp-Source: AGHT+IE63LCn4PRco5tiWnV+rgw2K78Wuy5rermZ+w3Qjre0Oy8xYPgb6KkOJW7fmZtFmHce+l6w5A==
X-Received: by 2002:a05:6870:1696:b0:254:783d:aeb4 with SMTP id 586e51a60fabf-25842a20260mr8501233fac.35.1718568841114;
        Sun, 16 Jun 2024 13:14:01 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5eb4d78sm47185626d6.95.2024.06.16.13.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 13:14:00 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 06/11] readdir.3: fix wrong section references
Date: Sun, 16 Jun 2024 13:13:20 -0700
Message-ID: <20240616201323.1662948-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <stctfcc3dl6vdg25dnjx4e5z4qa5whjuqrdpw4c2htpblelcfd@sllphswpkhce>
References: <stctfcc3dl6vdg25dnjx4e5z4qa5whjuqrdpw4c2htpblelcfd@sllphswpkhce>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are references to NOTES section, but since the commit 4131356cd
("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize
sections") the relevant information is in VERSIONS.

While at it, unify the "see XXX" style.

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/readdir.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
index 731e25c85..094f21080 100644
--- a/man/man3/readdir.3
+++ b/man/man3/readdir.3
@@ -59,7 +59,7 @@ .SH DESCRIPTION
 and
 .IR d_ino .
 The other fields are unstandardized, and not present on all systems;
-see NOTES below for some further details.
+see VERSIONS.
 .P
 The fields of the
 .I dirent
@@ -85,7 +85,7 @@ .SH DESCRIPTION
 .I d_reclen
 This is the size (in bytes) of the returned record.
 This may not match the size of the structure definition shown above;
-see NOTES.
+see VERSIONS.
 .TP
 .I d_type
 This field contains a value indicating the file type,
@@ -137,8 +137,8 @@ .SH DESCRIPTION
 .BR DT_UNKNOWN .
 .TP
 .I d_name
-This field contains the null terminated filename.
-.IR "See NOTES" .
+This field contains the null terminated filename;
+see VERSIONS.
 .P
 The data returned by
 .BR readdir ()
-- 
2.45.2


