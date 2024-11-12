Return-Path: <linux-man+bounces-1895-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA319C4B8F
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 02:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D37DFB2107F
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 01:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78EE20100C;
	Tue, 12 Nov 2024 01:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="rq2jod52"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com [52.95.48.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D981E884;
	Tue, 12 Nov 2024 01:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.95.48.154
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731373917; cv=none; b=if4cmLKwDSIwoXI4kvr2jhU0lLp7MjKiYS5E/MIK1ku9cW8JsVns/9XzOMHGUO2HLBq4smcdbrECZmwahcJTKd2W3Ldd0qjresDCaJmJUGIwE8NA86ndlAzdEqZcHEJtyGU2V7Hm7fldPEaJBxqrYnWc4aeCbbf7xi1VI2ag7yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731373917; c=relaxed/simple;
	bh=SPL3XQ1tu1vWeHaH3hszUW99/LjWt2MUH/1JFp5Dok8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NixYEnPPprLDznEP5ojGH6V0Q+/MaX5xDR04sqxtMHnEgCgiGU87mJcxCKi7B9OQQTWlqmBWYxiNIcxXAOGRruox1J23lrOEu8xePpZ2Ds4WhMeWTUI2eBr3ukuADCI9I5inH4eBEqViA8GCtPgoEpTbxG7q77A8JAJxAjKFtqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com; spf=pass smtp.mailfrom=amazon.co.jp; dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b=rq2jod52; arc=none smtp.client-ip=52.95.48.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazon.co.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1731373916; x=1762909916;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=kbTAqDo4z0mETHSFiamEzBpNc9m1yAvP8V71QAcPZhI=;
  b=rq2jod52F1vp2NfsTbCsNR21HLGJjyq/sTwcUoRr0ZvfIoX83H3kV0ps
   Pds2EBZG43gvuPt9EEKcpTmMttdRDSqv0H6JRV/Fn5L0vjBn07TECGZJ5
   9UjnnU+GTLDdVdsJVxJ9bWWaf0exhRGJqVnEzG6pTbF8hgKO9D42wr9xF
   0=;
X-IronPort-AV: E=Sophos;i="6.12,146,1728950400"; 
   d="scan'208";a="438837700"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.124.125.2])
  by smtp-border-fw-6001.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2024 01:11:52 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.7.35:29434]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.17.195:2525] with esmtp (Farcaster)
 id 16a8b21c-41f4-49aa-91ef-9847d021dfb7; Tue, 12 Nov 2024 01:11:51 +0000 (UTC)
X-Farcaster-Flow-ID: 16a8b21c-41f4-49aa-91ef-9847d021dfb7
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Tue, 12 Nov 2024 01:11:51 +0000
Received: from 6c7e67c6786f.amazon.com (10.187.170.36) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Tue, 12 Nov 2024 01:11:49 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <alexhenrie24@gmail.com>
CC: <alx@kernel.org>, <branden@debian.org>, <kuniyu@amazon.com>,
	<linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>,
	<netdev@vger.kernel.org>
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Date: Mon, 11 Nov 2024 17:11:45 -0800
Message-ID: <20241112011145.65139-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20241111062205.207027-1-alexhenrie24@gmail.com>
References: <20241111062205.207027-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EX19D042UWB001.ant.amazon.com (10.13.139.160) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)

From: Alex Henrie <alexhenrie24@gmail.com>
Date: Sun, 10 Nov 2024 23:20:06 -0700
> struct ifa_cacheinfo contains the address's creation time, update time,
> preferred lifetime remaining, and valid lifetime remaining.
> 
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/if_addr.h?h=v6.11#n60>

Link does not need <> around URL.


> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>

otherwise looks good to me:

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>

