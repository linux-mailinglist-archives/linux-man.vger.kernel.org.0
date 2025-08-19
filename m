Return-Path: <linux-man+bounces-3500-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62325B2C920
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:10:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E1315C018F
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0129128B400;
	Tue, 19 Aug 2025 16:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="BLUZqOMQ"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73013285052
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 16:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619817; cv=pass; b=urpBs1GmxAm8N5J3reqHW6EuC1qH5G0ZRO8B3ZaO/FPjt4zl19LUrDGalyT2DfzWnUgdLf7KxHn6Eu1KuuiOsZaVeKZy9HbHMWje1HEMxclczAcL6t7611QrKv6ujU1hZLwMRWwNEAgC57bm/OawfQGPDPEe54L7IkVDrvQM95Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619817; c=relaxed/simple;
	bh=wODXGPmAPgJt4GdTywH8KcAzZCyXGYufzbRaPcS0qlM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mntnN18DH0I0gPlLX7Hh0LLFuQ9zoedmelwp3C/3joO0cmqLiO6CE/3Bv7YbFr8A+7gRYg9H6UWBSutIUVVLDCbQi/NrRGyY7tkjZWuO22Dl0a6SsDpanMC6HYFAf9Jr0RyeH+S+DW84OSGB+/CGALDxIXjJBmir6DxzGn3KNPE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=BLUZqOMQ; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755619810; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GZCnJO1eu081/OZEddqnIt6p/eVYOeJDf9+gvC12vdqvbF4qzovlUiyMVzuSvD/EM7vOH2HLZK9/0kz7i5qlGqdvdbQqZnSir9NYth8tfFjibuV8KS6xQzAMcKBz3/wmlHtPvffLyD3hVQO8DJNZs20h4cgXz4lNJwEdxjwZqbo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755619810; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=VYgnzZvly1xoPRbOjYNbQfq2M7e43mCJOiF3yaI8eNs=; 
	b=GY6nUPNiEMab6gT92CdCZkZgywV63LDBzV9FPaq/dKRo8ZoPupY85FSQ/e08xTdHepZEfBelK3fJW9VQACwUYOFMW1LU/dF9b9xq3mzvH4J9xAyN7nwnweRDd/pJ2n0Y4+hcaiZJsj2+T03yrwX+MNNs3uUZdADndxVRbvYq72Y=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755619810;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=VYgnzZvly1xoPRbOjYNbQfq2M7e43mCJOiF3yaI8eNs=;
	b=BLUZqOMQ3Jh3MsVH/os4CjzJAWgfVng2GXu44R7NJbu61HiEBxfFQnPbIk91wNm4
	rS1dRNMz8fzD9nPIvS/dcnMaz7RUGkowM2SEEhQ+TXjXVfWmxyJiOGiGhmf1+WHZWm+
	o2FMrmM7KwQuD0o+3X2NdGZN/GeIFkVIZbnJLP1A=
Received: by mx.zohomail.com with SMTPS id 1755619807188354.1616603861321;
	Tue, 19 Aug 2025 09:10:07 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 0/2] Remove all mentions of blackfin architecture
Date: Tue, 19 Aug 2025 16:09:58 +0000
Message-ID: <20250819161000.768159-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr08011227ffdd4a2b58d7c5a74d81395e0000a57c616019c743a279eb39cd6180118c3192490e34af8b7737:zu08011227b02fcaf60c7ba9c42dc9df190000bcede16a5b8c300eeed93b2a0186ede47f3c71acfcbf5170ca:rf0801122c7be14e6a11e308146dc0bfb40000be83c6213a43ce63e6a3331dc4ff88e05f5136630015ba297bcbfb8700e9:ZohoMail
X-ZohoMailClient: External

Blackfin was removed in Linux 4.17, i. e. in 2018 (7 years ago).

Linux 4.17 is not supported (it is not listed on kernel.org main page).

Also, I fixed pread/pwrite-related mistake (see commit message
for details).

If you apply this patchset, I will send patches for removing
mentions of all other archs, removed in Linux 4.17 and earlier.

v1: https://lore.kernel.org/linux-man/20250819155400.763253-1-safinaskar@zohomail.com/

Changes since v1:
* Commit message

Askar Safin (2):
  Remove all mentions of blackfin architecture
  Remove pread and pwrite from list of syscalls, ever existed in removed
    archs

 man/man2/clone.2    |  6 +++---
 man/man2/fork.2     |  2 +-
 man/man2/ptrace.2   |  2 +-
 man/man2/syscall.2  |  2 --
 man/man2/syscalls.2 | 16 ----------------
 man/man7/vdso.7     | 17 -----------------
 6 files changed, 5 insertions(+), 40 deletions(-)

-- 
2.47.2


