Return-Path: <linux-man+bounces-3746-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 160F4B38947
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 20:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAD20207A90
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 18:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97DE12773D5;
	Wed, 27 Aug 2025 18:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="geG47H61"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8732D73B0
	for <linux-man@vger.kernel.org>; Wed, 27 Aug 2025 18:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756318074; cv=none; b=iDxLSYQus4d/vm44lUohyqPAU4npqUMNLVprApPouhlOUtDZ+5ND7jmS1yc4nMSk+Pto01alsvaIprUy5T/LAEIXAbtCYdaRuuuJcl2QsdzNrGZKiAvRqmjGcTyrmgDF26D2i+CzAxs6zlJa9X2QHW1B/qcmEu237K4UMt7KgXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756318074; c=relaxed/simple;
	bh=CARVSSi6cwpcGoraqadTcRYaoVeH18LNfplHnI1uOn4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=gAMmUxdOkdwqjHrHVOjA5/WJ7n9gFFU4k4dLHUswyUVvKPgM/VZe7JUEHl4FuYjdF+4dSz2M4IGsF90TQOzRicBqphMRjr0ZQgUFS3O/OCn58tpS99WNNbVv7WsOHTpRDnDlnLv5UVbXlugbMCj0qwbczZoOtsKEWP0F9Y1Uaa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=geG47H61; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-30ccec2515dso135023fac.3
        for <linux-man@vger.kernel.org>; Wed, 27 Aug 2025 11:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1756318072; x=1756922872; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CfVoTirk83CoaCFLJxRAkCJFDW72CKr8BP+ThRw+ty0=;
        b=geG47H611w5mIMVopnYKSWrbRMHuChTkqX2lZy8l8ZYucgn5OOQet71trg+Fo6pSxQ
         tjahI8fcvMp4lPOOontUTRq1xF8wLdKWN2g6o82y4+Xd71iZXtx9FO57S5cElnnIfV6s
         w+eD1DiYXd8nXs10qgZLqauaQOevfO0uRtjBwaPKZb5YJnf1ANElr9Mby5g2HGNw4CLM
         y200F0voDB8eKArsvnlCQpIeNDdpZMiI0rzVW+0G5Ir/izSH0cM7IdSkGFwhSL5SChmV
         l+V1dEgcfGOpchqfZJVko1UuFHB3aiwYkPJuBTiBOCY8wAT62WpiUFkUfjeGRbBVJIP+
         P7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756318072; x=1756922872;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CfVoTirk83CoaCFLJxRAkCJFDW72CKr8BP+ThRw+ty0=;
        b=r28v27mDdJPv4AYha9R6gyQ5aJvuYI3nAGzL4zJK9reGMKDkIhSlTac/YhiAVlj82M
         9AuxF7hcOnXTpfOJexJXslq63gtEFGaH2E61DSOeVihAPm8crCgy8WV6r6fjYrqPDdMd
         JfCyF+LNV8BCGkLBHEABjCxY5ZltyC1bECTRGEdwh0NMAs+of1UOHYgN7re6gePiaHtr
         4DZWCr4VgYCfcdRjlDcnilXW+SfJtMaome8c6N/01pjbw7aEdWg01v9REnL5/lkuKI65
         0JaCpvJsc3dNTo7q48M1LNGrzCscw5kfOpoeDfGWVpCJN4Ufvah6NGmmT70bJHiXwScX
         yEYQ==
X-Gm-Message-State: AOJu0Yz3fUYCjzT5sv9YXSriLS7qNTvnNv3EctCL7E8qC5ISWus3fbVX
	f+ndfxADo3Dk5PGg9ivWVElhn6ulUaTqm06gfJRNWsMVJ+5jXPgXAeFUQ8sDOaoMbH6Z2w3wzjp
	kfcSFDL0Xb5nprv9F2yamPmOmfoJdhCWdT+SeUhX8kaOabW/+IIh3ky1D6So=
