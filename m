Return-Path: <linux-man+bounces-3627-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92557B330CD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D4E31B25E66
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4C914EC46;
	Sun, 24 Aug 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="kT1hGaKc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C9617332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046956; cv=none; b=eHgoXmt+DfXM4TzcSLg/Dq3pq2r4S/R61Il1JVqQzr+3JJc18aogDUlDt9rO3J10S4gfvFb7mlRRU0aZDOYZHPcMH0p+O+A5aOTM7nen4w5YBj5kq852SyKFe20/m+HZqSxkpaAuARG+KpXXeDgP+mcaQT0MTCVLdNeTj2MWXmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046956; c=relaxed/simple;
	bh=Lnk339eylVMuE77XHA7VLCQMuq8CCjQglc3/JZQNeNM=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=nw94E8a+zAgAxwxLQE2V8saEXNAltItj7ePOXYsqh6vsl5/KfYUudslH50T3lckXjf7WFmvHoITMb3254xkBO1My9oG37J+rb87g1MZNkoi2XNSz40FJslQDTx9M+PySZ64thvDeK5UOBzzFkRui3h7R49PMQDdhOtTlzbj6//I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=kT1hGaKc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=nHI0O6FCx1hLcUbpY/RJeCOTJB6tS9m/iODOjbb8nGk=;
	h=Date:From:To:Cc:Subject;
	b=kT1hGaKcqNSGcTCFrgUNc345VIjSqExzwx7aQfO1jajH42hch/yemPd8Ac3XaE1jg
	 CPWVxIPsUA2MbGfTwUAfWau5rVuJMbHvRB8xnIdMGGL8D177hWZqLsJvpoN4+5ikL5
	 O8BXvpKCKZJPMyw+cYzYFd6Kg+yprgCaduwzL+GvLHs87GwnvTx4Z5lsKljLIWMRwn
	 BloemoGmCg6+MoqwmrYDJRg0TAotaRyetVISFLcERUmCBMkWjKKvAOqztH2LEmeIXS
	 G/9pWaSNgjuHNlLF2C4g+AOkoPB1DQbK/9rjMYevblFoZsvBv6q8GrPgM3Fn2aaMIT
	 KT/i2COa/YVzQ==
Original-Subject: Issue in man page listmount.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002172A.0000000068AB264B.00139343; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page listmount.2
Message-ID: <aKsmS0oOniWzGUlJ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    Access denied due to missing permissions?

"Permission is denied for accessing this mount."

