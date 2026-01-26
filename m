Return-Path: <linux-man+bounces-4958-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH2tHduud2n2kAEAu9opvQ
	(envelope-from <linux-man+bounces-4958-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:13:47 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1238BF61
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 19:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7FC03020FE0
	for <lists+linux-man@lfdr.de>; Mon, 26 Jan 2026 18:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B435434D910;
	Mon, 26 Jan 2026 18:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="kPiotG3/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C9D34DB4A
	for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 18:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769451196; cv=none; b=qPEjTv8oStAyBoO00k0hiBEAOXB/bMi8tD/x3VyCC1BJGYc7A6L8JCgbKU0iVmCuPe+lrmS+Is17Gzyl5WRWOoEFkdY3yEtVReSAevwd4qyzH6tWdawIz9/CCIjsf6PKb9lC7epvgFO5qh50izI9XXE3ze0f0rSJqloA8C9Svzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769451196; c=relaxed/simple;
	bh=DThil/qNZ95QyFDHRXCX0DUEjQ7sEG6poCIMg1Z7dDI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OM4D5vX3E8HMRcucK6Nwaf4JocMHlDA9MniXyQxGTUJfkwL38N+D9hBKraPb/YE4p5MPOhebkWJZDkMsjFp0gxbZ3lp1/dcntuvVl4VdjT/XVdQ8laNe6xBYVRiEn4ztem0EruXF/US1bzN0CDttbcao3245DFZpkX7IlASKClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=kPiotG3/; arc=none smtp.client-ip=209.85.222.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-qk1-f196.google.com with SMTP id af79cd13be357-8c5384ee23fso542124985a.1
        for <linux-man@vger.kernel.org>; Mon, 26 Jan 2026 10:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1769451193; x=1770055993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1SrLd6XpVAjp6m5zuTrze0efGuvcTK3GXeM5/0+N4Hk=;
        b=kPiotG3/Jn0YpbH1Zbc7wgEZvLYzMGGCIu9MIeiriDsskK34ch0F1fwJaxLphiiXwe
         ViIskILa1TKZJgRvKPBDaUDf5ftMVXw3IucdKozi/aD4LaO++a4Vrsz2vcJMz5HZtUdN
         XI+Q02UC5FTMnC7jlpne0bYyGUHRkq/MAfB/nbm4cgso2oyNmMtllZk8kIEXoSpg3M5k
         kYY3NIalaU1jAemNSy2zymLKvvpYVoUFRGJxwjqIqXZ7lNLCNVJNe0ysmM2S5YTJ0vES
         tHLfROg6ZjsqJot5mZkR4ofGGv9rQE0dWQkFIpznqLBe9owYR8HRYxqD0iqC/iYnxYKR
         k4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769451193; x=1770055993;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SrLd6XpVAjp6m5zuTrze0efGuvcTK3GXeM5/0+N4Hk=;
        b=rcd9NP8tludyZrdvcsKn5UuIKXpAWfMLpg+EPG5dIWL/PZVTrLpLZ1B/QXTxiMwJLl
         ILEwhBBYBeQLp2mE4rTFz3uH45oGwMBI2ZIDQOvoVun0bXKHVjzDkv+qjzTK7IN+IRYd
         8lS9XHdeQsp22WfoPvme7gpfh2u5ATjUq2plTYtccsroe056ibDxec9H2TI4DFzehdzm
         aEtfS0QTnE2PKTGl7UKEQcYrcqxq1OAOlnpW8KEMGNs5coAH+qmePM3O4fx7d49Vixvy
         InNwbcXVLiAhULsElDMRKvfe5ErAy7bkcOAvcHKMuklaZqlS03EJN5fDULmlmVimMOtU
         Z2hw==
X-Gm-Message-State: AOJu0Ywguo2U/OiTXo5YMwsh+UWILs7sMNZFP7KQL++54mF8eabdYLDD
	10HBIZNX0Gaj7uHmI4AE0dP9RNm32Dy/rCit6AXfBAiiV02XD8FdTYKPanXK4C+w10I=
X-Gm-Gg: AZuq6aJpcUCCsi89u1C3Sg0+WsGFX+rBQY6aT6sxU6mytcFvyqq9wtASwR4sPxy6aHL
	/o9Pf+z6HmVa4nlBzwZMCokH9Mwp+9ZhEPJI1Lk7YaztDgd3+JsVkfwDYLZNpjRFBBXJtyZIna8
	d/65No6s7KP5pSRw15Qx59vlkFtfpo5ZKQI+E6bOq/pRt9UjX4Sae8EfpWBM7kHWUXkFf0VpPiF
	Id3Chp/K3o4vbhtL84e+nRVT2ZWI2ombzWTqEUZcrAmf/gLLrwDVo9QGC4BOHfO3292bgEKKtCb
	FzU5EmydGjMz+JgJMKA61fYVQ4yANnVfCj6wfTCzFOJ0AGeZqHWKhy0gigz1zDcdPP9y/yxGCUZ
	6UPtFkZoQsTXpOimkaDYMH1DCk8Mvx8NW+B5ulgGpzGDJAndIEhkx3I0h0uSlmUAgRVL2G0afCP
	cOC+xAtnaBU/x9zExaeP5IIDHs0wmU1fW/jJOGSVigrdJBIpWDNfKmIu+UjQ00GzebHfESm+GHt
	8TPpDUO/o25jjuyTqf2a5i1L1mngSOVATbashZECyORHJWB3oNv+4P6BKFVUDTd2uRwDbPDBKbq
	lA105YOcv/0ZjlIUDVvOH/JaRETc+P2qzlXmm/qrxcmmislqIAZgf1fEMGvxXWFHgkjSAOpwRkI
	sp1VpxPH/pNdcpv31Vr2pt4T/cembWOtDrg26+lfx4CwpsPGbA8JBsGsO
X-Received: by 2002:a05:620a:7019:b0:8c6:893e:b38c with SMTP id af79cd13be357-8c6f95c5d41mr609425785a.22.1769451193462;
        Mon, 26 Jan 2026 10:13:13 -0800 (PST)
Received: from localhost ([129.170.197.107])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-8c6e37c8fa6sm1085074285a.4.2026.01.26.10.13.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 10:13:13 -0800 (PST)
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Subject: [PATCH] man/man2/mmap.2: Further document MAP_GROWSDOWN
Date: Mon, 26 Jan 2026 13:13:04 -0500
Message-ID: <20260126181304.3312554-1-benjamin.p.kallus.gr@dartmouth.edu>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[dartmouth.edu:server fail];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-4958-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF1238BF61
X-Rspamd-Action: no action

Makes 2 corrections to the page:
1. mmap(MAP_GROWSDOWN) returns the base address of the returned
   mapping; not one page lower than that.
2. When growing a MAP_GROWSDOWN mapping, the kernel doesn't require that
   the faulting access be within the guard page. Instead, it just needs
   to be beneath the mapping, and not within `stack_guard_gap` of the
   next lower mapping. By default, `stack_guard_gap` is 256.
---
 man/man2/mmap.2 | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index 093b0caf1..be2b21ccc 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -274,13 +274,11 @@ should check the returned address against the requested address.
 This flag is used for stacks.
 It indicates to the kernel virtual memory system that the mapping
 should extend downward in memory.
-The return address is one page lower than the memory area that is
-actually created in the process's virtual address space.
-Touching an address in the "guard" page below the mapping will cause
-the mapping to grow by a page.
-This growth can be repeated until the mapping grows to within a
-page of the high end of the next lower mapping,
-at which point touching the "guard" page will result in a
+Accessing an address in the pages below the mapping will cause the mapping
+to grow to accommodate the access.
+This growth can be repeated until the mapping grows to within
+256 pages of the high end of the next lower mapping, at which point touching
+below the mapping will result in a
 .B SIGSEGV
 signal.
 .TP
-- 
2.52.0


