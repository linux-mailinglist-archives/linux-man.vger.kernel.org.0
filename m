Return-Path: <linux-man+bounces-4670-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 87709CF820E
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4FCC53045D89
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882A230FF27;
	Tue,  6 Jan 2026 11:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LDvChNA2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37BD1A9FAF
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767699920; cv=none; b=AqU+D022OG54TxKRCx+rqNAeEu9Ib5zi/jwwdiTVUCYMuU2a5xSA3DV6aLTA3KhyLTBDV/lMqwY64ZuM5Dlf9WsC2ecb82QlfnM5VubCmEkhTwUhU2A9h03jV4U6LVTX+Gd1eCmnHYAf3iFqm3DYoeCbMpMB8lZdbV2vXzpo2rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767699920; c=relaxed/simple;
	bh=9OMqHIdVP+D5qcjvO9cH4+pQhkEQAh67lIkSsHCzvNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IOuCu6c396BVzA5L9tvNelaN5LsE3LTx9nBL1QMHUG9V4+fzCqtBpUjBDQOGcrtsQ15jGKQe6yADxh3lTRzD1TnrRs9dC3n9R7gQFRAANUSssLAVBcjK4rOd0mR7LJOblJJ4FL3Nx2sLM6hAnhPN9ItWmfsksLTH9Mz+bc3IiDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LDvChNA2; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-42e2e77f519so525978f8f.2
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767699917; x=1768304717; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=LDvChNA2E0QR2uIpwjQtbYnRnmZU+khzw4dGzNEw/pX+u3Hp6caPsPKLBfdpWJAEqB
         n0aZEeOG1PYBGwgEgt1wu7TpvotgfZjsNx2TcyeUJHxeU1p9s+B/NlCk8UqEIVINS7ks
         TgzZMHrSqJnLxdZv02o1TjzGv8MidXYfkcAFRNGJOojaXewf4PI5oyXVnZCcKDVn6BNQ
         HdtMtrwBGSzbWqXRsybQPORnmAvdax7nEDrun4/uggm/T8qpqtnfHtdwW1tlCSVAwONs
         Vi78XdV8SzR7ccEOz0GcxmeoNe6xZpoZllJy9XfizN+MiOM9+Zq10FQQhVIm+TCN+NdN
         QC0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767699917; x=1768304717;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=qhT5tKxcZLYxDfrlO3cMjwyE9/Q+zi3sbpfnAZbZS2CWgXvMBAE8G3FPBFPEN/KcG/
         FPEbJvo6kTz1zBS6pYBOWs+5ifgQvMfBIcmU0rdW/1zACFH+ulg4XuZ0hMDrBCht7s6R
         ntt/VREoly+Tfdp25YDyZxw53lkhpNMXJtQWcd7YOJHjaRYUQfUPkJXJ8SMoHQac0Dk+
         6stYrR0l2LLRtA89hhDfzL04IHFWCcmVsPS780bFgJJMa8pDhk3lrvgEKQRCUb0QdDyc
         4cWCfH6dW0c2A8FFbwcg1LzqPfY9osTQusKvL4Yfcf5U6gzussyU7KAyiD/xnDP13Ze4
         PNBA==
X-Gm-Message-State: AOJu0Yy4IhCOf6SRCy3tU65k1qIQ5M0jVOoB9w7HFu8hcA6HDJoW2Gx8
	H190ntJvEzKDt53QM8AA6fWHjIBA2PCQe396KWVbbDfpAimVh9RGz4GM
X-Gm-Gg: AY/fxX7OVjW0rwIymwW29v13WJrjeA27bWuSoemfIbViIyNX+lXgEGdGkHHSLpIVisS
	JeScfeMLxp2pd6PiZmBvj7+4d30aQQzZXjFqnjeOR0gT7lF77e+svAVO+NFoQzA8s/wF0WNG3/J
	gpaweiCihBXPJesIKDS8PqpxDjoLlxQBGy5eKWDbZ0GRnyW5vwnAS9yRdofTuBCdjlNvZiBXs2j
	zfHSzpVAqYOlck8syfmugDZ2/6shKv3yOcAm1rfqXtBqJfLsByGfecAMxzTl3bjHFiU13E/HBoP
	M+nZNTT45np1prNf/xDN64gABBkzyJ0Wbz4NP/UuEcuv7eKwmPPTpD6veTEC9RBZrpoAKIE6yvF
	KJXUb7At/cswcOSaGBDI1L9sPU2oh18PYJZgndQs+E6Cfd5+47O09zOxzdXJ7DfKQtx1AujUVEv
	r2cubFILfMlC72g37vWzxHJ2OlpT2PGKrV/F+x
X-Google-Smtp-Source: AGHT+IHXEowZkcw3cXE+5dzLaj0wENzSGsydzczauV1OIP60uZdJ9H08umr8yJvjwAQZyFH2XHHl5w==
X-Received: by 2002:a05:6000:2411:b0:431:342:ad4e with SMTP id ffacd0b85a97d-432bc9fdf9dmr3759946f8f.62.1767699916617;
        Tue, 06 Jan 2026 03:45:16 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e16f4sm4070106f8f.11.2026.01.06.03.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:45:16 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH 1/3] man3/creal.3, man3/cimag.3: Standardize style and history
Date: Tue,  6 Jan 2026 11:45:08 +0000
Message-ID: <20260106114510.102952-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidated VERSIONS and HISTORY sections to match project standards.
Moved GNU extension notes for __real__ and __imag__ to a clearer
format within VERSIONS.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/cimag.3 | 11 ++++-------
 man/man3/creal.3 | 11 ++++-------
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/man/man3/cimag.3 b/man/man3/cimag.3
index 39eeb1007..946e095a8 100644
--- a/man/man3/cimag.3
+++ b/man/man3/cimag.3
@@ -45,14 +45,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC also supports __imag__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR creal (3),
-.BR complex (7)
diff --git a/man/man3/creal.3 b/man/man3/creal.3
index be07d8273..d05125274 100644
--- a/man/man3/creal.3
+++ b/man/man3/creal.3
@@ -43,14 +43,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC supports also __real__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR cimag (3),
-.BR complex (7)
-- 
2.51.0


