Return-Path: <linux-man+bounces-1237-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D12A590BF9D
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58F05B21B3F
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095991993BE;
	Mon, 17 Jun 2024 23:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="juWH/L5T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF1E199E94
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665866; cv=none; b=a3Owdorb6TdMvYx9OXgt4jR9v10rPaHcqmKAjoY76rB3aIj2BUazOXHoksmKkesaweYXI0cQmAswIMg+mA9uPrQMXEtH/kG2+b5DyO0dU3qpkZ7D5zZ29CcAvCyUF0Z8EWUJdSDxWBKH1tjQWKwZSxq24GRAmTcPmviKSyRSeeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665866; c=relaxed/simple;
	bh=WBl9eKCWGr12dOq3rCo/OAcEq1CeC7DRrZqaliv5gs0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XPMmOuIKdQCxeb1WkCqYZEph6LCSFjBPzmvxibt8PbNBzPGvN1wynj2fgZZzrRlBng7D1OP2OsirGFz20nkUq8mQGJwoHdJzzUY1nUi5BFIXkzhsGf+687br2j0+9IwvHr25Ruj+hNK8JIVKn4lGNovwNe97Qthp4vOcTi1Lk6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=juWH/L5T; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-79550284502so292869085a.2
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665864; x=1719270664; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VtIFJFtuyBDVriV89GUm9pqtQVLs/i/X7dA/4AlI2oA=;
        b=juWH/L5T1jLYlzSBnAuKeY7zGbEKiH/S+9ya6pvbQxUlDmOCCYh81gWLvciItUTFqQ
         9jY2ijTUz7xZCJbYs7h1JHESEct0Z0U/4io0jxovRCy92Cjhp0/CeYiBe++JPfrEEBdq
         KUSOSxHSaUDGhrQitVA3cEsYOYL924PPeParUpxbj6OYiRw87aCGceefsRXFEpEDDkX2
         eo02CZntrTp269kWNERacgouFvJH45ao6S6UKA+bcpqdv2fPmbvi8+SyHmb+lh1GMFQ7
         d6dFMFy79svRDtE/YKKfqI+T0Bq/L1kWFIVk/n+aCm5UKhN7JO6DjefQUcyZ7pxClS+B
         I0Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665864; x=1719270664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VtIFJFtuyBDVriV89GUm9pqtQVLs/i/X7dA/4AlI2oA=;
        b=fe2Tsoe1bEvxnZv7x1BRq7nnVU17ojEMdqx1qr3EKDRTCpmlMQOoY4XQAmV8gbD2/5
         O2Twip6wEYE3hH7KF89bsOqFE77aKyC+jdnL85whR2Cfo4hIN66AkL0APFy5CCbkAVea
         ZW9XdutmwPykTPcTq1AcfNpzhwz+zC7NJvKQNGMcXdGDtzNZnS+an/ybXyceBxeN8mCo
         W3qRMMvIe2rOHgSrIHr588eSBjzQdw3XbpF3Nxo+NM8tMXweKXblZmimX54tpBf/gDpN
         IxW4QG3+MZwOb4PXeGY4eyaId23vHNZymoVgMpl+YJHAUGrFJ3Dq8ABEWCs3Z9o8n+el
         jh/A==
X-Forwarded-Encrypted: i=1; AJvYcCV2u6jeQOd7+zQm+6IaS9l4hwwA0dRjZR18NV3DwDNR+XcVB+mrODPZk6SSCklvoUeqlmtsXRme6r6XDf3NT70frAGy7s5V7X4L
X-Gm-Message-State: AOJu0YwFj3tt2zQY3FfMU4u+4RlSjg1IeW79ZgtLwSU7rEJx1p9Ed0rD
	UrjKaPZJ78M0lIz4g2FIv9u+54epk1YVpkdsL+HKuINdf6pm6r5+
X-Google-Smtp-Source: AGHT+IEblDsCFcBpQ8FMynIIhUn8RThBm7xNj6La0XU30/pqwgSpu4Mklc3fJw9BG+OXbM9sKva1EA==
X-Received: by 2002:a05:620a:4453:b0:795:4ff9:a3d5 with SMTP id af79cd13be357-798d2589be2mr1345824785a.50.1718665864382;
        Mon, 17 Jun 2024 16:11:04 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:04 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 10/16] mmap.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:22 -0700
Message-ID: <20240617231035.1766780-11-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> See NOTES for information on feature test macro requirements.

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/mmap.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 12d60f500..a7a429137 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -34,7 +34,7 @@ .SH SYNOPSIS
 .BI "int munmap(void " addr [. length "], size_t " length );
 .fi
 .P
-See NOTES for information on feature test macro requirements.
+See VERSIONS for information on feature test macro requirements.
 .SH DESCRIPTION
 .BR mmap ()
 creates a new mapping in the virtual address space of
-- 
2.45.2


