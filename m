Return-Path: <linux-man+bounces-3118-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C48FAD13BA
	for <lists+linux-man@lfdr.de>; Sun,  8 Jun 2025 20:19:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC43A168FE0
	for <lists+linux-man@lfdr.de>; Sun,  8 Jun 2025 18:19:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3210F193402;
	Sun,  8 Jun 2025 18:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjY92vEt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C3713B58A
	for <linux-man@vger.kernel.org>; Sun,  8 Jun 2025 18:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749406768; cv=none; b=Dwg5lGWq6BdDGswoMhjfAmldkaijMJ8FLJWC8S/qAtA3ny2MLbGwbaHX7SwPWBSE47PhVdAKF9f6jESIRVD9XzFyXUUJLvTg5wZ8NqfW23lIosSQ3kQ6A1H0487OIPrivchmHxzQysbMeP8dAK9iG8Y1J2eYOcN/X80Fpm1BuXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749406768; c=relaxed/simple;
	bh=Zhm7SCSlREG4OXcoXjYLCUKxDIfBvlvXGIDwU+tWQ7U=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=df9MPQa38XGnboVS2LZ9lmIgXH+6laQfHJyUPe4Uv/KPvGKOsCym0ZIM83Bw98Nk+1O4MljGfGrxboObnzxAWPlar1Ps8pohx6RKrEvhFSWyNPTnUZsl1CevbnmZ6F45CVdX6ZUA31/2JXDzw1jF+XHoCLv0c4HtYRtYQR8AZhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjY92vEt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97F80C4CEEE;
	Sun,  8 Jun 2025 18:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749406767;
	bh=Zhm7SCSlREG4OXcoXjYLCUKxDIfBvlvXGIDwU+tWQ7U=;
	h=Date:From:To:Cc:Subject:From;
	b=cjY92vEtCRdCMFIAp+CP8W7wzMCpeYrtgg+N8v3Ka0be8PkZJA/TzWgC5dp1ZM6Qq
	 3YuiRDs4FCrYU4mDaNPXHFykTnWrhOsMOwwufClYnBupTRiFH77BHwPJ2Ust//4Jrs
	 7UFkjxg9Nu0Qp5sU79LwyZDys9a5J6cvLtwMMTAidB2V/WTIyOoc9UNrtlP6aAXf+R
	 Fi9AFNRJZ4LCllFhK+/3K9LGZX6B9PHn39l3V1wAAAiAWdEUYEJiwVEg7/zoprNeAK
	 NPgorjkav8v3k5/D8kwH3cQzKPkFjkLkoKDySIXof1lRj8X5u0tmm3SK0xWfjxUqOX
	 Io5uMXk0vCcDg==
Date: Sun, 8 Jun 2025 20:19:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, 
	Alex Celeste <alexg.nvfp@gmail.com>, Jorenar <dev@jorenar.com>, "Fred J. Tydeman" <tydeman@tybor.com>
Subject: [PATCH v1] man/man3/scalb*.3: NAME: Document the meaning of the name
 of these functions
Message-ID: <8e5d4e0bc1e47fa819c3f5c0dd3f7a9fe0b7c699.1749406724.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Cc: Alex Celeste <alexg.nvfp@gmail.com>
Reported-by: Jorenar <dev@jorenar.com>
Suggested-by: "Fred J. Tydeman" <tydeman@tybor.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/scalb.3   | 5 +++--
 man/man3/scalbln.3 | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/man/man3/scalb.3 b/man/man3/scalb.3
index 408a9f830..6cae50f7a 100644
--- a/man/man3/scalb.3
+++ b/man/man3/scalb.3
@@ -5,8 +5,9 @@
 .\"
 .TH scalb 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
-scalb, scalbf, scalbl \- multiply floating-point number
-by integral power of radix (OBSOLETE)
+scalb, scalbf, scalbl
+\-
+scale by an integer power of radix (OBSOLETE)
 .SH LIBRARY
 Math library
 .RI ( libm ,\~ \-lm )
diff --git a/man/man3/scalbln.3 b/man/man3/scalbln.3
index 0a6c132fd..e8a4c74f0 100644
--- a/man/man3/scalbln.3
+++ b/man/man3/scalbln.3
@@ -6,7 +6,7 @@
 .TH scalbln 3 (date) "Linux man-pages (unreleased)"
 .SH NAME
 scalbn, scalbnf, scalbnl, scalbln, scalblnf, scalblnl \-
-multiply floating-point number by integral power of radix
+scale by an integer power of radix
 .SH LIBRARY
 Math library
 .RI ( libm ,\~ \-lm )

Range-diff against v0:
-:  --------- > 1:  8e5d4e0bc man/man3/scalb*.3: NAME: Document the meaning of the name of these functions

base-commit: fda4e7b0c420f42f704dedd71733d6766a8eb41c
-- 
2.49.0


