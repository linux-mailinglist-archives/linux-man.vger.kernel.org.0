Return-Path: <linux-man+bounces-3583-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F105B3309B
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A33101B259F0
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0360B1F92E;
	Sun, 24 Aug 2025 14:48:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="niexDLgH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709742DEA95
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046934; cv=none; b=VXrQpYHEwsYtwmwrcjPDDIq2pCUL9jkUu61JOiq+coSzBAYMgMmDci5IlHG21nxJba/gJAI4GC4GLN2v8XPJEIDKjGkzluknpzjcHO/EJMy/La3OPDMWGxctSpZAy3Ultypo+0+1KZbmLzNlPcqGSlYXGNIECFx76ZGkAVjVUFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046934; c=relaxed/simple;
	bh=IePtYbX4kCYKeJITHAu0I1T2VkQtc4uNh2n77BV9R6k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=R/zFRb4a6HmJ61i2LQU6tIPMquNfThyWO4eTsgavjDDoxjxSROGskQuz7x+D2v3JEZB2hwhe34m66TpYwltX7nzF5pST62PJZSh0UE6f2kCV2DZFfErZCk5T8X0lmN3Qe/MvGCTK/voMLHW7w/Z8CaOcbXsLXw3EnDc9gVecol8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=niexDLgH; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=oJc0KPMyxaYCDWtnFO4qB57EC2/jITVJ37wiC9KJrJg=;
	h=Date:From:To:Cc:Subject;
	b=niexDLgHpXwu9ssmzsJ6WVzrKBN4+trpwH+KEnRpTa7pZ5KtqHeSVWQQga4RX13Q6
	 wbw4fglkJQl25U8SR2EhjnZnPUtFV4KkYpdTRM2S3eKSfFVEb6BNXv99Db9vwtF3GW
	 lhqcNtm+NmWcwLN2/QPr9z5duMMdBs85ej7LpF6kYUf67RAo7oq6NucWm726T1Mr85
	 XVUG68KxHEgD5DEp9B2ku1oI5t9GbDmTf5DI03cDLwd5+4DhqeQzcNY6WQXA/UdDmE
	 zLDxWT/6+qaUAw+wnRAd4IAOmbh2Mb41dulmDMqxFU3Lbpjeje2GjRVB+WGuJSrmpM
	 Vg4zklGhXJ4vg==
Original-Subject: Issue in man page wmemcpy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216C2.0000000068AB2645.00138EF4; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wmemcpy.3
Message-ID: <aKsmReN9ipQGcHQZ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<wchar_t *wmemcpy(>size_t n;\n"
"B<                 wchar_t >I<dest>B<[restrict >I<n>B<],>\n"
"B<                 const wchar_t >I<src>B<[restrict >I<n>B<],>\n"
"B<                 size_t >I<n>B<);>\n"

