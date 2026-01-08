Return-Path: <linux-man+bounces-4716-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC00D00C34
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6AED30012E2
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EAC25A659;
	Thu,  8 Jan 2026 03:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ngmQTSdb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF653A0B24
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841442; cv=none; b=QU99KtbigcSW85KalZQf8LzpVl2UzyYJvwxuEaAQ0t+Tp8ewbba2sgIf0eT8eQrygP/2tAox0LFGhuQ1bF3iFAT/mbZuzaIQGU4g1ZIrYOJYoHMbB7dnNzFf2+u5d544cRIUH70Cher796zEvuXiqSML6CSKNDTAQNF10vUJdLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841442; c=relaxed/simple;
	bh=MStZ05hbOethxCL3FXO6DM/qxIledsW8WIoikyCaAFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lfIwU8rzDJPdWOu0imgN/xfjGCaG8+GIBlQxA06wnNMa8qBq6v5DIXvVxk+bkcBRKeSS15CvmzMij0dpl3SnviC5vdeGKPvKlKsp8GT0XQ+Cs1yseMy3ixhaj7WWBXgMyYquOvEs7dj9FqYwKSPyy2SMmubPBVSpo01mu3jOGG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ngmQTSdb; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7acd9a03ba9so1850809b3a.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841440; x=1768446240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Qn15EL4eS00Ci6BIdi/ULOP5hmRP7vvyULzbZtXk7WM=;
        b=ngmQTSdbB0ME4GOSLT0Ot6ip/gZE8Sz9UiCccMbAj9Wl8WxjKkz7XIILP5Nf+zUzJ4
         Aswf4ETlI+/QkU5MUVEUqSDOohowSA2iFlJxv9FlAE5fjm+EcgsBy4ecf43v82EtEXPM
         gJfc7DxKBsBQLsNvlo0cTkfPJdHtTOx1S+hrJVRXgNN3oYW1nJeY6UWrDMtaQ2RC0gm8
         QkMLc591H1gOnExH0SVr+OAIJ9v7g7nFrPfK7k/tC+N3Iu0hPAPo2JhoVEm90ZlIifbf
         jek9iu+pWyAbj8AdsFDLRGXJKfUxgWxk+C6C7s82BD1Uk106HHZw2xDnAMvFj8M8O5J+
         eteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841440; x=1768446240;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qn15EL4eS00Ci6BIdi/ULOP5hmRP7vvyULzbZtXk7WM=;
        b=IMF9sf2yaJlkQ6HPaNatl7e2kK5h4Sh5UEa8/8nrzJ3sfDJ2djnivppQVh0DthOVTm
         lTm+Znff2S24u466rq3IbIIQo6paze9BhTsFYaRlji6kKkn18kKulTOQLD1eQemHCoLg
         fHjl9EmVPIu9YVLNv3y+uLJniPE+W5Gm5kQz3VRCLJ2dSsIf7S9MpB0PPY56iETRa9yn
         4kl5f22KmATzeU9bHS0RLrpVX7w9Sj7pfMU9caz448VPf8y9PR24wvRYbAdm1WLmyIyu
         RzdMK7b2vkt7I7apJL1mEISgvENpoMoHW/4w75WINTW4Mc9ny89xjmAQMoY5ixRUwg9j
         aWnw==
X-Forwarded-Encrypted: i=1; AJvYcCXIZXj5QjOHljQpptPOVcVeFPaM71PkiHWgbAw6rb4zg0sBll8TERIw3P1W66eN/6KBXCsEqztT7X8=@vger.kernel.org
X-Gm-Message-State: AOJu0YyZjHlsbS0OzZWEPvUM9lHLdNVyEojJHGf8ndfeLnZ0dscFnzMq
	Kckx3MpXq9IVqaGAMXvORppDykffvU22hFnxnjDqCbFibWoXkcyveySj
X-Gm-Gg: AY/fxX5JBZqxHLQB0y9KAmnKbOzieKBKtLCXL4HlqCGpCMUbjHSEpWZVvU5QpVckvlH
	DQPiayypVAIOldOL67OxybhDE+TlWwfL0+37yFBWbRQS4VYONzEKonWLXl+djmsir+oAYoliVCO
	91pOML0unp9wz393OpFzG+WLRkqPtU9k41GVU6dT1Sy2zRRus/qRLOlVcrF6+kfizQG4LrdpG83
	+KwKQJqVRnpwXwfwNgsWV2Oev6eogEfjVgL1jgC9f7X/C01H0UAazMyo2OHk14NSl8w5Maylg5u
	QTY2VJEvImHOZtQVe7OWqOhcze69QFiIOMYaMQauZm77QXy47+aV1QHPhK5txZaQOPXI7IQxdkd
	omgJEFQlJuQWfb6wjuYvBYDlXYBR//RS6GGcWdYS4Ibl+lcGSxIjhKRap45KXkY6zCvdAt07KbV
	rz7XK5Wh6hqoUpfoNCT3FMEm+gBWQBDtf0Da2NP07NWIH4S43GCUb5eXaeSsmhSGNb4AkeOPV5F
	tShbb76c2RJHsE=
X-Google-Smtp-Source: AGHT+IE9jU0Ym99wxAKvVpwRyVDv2L2e9ZfepV8I9LjiiiGr8uIKmybUJ4OB48GH9hFn4cNV/FWiJQ==
X-Received: by 2002:a05:6a00:1a10:b0:81c:c98c:aea8 with SMTP id d2e1a72fcca58-81cc98cb5a1mr1061131b3a.61.1767841440358;
        Wed, 07 Jan 2026 19:04:00 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:00 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 03/11] man/man3type/off_t.3type: Change VERSIONS to HISTORY
Date: Thu,  8 Jan 2026 13:03:09 +1000
Message-ID: <c1498253ab68f6eaffce880c490a11fb1569d533.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Fixes: 4131356cdab8 (2023-03-30; "man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/off_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/off_t.3type b/man/man3type/off_t.3type
index b0eebcf4af0b..9004971d1039 100644
--- a/man/man3type/off_t.3type
+++ b/man/man3type/off_t.3type
@@ -46,7 +46,7 @@ .SH STANDARDS
 .TP
 .I loff_t
 Linux.
-.SH VERSIONS
+.SH HISTORY
 .TP
 .I off_t
 POSIX.1-2001.
-- 
2.47.3


