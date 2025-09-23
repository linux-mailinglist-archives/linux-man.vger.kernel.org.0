Return-Path: <linux-man+bounces-3952-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D51B97E6B
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 02:34:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA5C34C0821
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 00:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8585718C008;
	Wed, 24 Sep 2025 00:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=maguitec.com.mx header.i=@maguitec.com.mx header.b="GiZj/qCe"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-g3-154.zohomail360.com (sender4-g3-154.zohomail360.com [136.143.188.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB302347C7
	for <linux-man@vger.kernel.org>; Wed, 24 Sep 2025 00:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.154
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758674079; cv=pass; b=bt+wj+K4dHQJinRZLm8ARGqGLZKgna+MnXCNTPxyAouS82XA3S6LQ54EiY/2xMZs0nXVInQxYZwmAPxmJwYCwRwN2JQD46VKS32pldfHUa0xZ7Ma6k+gHBmmltyAX9Q8VgfLghLuoNiLqid40L0NmV1XdXEMfF/zs0EfYet49sU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758674079; c=relaxed/simple;
	bh=Y1DAdWGBsjIvMyxrGpXMwV3Lh7NlzGtkPSNeg95JYRA=;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type; b=ECCjX8mkuZcvyU1q68TbkB7f3nw0+6LAthXzwIrtqGqUYjJMwlwexqYznyJjwqgtnJV19AXf2FT04gmswuBRsY+TklqcAQkDpX5M1i7/eHmGwCDmx/TzjgyqkaWEhOwm04+NduHlOrY4EciXNHCqOIBUJNyJmGzDZSNqQkwlCns=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maguitec.com.mx; spf=pass smtp.mailfrom=bounce-zem.maguitec.com.mx; dkim=pass (1024-bit key) header.d=maguitec.com.mx header.i=@maguitec.com.mx header.b=GiZj/qCe; arc=pass smtp.client-ip=136.143.188.154
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maguitec.com.mx
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bounce-zem.maguitec.com.mx
ARC-Seal: i=1; a=rsa-sha256; t=1758674077; cv=none; 
	d=us.zohomail360.com; s=zohoarc; 
	b=c4lIBozNp7jxtgS4NTf9KLdjlgLDzIDhFxAZmkjprwsVZDUufVCkSDihyX91+V97gTfSSmY5n/z6zSQzckZV5odyKyC30D45048oHzBU1J6Lp3RtLJ9XXI2+IXfaNvx8Ueg5vruM63ubq4ukQIO5Xsm7yKGWGtOcU4P+K7xhniU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=us.zohomail360.com; s=zohoarc; 
	t=1758674077; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Reply-To:Reply-To:Subject:Subject:To:To:Message-Id:Cc; 
	bh=Y1DAdWGBsjIvMyxrGpXMwV3Lh7NlzGtkPSNeg95JYRA=; 
	b=fbfUV1VGUMIPHoIMXBlmLs9t2J1TmT2aBajWs7QzRDHs8kJzDwL3taSBoxtmTxypGNZR+KuaImDve/6cAjA4DTPNo3YP50KuyXSI3NYYKVdk3DRorqUYDDv1V3tPHCl5FilpjkyW6m4X0b+bLjde3SZkpUzd+V4N0EPu2Njau8Q=
ARC-Authentication-Results: i=1; mx.us.zohomail360.com;
	dkim=pass  header.i=maguitec.com.mx;
	spf=pass  smtp.mailfrom=investorrelations+9a837630-98d8-11f0-9ce0-52540088df93_vt1@bounce-zem.maguitec.com.mx;
	dmarc=pass header.from=<investorrelations@maguitec.com.mx>
Received: by mx.zohomail.com with SMTPS id 1758671653243218.41742380290168;
	Tue, 23 Sep 2025 16:54:13 -0700 (PDT)
DKIM-Signature: a=rsa-sha256; b=GiZj/qCe8z8GwIFoU5NSNRmPJS//puFKN43LrBI5Agi/jqFhF+P8W9J9K9xIiCEJRVVuD0EgjhWsoQKGVHIoPQQ71wf9ulL8oHaAUePWl0PnflXbP7oP3EN/LuhFvJ/UZAdUvDr2bPyne4MjrljL1Dy7+QFxFulNaQ1UL7yo0Vs=; c=relaxed/relaxed; s=15205840; d=maguitec.com.mx; v=1; bh=Y1DAdWGBsjIvMyxrGpXMwV3Lh7NlzGtkPSNeg95JYRA=; h=date:from:reply-to:to:message-id:subject:mime-version:content-type:content-transfer-encoding:date:from:reply-to:to:message-id:subject;
Date: Tue, 23 Sep 2025 16:54:13 -0700 (PDT)
From: Al Sayyid Sultan <investorrelations@maguitec.com.mx>
Reply-To: investorrelations@alhaitham-investment.ae
To: linux-man@vger.kernel.org
Message-ID: <2d6f.1aedd99b146bc1ac.m1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513@bounce-zem.maguitec.com.mx>
Subject: Thematic Funds Letter Of Intent
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
content-transfer-encoding-Orig: quoted-printable
content-type-Orig: text/plain;\r\n\tcharset="utf-8"
Original-Envelope-Id: 2d6f.1aedd99b146bc1ac.m1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513
X-JID: 2d6f.1aedd99b146bc1ac.s1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513
TM-MAIL-JID: 2d6f.1aedd99b146bc1ac.m1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513
X-App-Message-ID: 2d6f.1aedd99b146bc1ac.m1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513
X-Report-Abuse: <abuse+2d6f.1aedd99b146bc1ac.m1.9a837630-98d8-11f0-9ce0-52540088df93.19978ffc513@zeptomail.com>
X-ZohoMailClient: External

To: linux-man@vger.kernel.org
Date: 24-09-2025
Thematic Funds Letter Of Intent

It's a pleasure to connect with you

Having been referred to your investment by my team, we would be=20
honored to review your available investment projects for onward=20
referral to my principal investors who can allocate capital for=20
the financing of it.

kindly advise at your convenience

Best Regards,

Respectfully,
Al Sayyid Sultan Yarub Al Busaidi
Director