X-Gm-Gg: ASbGncuEL16/tTj+0uHMSXYfEQadA7JeTc4Z59SN9d7KCe8je5HJdFZ8iozcV1gVtNk
	s50jNlQJ8/WRoN2s/vdOf9U6sw57JGHL9V6Z/sKv6Gr6HfnNkMCWOW8NNpiSaEdFEMc9SQdasxV
	aBb3t1+wJ4mUZULUXSQizzMzCSmTZNwyhu+wbTtMMnUJRJdH4DUYRxczPvr2sb4tXkUCNtlk+SI
	28CaS0DF0pzaIumqELR/g==
X-Google-Smtp-Source: AGHT+IFZsfhPYYWmogJlRwfSqouKConZ+Ns6X1jH/TYwNyAGBuKj5rOiS+mIVNlXZew52TZVo6tJjxxtWDmweUVss7c=
X-Received: by 2002:a05:6870:32d4:b0:30b:8821:aba4 with SMTP id
 586e51a60fabf-314dcb56709mr9662612fac.20.1756318071730; Wed, 27 Aug 2025
 11:07:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 27 Aug 2025 14:07:38 -0400
X-Gm-Features: Ac12FXxkOlAvaNBV_zmcB0Im_L6RpFYwoFHBTz__LKdfjuM6lFpsw7j8ELCEH10
Message-ID: <CAJgzZooU580iDpcp+gAWFEmzzrYhUFrMgFGY9keUG_Y_x61OyA@mail.gmail.com>
Subject: [PATCH] random(7): trivial grammar fix.
To: linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000c84550063d5caa9d"

--000000000000c84550063d5caa9d
Content-Type: text/plain; charset="UTF-8"

---
 man/man7/random.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

--000000000000c84550063d5caa9d
Content-Type: application/octet-stream; 
	name="0001-random-7-trivial-grammar-fix.patch"
Content-Disposition: attachment; 
	filename="0001-random-7-trivial-grammar-fix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_meuaf7kf0>
X-Attachment-Id: f_meuaf7kf0

RnJvbSA5OTQ5NWY5MTJlMTgyNDcwN2FiYTVhMjM0OTJjNDY1M2I5MDkxY2RlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFdlZCwgMjcgQXVnIDIwMjUgMTQ6MDY6MjkgLTA0MDAKU3ViamVjdDogW1BBVENIXSByYW5kb20o
Nyk6IHRyaXZpYWwgZ3JhbW1hciBmaXguCgotLS0KIG1hbi9tYW43L3JhbmRvbS43IHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL21hbi9tYW43L3JhbmRvbS43IGIvbWFuL21hbjcvcmFuZG9tLjcKaW5kZXggZTkwMDI5
NmU5Li5lNzNlYjgwMWIgMTAwNjQ0Ci0tLSBhL21hbi9tYW43L3JhbmRvbS43CisrKyBiL21hbi9t
YW43L3JhbmRvbS43CkBAIC0xMzcsNyArMTM3LDcgQEAgLlNTIENvbXBhcmlzb24gYmV0d2VlbiBn
ZXRyYW5kb20sIC9kZXYvdXJhbmRvbSwgYW5kIC9kZXYvcmFuZG9tCiBTYW1lIGFzCiAuSSAvZGV2
L3VyYW5kb20KIFR9CVR7Ci1Eb2VzIG5vdCBibG9jayBvbmNlIGlzIHBvb2wgcmVhZHkKK0RvZXMg
bm90IGJsb2NrIG9uY2UgcG9vbCBpcyByZWFkeQogVH0JVHsKIEJsb2NrcyB1bnRpbCBwb29sIHJl
YWR5CiBUfQpAQCAtMTU5LDcgKzE1OSw3IEBAIC5TUyBDb21wYXJpc29uIGJldHdlZW4gZ2V0cmFu
ZG9tLCAvZGV2L3VyYW5kb20sIGFuZCAvZGV2L3JhbmRvbQogU2FtZSBhcwogLkkgL2Rldi91cmFu
ZG9tCiBUfQlUewotRG9lcyBub3QgYmxvY2sgb25jZSBpcyBwb29sIHJlYWR5CitEb2VzIG5vdCBi
bG9jayBvbmNlIHBvb2wgaXMgcmVhZHkKIFR9CVR7CiAuQiBFQUdBSU4KIFR9Ci0tIAoyLjUxLjAu
MjY4Lmc5NTY5ZTE5MmQwLWdvb2cKCg==
--000000000000c84550063d5caa9d--

