Return-Path: <linux-man+bounces-1953-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7AE9D030C
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EEA43B23E44
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819571714DF;
	Sun, 17 Nov 2024 10:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fAMO7xCw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C2214A4D4
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840698; cv=none; b=fODNrfGMqltvObsD7n7j77wk52onEa/VzxG18fzYihHtdhmKusHsem0UQ3jqoPk8AzJFjh77fkuhKjDB5rD8+f5oiGCdurqCS1ffO6sKT+RBPjCJEDJDRvin3MmTeFTyEIvJyoiVZdvNTpZJcAYrB+QTbPmXRRMwsEMeDZ/JMLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840698; c=relaxed/simple;
	bh=zArmv+7+RsL0z9WWH/PAJTG7V2lYIur7ZHERV+zwdys=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uHD+L23CFOy+ieGhorDpE8r133X4OIk60HnBf8EpQMpG2k5AiUA8QAXli9wexBT7UDXu0VWJ7U5M240jzlTnFmuVhE06odDJv1AmgsvSWsv4Y8DjgpdLJMw/Q0kROnQg5BPX+wVJ0ujwAZdxc2Y7Erw/wSB6maEHj1Kdof/aXVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fAMO7xCw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=W2eMxnrSQFW2kerVe0HU0KrutU9m9X5mYbEp93+I2xw=;
	h=Date:From:To:Cc:Subject;
	b=fAMO7xCw4fqW7aLFi2UhqlgfXIpClI5bgDd56h60TUby/Pesu/uobljuA+IZ8BS9w
	 nUJBCjNow43zV6/b0ZHGFvOQYnY8Yp4i544HoIDdtNhEsBv0SBprPgjvN8RXjhA4MV
	 w/xLtjEcH5MSG7Cvn2M4SqqIdkS7WUtwGMa4Jj7FyHFm4blIBE+xz4DGUEFyJRkXCv
	 DWKq0cwdkHaxh3muP7NIRyoVnkPOLqb59FTmCjnvdG1KoavRqeHReJI1q9z6L1aWW5
	 dHCHYEvSyW6W3u0rY2je7GXJxrod3iCB5j3aYBVDZMoDZ6jc58jOtsmHEbJTpy+zN6
	 FBkFzG3qgXgnQ==
Original-Subject: Issue in man page proc_timer_stats.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020485.000000006739C97E.003FC364; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page proc_timer_stats.5
Message-ID: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
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

Issue:    Other pages don't use FROM and until → to - maybe align?

"I</proc/timer_stats> (from  Linux 2.6.21 until Linux 4.10)"

