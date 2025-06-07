Return-Path: <linux-man+bounces-3116-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E4DAD0F43
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 22:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CFDF1885D7E
	for <lists+linux-man@lfdr.de>; Sat,  7 Jun 2025 20:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D32720F093;
	Sat,  7 Jun 2025 20:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SwqIRwdP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF3B1F17E8
	for <linux-man@vger.kernel.org>; Sat,  7 Jun 2025 20:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326624; cv=none; b=dYBeFAHj6uqcHZrUWjkTTRP4gH+My0udlHlzl/tQiYNxcYuStTBm6bFQL1Add7zUJaQVsmSIwHIprRl4G3abuqik590mWBibcQCuvGp4fXnlx7e7F1hmMKensubBacdHSwIrjczduDDbTxYAgMdgY97vghxI/UMHHC37DTrgME0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326624; c=relaxed/simple;
	bh=6URBJ0x53s50Wf8Q/V9d6zimvTUEa1lj+4Gc3IHsT2E=;
	h=Date:From:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=ZRJFUMQoZixzhigT4HkdbCW53at47m6RBNkd9T0Yp49TE/MnirJ9z/qCPLvs2BVDgVUR9DbtOshmjtx6LLpKfodZMu3UvALS9p28Y/EBaXFjet5gwHYdB8FonP38bHzq68hB2VWVFEg3yvBApiroqQElr8H/XKWW8zwkgYbJdO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SwqIRwdP; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4a43e277198so25353211cf.1
        for <linux-man@vger.kernel.org>; Sat, 07 Jun 2025 13:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749326622; x=1749931422; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WtCL53hD2K8QrsIbjcHU4yvCguzNR65/9vayIfMaKP8=;
        b=SwqIRwdPdMJ6lL6T3YgOPzyecxhFfUACIi/M3CzwwBaMlmRGjeNzvqsq/11OD3b3Th
         aa9+iswtEydBSbEIimXFeAnYWfWVQ509PxCQj1nK57NGjdyKv1F3z291Y6GvDIFXxcFH
         6pg92f24yMhnNdcnKFubFuOO8igRDEdbJN2AapGzSP0827d8dLKN10HWcX3NVTHtsu0Q
         AuVHVooU2daKP9ofgm4vgdBu6TqOo8Kn5uSRZcC/+rdfFQpu0/HnIDAF0j2ivuJScD7k
         CHUq0pUqsC0gh9MLbLJOPivu19CkvcysDAD4GAMx77FGdQLxsaXonjPtcVdpIdyF0zuN
         Ojiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326622; x=1749931422;
        h=mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WtCL53hD2K8QrsIbjcHU4yvCguzNR65/9vayIfMaKP8=;
        b=xKSpnMfWG4mbtuYFYQ1/Zkga9Gjl9F3CtM2rvHMA3sFxNWCwA2gjKQlp82frgruluL
         Xe1XZ9c+F9EmJ5YRY93uQIpXitgXTJE4u3PFckFeCFFQdvANQPKXFhYf2pFkHyVvZ6AF
         p0/0DXE32J8ka7f7OFT0uQ7nFnG8PwmYHuv7EFSnA8T0nZfgvrmYilu0T83yWprgVr7S
         JqHNN6lQ/Yg6xv5YzunFk4oUZ89TA7MWAiF0QysmdVqBxTM+ykP4QZ/SJ5yKrErssoxQ
         RKZqIxchKka+gH2D/CsHDKdnT0FQR4yEt4wBDT0CamKcgVQ4L289hhRXKuWRNPeTaKjZ
         f+dg==
X-Gm-Message-State: AOJu0YyeeL3wGWOWd7xhdUtmzT/XgDQg2E0iHd5/xOxl0jWkvY87pxCF
	FA1/BPrkXIt/BNWOCA7YN99eYJWtUw+/AfrxmYDkDh3KVqVKiC33ZooKRm4+iaaXX3scv4N+dfr
	Uc8eB
X-Gm-Gg: ASbGncspuMENlWJkGs3IYrfUJHrps/ifnYh+c2oFALFYdpQlA83EOwWnkQRsIQwIzl/
	O8SMZf4DkuezyZwdN/B+H/9kjkmY1Ve+OGfLbFoEf4qSXeOnPePTpphKp3P0iJKrvrfMIFZFbUA
	4tx/+cGfPr2hGjalkrCBpTRs6tH/SYqssDqZ5R79H1Wcbj+hNk0U6I0VkSjw16aLLaDxGSH/OT1
	ciN0z3DsKb74QAsxM+KF087RfJNtCb/bODYgvbxF6E7/sElIpHKfmm0FB2uqSfX0PkY3Nx0uyDP
	5+zwVJvfDqHqNeo7RIrT6940cWjzjNMNRAG/jPW/L22EC5IMBkYqshZMpVV1JeYx4jPMMHn19WG
	AggxUH8pYmgcQ6sN5PwVSW3tq
X-Google-Smtp-Source: AGHT+IHx9tq8eY5HaVtNAusQxKa+7u+GcC1HZWj927UPQKJI7XNDhniJZxF2EQGd+/29bTwNTYsXYw==
X-Received: by 2002:a05:622a:591b:b0:4a4:41d5:2a03 with SMTP id d75a77b69052e-4a5b9a05505mr148663381cf.4.1749326621646;
        Sat, 07 Jun 2025 13:03:41 -0700 (PDT)
Received: from xanadu (modemcable179.17-162-184.mc.videotron.ca. [184.162.17.179])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a619865e74sm35739241cf.61.2025.06.07.13.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 13:03:41 -0700 (PDT)
Date: Sat, 7 Jun 2025 16:03:40 -0400 (EDT)
From: Nicolas Pitre <npitre@baylibre.com>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2const/TIOCLINUX.2const: fix TIOCL_BLANKEDSCREEN
 definition
Message-ID: <4133nq62-2q49-19r0-598r-2opop948991o@onlyvoer.pbz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Current definition is wrong. The blanked state of the foreground VT
is returned, not some VT number.

Corresponding code is in drivers/tty/vt/vt.c:tioclinux().

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
---
 man/man2const/TIOCLINUX.2const | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2const
index 013344eba..90984e6b4 100644
--- a/man/man2const/TIOCLINUX.2const
+++ b/man/man2const/TIOCLINUX.2const
@@ -258,9 +258,11 @@ can only be unblanked explicitly (by switching VTs, to text mode, etc.).
 (Since Linux 2.5.71.)
 .TP
 .BR subcode = TIOCL_BLANKEDSCREEN
-Returns the number of VT currently blanked,
+Returns
+.B 1
+if the foreground VT is blanked,
 .B 0
-if none.
+otherwise.
 (Since Linux 2.5.71.)
 .TP
 .BR subcode = 16
-- 
2.49.0


