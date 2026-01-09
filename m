Return-Path: <linux-man+bounces-4741-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A976AD071C1
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48A96301A19F
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248241C2324;
	Fri,  9 Jan 2026 04:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HJWKA0ow"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05E0500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932412; cv=none; b=qL3G1PJbwel9d93Hxs44pGHOGEo9JDZeQNDqbJxPdwlGSzQa/0QCixHUtexbP8GBx2quMgyIRgkPsLSa34Me2CMFf4sLBdQ6JMya8TXBRWaCTeg2vDW7tau0dLz4kr2EhNYZHSnHDOzIpa8Gz0wEo8j0Za0IELMMfee0tyYejiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932412; c=relaxed/simple;
	bh=2WTvYKAP5ewzMl0d0fTnLbw+6wdEa/VHyGmeIMLZi5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KaUB7nkiySZEWTMnBpz/SU0JciwhSoWqksdvjZrozo8Z7IKGtGDhpZwMNFCW4Y353WEL2j6BkNBc4Nr1QO6hWZH0rBu2efj/V5B2BbdGSo2FPTVIRpoWcMGkYPEEqvu1jliR8vwWTiVxVW9K5kXc0hWRpw7tfsrbkMCsu1+0KYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HJWKA0ow; arc=none smtp.client-ip=209.85.215.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f194.google.com with SMTP id 41be03b00d2f7-c1e4a9033abso2089430a12.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932411; x=1768537211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XWCvFmGETsP5hJVgRdT+zmeTX7qK7dUAc5/dVU9judA=;
        b=HJWKA0owAIhg7EsTjfHcbvw21e4H1+4KGy+wqo/Mhgz9uip3q6Bn1f7XZT65MXkpQZ
         WLI6xDkGqU7Yyyq0VzG0fh8XQuk5C7vb8P5Vh4nVgb4u77QdQRVV/6/c+GJ9eCQadIE7
         ZrNqQv26UfIzsmFokIgp0HWf3TI7JRy3fgbwz4369F/klJwzKGiFF83jbLkFVhcjyBiK
         k5XQ77mOQIcJSVnokt/ftALilXCV/pPRSNnyoBrZQ5tsGi4UKWClq4kFZmYZk20D+VPv
         JWJ4w0sHUKy5xJbxjFOfPPv1TKzV5+2kIhpmc8FxHXQs1ATBoYuzwNV1r5ALOk614ZNG
         iSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932411; x=1768537211;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWCvFmGETsP5hJVgRdT+zmeTX7qK7dUAc5/dVU9judA=;
        b=g5SscOn2LEYHNS1RZn1dCqKhAWNe1X1ucwT9+vcjPWqfoLMgWGM2Zud8dKwVC7sYbD
         CfrSy557OjtWX9gHRY/8lvI+I4AtoLRXyC2REzphlnhKBGzicutsBnY3q4iv6fAAv0Im
         21Ai+eTxblS5VW8GOODc1Suvuce8y2zK9GQ/oYMajjwv4RdtNQQUmzNGbjDnYwUVAh9h
         Aj3lK+BRyjAZZ6JpBHeqdnt8v/wEnonns1ukIKXADCtFlcJTMbsU1IGqFFqZFhMlFPPB
         EmW1okQN9qfMnkMye+lN11LTBCpOEi51jJy/dRLB9VgezLvzVoBUEVDAkdW5twgGscEx
         yBFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb9dEg0iP0Pi5nfldYUgzZr0O/CiwJTfXzh7CRrM1XFmHQF7UBZciI7WDigSAgmzU9bkAWLuQlJjs=@vger.kernel.org
X-Gm-Message-State: AOJu0YyWZ+yTbeHcV1MYxAiu3BCHC3Ob+j/tP7mi3NzwOfODIjFebtTQ
	63Iib3lzq9c3oMolqSRL+0sRXyvPb0vI5XmhN9YxvcGqKXlFunR6CCUD
X-Gm-Gg: AY/fxX7LGbroGDvv/bCCWKTyZpa2MOjmP6qbGG6dbnp9/jCpcdw1q9AvtTuK99B4EVi
	/Laui9qwW4jBUm9MdTHjX2hZgzvuP6Dh/7FX3iBH3XJ46OR7AOZ0mnf5TSpvjPn8JvWbwfuSvSF
	TI7qmDTB0C9HnU6LidK+8XUlFyyI60zFdMChVZ6LUQV8i90dtsnfWigP5YBzKwNAEGAZf3mp7bp
	5XH0JkibcG+6WHeDJpvkkWMEqoPDEsnyPHTXskS5wjTJSQpfPT8EJjwuFCYn3DKsLFG3IwmbD3y
	v3duZ/n5rwWOclw6J1Xa2YIOZTsOg5fkeeQHhs3hEkBV3mcPq7HB96MtF2IGh13o/qQwroEc/aI
	JQ7Eur53s5io60A/7xlIwSvaptneYQ4lSH0P6rEuXBchBvOwpDal+e0LWTmksXNZollMz3WbQBc
	Nyu5bGnX/jnKQbFddcjhraWoKNgGzPbgNtbDeXeM5e5szN/0PwiNG+QUBarS2sHMY1FiIA+MqyM
	QvquUL1vSZdBAnDHW2lhaPR2A+7
X-Google-Smtp-Source: AGHT+IFpZpqQUtyz0ZxXTvJSu4naMN6q7vKNyo+MrpWz5ZSku1xeIxRFI6CR6JhajeX6vdla4ruFMA==
X-Received: by 2002:a17:902:d4c9:b0:297:e59c:63cc with SMTP id d9443c01a7336-2a3ee484c61mr73279335ad.35.1767932411133;
        Thu, 08 Jan 2026 20:20:11 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:10 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 08/12] man/man3type/stat.3type: HISTORY: Split stat(3type) from st_{rdev,blksize,blocks}
Date: Fri,  9 Jan 2026 14:19:02 +1000
Message-ID: <623290de35e6ae932d835ab01587acb237954386.1767931376.git.sethmcmail@pm.me>
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

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 44d45b4a52b4..21610f7ea723 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -135,6 +135,15 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
+.TP
+.I stat
+POSIX.1-1988.
+.TP
+.I .st_rdev
+.TQ
+.I .st_blksize
+.TQ
+.I .st_blocks
 POSIX.1-1988.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
-- 
2.47.3


