Return-Path: <linux-man+bounces-3623-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 847D6B330C2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D0261B25E64
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F532DF6E6;
	Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="KfFAeaSg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B762DECD8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046954; cv=none; b=S23Wo0E6SEZrz19/HS5yf/wRlNCzYhgP04ab3U8ERU7YK6KVJDVy2XLrcA9lu2KxJIq62BkDAcLQoJg3hDQShqJmMJMABYfCKkYvzTMJTrpAt4flNtFaFXxnyU1Reu4VJeBhPcPxjq5apDPLXLOfOBL7wm8njm9vE8vZruoJOJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046954; c=relaxed/simple;
	bh=N/eUxRUOKs2FYH4x0hYS/fvkBZY6icSJWItKjnEaXoY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ij8yoE886kC+EaiSy6pFq85NW5dYell72BqGJ0AznWpORH11gML3rK8LhFluL7ndcQrTp3NOjfbvz10nd8fRYB4FT6d/R/N5y48Q+/3GtSol5/D65lyXWSbI5iyShp7A8V+raBu/RtPSNTvzD7Ut+zyW1eTTlGhcE6L2Yrvdpj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=KfFAeaSg; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=A9aPNXw2EC4l1rKjuV7/p/xgJC16MHb1wOOS6E1hvT8=;
	h=Date:From:To:Cc:Subject;
	b=KfFAeaSgiEQRv/pAt/3MEwGPX8lJJ2ns8cqNEdWxc8oFerE44GlU577HCVnyHlKNi
	 jUJG+8vB+DgzyZnsjNj8plc+5/iNQIiOHHCQAcKCg1LzWYLP3eSSsGljuYfLhO24Bc
	 KnUwP4DfTKZqjlRIfq3KgC0aMieoS2J80Sj1Y9h3bPLMO/ivKVsyhzsx1qh5JrZoIv
	 tfF1i+4ThrK8r29iejMAnuc1qysjpJgF3boht/uaOLgvtWMXqIIdsuVcbq5M/PAzdO
	 hshEJr9e3JoY+RAH4rAHYU+hBw7oIVSLVIgEvgcRfZlSs1ifBhAu07QWeYa8/+1/kn
	 39RQJGokkwC8Q==
Original-Subject: Issue in man page ioctl_pipe.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214D1.0000000068AB264A.001392DE; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ioctl_pipe.2
Message-ID: <aKsmSrDlvlHVi2Li@meinfjell.helgefjelltest.de>
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

Issue:    as below in the text: General → general
"ioctl_pipe - ioctl() operations for General notification mechanism"

