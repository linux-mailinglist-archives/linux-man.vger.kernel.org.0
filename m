Return-Path: <linux-man+bounces-1777-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 347E297BFCE
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 19:46:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81F60B2205F
	for <lists+linux-man@lfdr.de>; Wed, 18 Sep 2024 17:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C5B1C9DDD;
	Wed, 18 Sep 2024 17:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mev.co.uk header.i=@mev.co.uk header.b="LczUfTBD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp82.iad3a.emailsrvr.com (smtp82.iad3a.emailsrvr.com [173.203.187.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD2291E
	for <linux-man@vger.kernel.org>; Wed, 18 Sep 2024 17:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.203.187.82
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726681607; cv=none; b=QYjvumwWYEeds10AG14qOgVTjCFpnFP6RjyVpqlkJnY8FtYFu+Di+7nvxzOens6WDODAZSVSUC+eJaJ6b5hNf1zqPumuxyx8wyJy5RPPWeEd0yqALFiKSa+A4fGgsUHV5vG7ndqAlxdgM8GcrnU1jnqqUFmNA0qoHjtfc+BMDrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726681607; c=relaxed/simple;
	bh=e5HY9jarCw1hJecmicmncBNXl9abv7z3mctB35x2+8I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CjSYhGY8DDkdACawdo/mamZvb2Ery2KU9p0OsyXlBPPJ2l/Fi5Cxlz+5YAtdloniXE8UEEg3Xoaj6kpZ0SeXYUmmGB1SK7DQenPl//obXWBTFg2L14IfxPSsaBqFoEPMLyHMHvb9CY8JwrHvdlu/ULumsQpBwRzbOrghUf/fd2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mev.co.uk; spf=pass smtp.mailfrom=mev.co.uk; dkim=pass (1024-bit key) header.d=mev.co.uk header.i=@mev.co.uk header.b=LczUfTBD; arc=none smtp.client-ip=173.203.187.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mev.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20221208-6x11dpa4; t=1726672631;
	bh=e5HY9jarCw1hJecmicmncBNXl9abv7z3mctB35x2+8I=;
	h=From:To:Subject:Date:From;
	b=LczUfTBDD3bKvpEzCFkH4ZRBejx60T+7dHTsd0NFyo4L9GGAKoENiTh0t70aLToSy
	 KzEDwKGiNgSjjKmYXfJSqQZu4tVzScFQjpvbLXldYDLTnRK7W2YnCHMTahwdEb+jxK
	 7BkHU0LWCz4SUkTeksoNBGhuk0Uulg0pQO/Xp2Cg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp35.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 957A15B3A;
	Wed, 18 Sep 2024 11:17:10 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Ian Abbott <abbotti@mev.co.uk>
Subject: [PATCH v4] fgetc.3: Describe handling of ungetc(EOF, stream)
Date: Wed, 18 Sep 2024 16:08:55 +0100
Message-ID: <20240918150913.15622-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20230526160944.27743-1-abbotti@mev.co.uk>
References: <20230526160944.27743-1-abbotti@mev.co.uk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Classification-ID: 4ed73e2c-17f6-462f-9233-5c63debb4590-1-1

As per the C standard, calling ungetc() with the character parameter
equal to EOF causes it to fail, returning EOF.

Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
---
v2: Correct English grammar usage for "otherwise".
v3: Move detail of EOF special case to the end of the paragraph to give
    it less prominence, as suggested by Alex.
v4: Rebased off master branch.
---
 man/man3/fgetc.3 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man/man3/fgetc.3 b/man/man3/fgetc.3
index 19aaecd16..8841bcf2e 100644
--- a/man/man3/fgetc.3
+++ b/man/man3/fgetc.3
@@ -62,7 +62,7 @@ A terminating null byte (\[aq]\[rs]0\[aq])
 is stored after the last character in the buffer.
 .P
 .BR ungetc ()
-pushes
+normally pushes
 .I c
 back to
 .IR stream ,
@@ -71,6 +71,13 @@ cast to
 where it is available for subsequent read operations.
 Pushed-back characters
 will be returned in reverse order; only one pushback is guaranteed.
+If the value of
+.I c
+equals that of the macro
+.BR EOF ,
+nothing is pushed back to
+.I stream
+and an error is returned.
 .P
 Calls to the functions described here can be mixed with each other and with
 calls to other input functions from the
-- 
2.43.0


