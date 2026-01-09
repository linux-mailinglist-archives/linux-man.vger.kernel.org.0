Return-Path: <linux-man+bounces-4765-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A5105D076C1
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9490D3010D7D
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA75F2DF142;
	Fri,  9 Jan 2026 06:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ff8Kpsq0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817D92DCF58
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941015; cv=none; b=NVL/v/qi1Nf9PAiCwS5sD5j6KTJ/8dU9IOy7kfxw6ATOdaXOIkk4/lSmAKPE8JsF33Smp5vZHr/sf03f8zf6JEAWXqN0E29cI8SO7wxViMrAAPplna1X5pwFrlqZdWkHeITUDyVrHobcKDKjHlWkWKhSfg2YQOPu0P/K2yaMPmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941015; c=relaxed/simple;
	bh=hNUZ2ZwCXYc5jcfVlzp546SZvcJtvRlLmMjXIFnPdBw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SnTEJF4hv060/uLUKrZoRZH/L606Dj0CbiFbVet6krs5G4YKHqsbP7V51bspdSNEBfNl3wsGT4RTmiokJ6675N3rt5qtKeyWmCJX1GoyB6qgerpLhnZaWgqPrWmXo7GQSj67Nl9I6vAiv74ndN/xDnt3ofzsCcVqUPeSrhnIt+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ff8Kpsq0; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-34b75fba315so2526673a91.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767941014; x=1768545814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+BQQG0oHkvFkk35shsKJRnjBnMZsj9gBIKPYJdAfPnM=;
        b=ff8Kpsq02nt83DZr7nW9sPD5Dcb8KCw5Csd6RUmnTNFiYyMU3ZjsNR16ISUk8zWIMu
         7nwsvuwpHJWyFz67zG5Tr66HqVLKqDsALs07Wa8wFi6Poyzs/iCzI9k+5jkJ7RsZvOXu
         08AO9KbwczEcspvoEFsn1F2a+VTJWhVMarRqU9KHQz2kNDVjOI3UOJ7Xxpsuuezz2DAl
         KPOmtObLh22Fvj533oQoEY++L/1kQt8/4cNxI2/aMtS/eaf6SRTNxFv7oWeC7xbaKHDC
         zFtKwG4Tdrw98f5l69bAYSXNc7F/NJHlg09AStR7Q219DrPt9jLN1LKfsrkDL2z/2LFA
         MWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767941014; x=1768545814;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+BQQG0oHkvFkk35shsKJRnjBnMZsj9gBIKPYJdAfPnM=;
        b=AqxsqNuqlfpVxifqc2tOgp4Y7zNDkHth8dtFPH2AH5MuU2IewDVYmd47vc/pc9q66R
         m6GUD32QPvR7xwbKYqe91hIjdKb52x0snzm/ACHq/lW0knrXgEu6sPJ4adbf/9KKUEtR
         s09uxC5NGk2gcxTEnzG2WSH2lWf/6Q566jQ24NFRar0LlmvDI//Hk6CYJFwwPoIfjeRC
         keCfTfibsVr3GnS6ZCNxbCSCVtQc8oG01cRq34c3+mk9qbbqnVqoxEROUSSx9kD4NYUY
         xZfmtPz+yyDXBK4nIRwC3W/aUYdeyUiC8T2mIJaIaDvJdWQ7PIxwhvFIr07UVWwKRPF9
         3BDw==
X-Forwarded-Encrypted: i=1; AJvYcCV2Pq/uY04S9J5InyoJS4nQ6wCHKjH6J5ZK9q/gT20wnJRBPMqqQpXyZTIvVZjpIszcot4eEHMlROg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yztsb/0AlGhFOml4xUFThdvCrLqGMmINaWLg+Y8Q03YBjsFYMnH
	mMcELZRpTJOOOXCX4f084ZkodQlDDHW5bSnnfx0Ss2HJfxlFviwI41Hk
X-Gm-Gg: AY/fxX6ZFLGU2ZoxpI+7B9jSYhJ7hx9gYKJ95qCeO9ZdtNuZ8wIbsk/rU1XTGnuR5hL
	DgTIggQIPtn5iwj8BvXdSFETfaH/WeOr343FweCSU3vfMI/RqgNcDMPA9QfE4E88449ume3AvJ+
	IHTY6LSNa82dCiJEg1ERKiKw4GPHl40iTRwfbH2FsA1e70CemZw4ZtCxXiEztMpMn+Dc0VNPOnU
	rUMGxZ0URc2l3sVFIgk35GJucUv8EtMHD2AxtPQsE26xAbaK2kVTeo3pV72zT8vKH2bzmBFtMek
	isdp9GodRd/bA/CCIxvX3toWYu6CK4DSwAV029g4vlaPbcxgBqCtTgVDbse4qPkh+PJhMCKJaCl
	lsnSib+C+z1rtzcBLvlOy5lnZtBQxVO97dnY3scXrsho55460voME/VDibVv1LSS4FTnxCj6Z4X
	b0mLj1NfevuDbQ5eER7l08fpNRiRFB6YHG2k0lHuKp1zgUo+H3fPiVeoBiHoHByyjWVqN2gvaCH
	NBGPO6vy9zEbLhG
X-Google-Smtp-Source: AGHT+IHgcdQdYaIE1VdAvBZ1Jt+5gxsdC4BlrbYl6dOkcTtrqUefw0TOyTy0+GR8e62YiunLWdGavg==
X-Received: by 2002:a17:90b:4a43:b0:34d:1d54:8bcf with SMTP id 98e67ed59e1d1-34f68c1fe7emr7996312a91.9.1767941013978;
        Thu, 08 Jan 2026 22:43:33 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:33 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 19/25] man/man3type/void.3type: HISTORY: Update first POSIX appearance of void(3type)
Date: Fri,  9 Jan 2026 16:40:37 +1000
Message-ID: <efe8112034e9388465c108fd0418d7e0c68d12ee.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

The void pointer (void*) type first appeared in POSIX.1-1990 as a
parameter type in the read(2) function.[1]

[1] IEEE Std 1003.1-1990, Section 6.4.1 "Read from a File".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/void.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/void.3type b/man/man3type/void.3type
index ebbeb4d154e1..9a46f84b1d37 100644
--- a/man/man3type/void.3type
+++ b/man/man3type/void.3type
@@ -65,7 +65,8 @@ .SH VERSIONS
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+POSIX.1-1990.
 .SH SEE ALSO
 .BR malloc (3),
 .BR memcmp (3),
-- 
2.47.3


