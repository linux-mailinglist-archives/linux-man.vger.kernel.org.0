Return-Path: <linux-man+bounces-3063-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 89888AC91E2
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 16:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6480A188342A
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 14:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DF4423182E;
	Fri, 30 May 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Nfa1kO4N"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5EF2288F7
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 14:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748616833; cv=none; b=EXLfdl/V7tr+Qltn1YoqpyFlb0M9K3UOpvELMaAFtVpcM3NDoTnDIy2VaXmALzegeU+Vyk/7gmGDszYEWkTE4PVq8ytbdHTNUFztAPscCTvk5k4WYkCvbij4bzyKsBLzFBR/uhYBMKyyoBZKnU/ratS3uVZdqkm5V5dpngJ6kRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748616833; c=relaxed/simple;
	bh=rqGDQytsPf+lhxXOzRKNHtMTPANFGk7tIdvY/FJF6sM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HR2wGmbF1Ml+5TiXmZcu3Ngxb2mBnGasmAo14y7s6dfcR8eNqjtDYo58bdnxR7RI/RGQE8nTFLCyLDohb2Wyn6xxXntHYBh+luOrWYRz4t28shbgJfByTvCYVi6aNJidbpddOwSGteIPKGGzwmHucXQC1dHKVuJpfva9zixx1jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Nfa1kO4N; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so25601135e9.3
        for <linux-man@vger.kernel.org>; Fri, 30 May 2025 07:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748616830; x=1749221630; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G4t21FT2oIGVFnQjnNXepK0aXa53tVp0qokyWg1uzDg=;
        b=Nfa1kO4NTdjnlLP7pKeAf0gj/ddzjC/FlRW4tVQy0OnBrw2MqWUCru32ZG1OT1Co2G
         P0XnZJ5/yulWg5BO2H5G+p54K/ycr0suXfPuzdL5GgEa3aWvfG1mIm1jj24fwSAXZPRB
         iAB1ZJCb2SqjN4JnM9/xDWiIgUGkXH5x9rQi/rg3b+k7ChgplmQVp0DHV3sO/oIHbzF2
         u4JLfED/Ui4FnjWcL1MgN096x6V4QWfUb110MGZ5fDapikKyyTjHoBuKL0vyg6Uqs4Xg
         heaA6kwmrRnGarBa1LggsDUguptAm2HDbvvfDUGY8A5ZYaVW0h5UaxDRDmJi15SjSxLF
         GxyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748616830; x=1749221630;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G4t21FT2oIGVFnQjnNXepK0aXa53tVp0qokyWg1uzDg=;
        b=MTzVpt3/5Ohu3PWu/K4AKtwGepOi8v8S3Pz0rV8/wbs27zMoDqLFTzOk+I+iPO/gAs
         CyMhyPu51Pf/0kTc2CTwCaeePEfEinAie49SWIYljpHwnO1xgkCAmO4JYbQJbKul3o7b
         e31VKslyoESmoeE5wqRCqTTPVaujpafLlGEhmRPnfEKrLKqmH6GVlLpqLSenBSrEI69/
         NIm3oX/QedSUiyZUpT/YqRh6kYgbEKgJCmD4XfCss3h9tFm4GnlvD7PZmPmC6Yzb3B41
         e7OBLP6sgWBYumzNVfZBnjXkjFHjWZPmiGDPQevNX4zLA8xusrUG3sNR1akyv0I4/ew8
         MZ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWERqIVFzDXc66zEKrbqjMenQ9yHfpcfLy0JD0IrZYSQgC+K5S0ZqrspQBgmgyHGc27GzRR33Q+ghQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwWBZNaTcbJ+A2VY5JVVNldfmeVNDNOLTly22U25TpFa+WHFVq6
	wN02uphUArtTIEPKnnm/8HQmhCWUmi3u7lbHBHT8dkYzwJXv2BLVFXa4
X-Gm-Gg: ASbGncuT3CkMXcinkqd1YJSWxBbaePjOnAhRpOueHNi3pat+6mHZYCc3HgUup+DnJm9
	UvKoKD/9KTvyyjkAkjBe1UxW4y813dCc7Zbh+QDw9RPvfxSSOIwFLJyjfRuUmEuI+K3nsizZKXX
	rLhNd0MyiEREXf2EZjwaidsTXDle8qEOysBTC88NL6CJAipluosMf2j2yqhfIjrLDdOfPIv1bxD
	O/1uh1LtSKtlNccRFjuxROllyicZzFmSkjt2l4Jgf9PGsAegyFu5RHSyT4cirFwRSzcuihhay7D
	aZCkNQ7n6EL5D3EPa3dHQaLEY/Aan/Py/f9J4PyFkRpE2mfm4iM=
X-Google-Smtp-Source: AGHT+IEuw4+wCIr5QuRngoZpBwUXK+6ExwPg2Kvlcf4pLzB2iZSECV96tX7aSQoLI0z/Pkdo93Ev0A==
X-Received: by 2002:a05:600c:1910:b0:450:d3c6:84d8 with SMTP id 5b1f17b1804b1-450d880ce23mr25269305e9.14.1748616829607;
        Fri, 30 May 2025 07:53:49 -0700 (PDT)
Received: from localhost ([188.27.170.216])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d80136ffsm20702145e9.40.2025.05.30.07.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 07:53:48 -0700 (PDT)
Date: Fri, 30 May 2025 17:53:47 +0300
From: Dacian Pascu <pascu.dacian@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dacian Pascu <pascu.dacian@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH v1] man5/elf.5: clarify string table reference for SHT_SYMTAB
 sections
Message-ID: <7cab0feb03d8256490b107867c45c78cea121260.1748616470.git.pascu.dacian@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add clarification that for SHT_SYMTAB sections, the associated string
table section index can be found in the sh_link member, following the
same pattern documented for section header string tables.

This was discovered while writing an ELF parser, where the sh_link
field is needed to locate the string table for symbol name lookups
in SHT_SYMTAB sections.

Signed-off-by: Dacian Pascu <pascu.dacian@gmail.com>
---
Range-diff against v0:
-:  --------- > 1:  7cab0feb0 man5/elf.5: clarify string table reference for SHT_SYMTAB sections

 man/man5/elf.5 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man5/elf.5 b/man/man5/elf.5
index aacbb558f..76bd62a12 100644
--- a/man/man5/elf.5
+++ b/man/man5/elf.5
@@ -941,7 +941,10 @@ .SS Section header (Shdr)
 An object file can
 also contain a
 .B SHT_DYNSYM
-section.
+section. The index of the associated string table section
+can be found in the
+.I sh_link
+member.
 .TP
 .B SHT_STRTAB
 This section holds a string table.
-- 
2.34.1


