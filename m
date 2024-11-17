Return-Path: <linux-man+bounces-1947-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492E79D0309
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 911B4B2247A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 827EF167DB7;
	Sun, 17 Nov 2024 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CtonFvCY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010691392
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840695; cv=none; b=aIMyrpr8ULFevrdJF/m8fdXbxY1dobsnIZDAhgn5ZAJ9LDJ9zUYIemMzaty9SNjISw5pQtdaznKzK8TKYG/sS8XtiSXoF1dHW3MCJqlZslyfxGLX22HrmKAqZ8pLLbUKQsJDaOzxQ3f7Q4ih2g1VVWFJFn+ddqTaBiyPl5owcVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840695; c=relaxed/simple;
	bh=IHmIu6ZHsJ48lWgkL63GU7nH8vO27baq65/Z/tqISZo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=JAyI6WQGI20EUnxRA2Pc7Unsxvk19Aa1HA1x2XMbUcTTQj3RVQGBIXg21nEebmpljQ90McvU7bSiElVPRlVx+FVmxYPDBaFoIobJlsT0Rw50v6uHMmbNcB9aNgNRe0MoXtuRFAJVlzCqVBbdekG8eniBYMqfTQuhYJ2Ie0dWAqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CtonFvCY; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=N7rD01DtD42VAQh299EJ5K3/EQdkq43p/6BWgarkhzg=;
	h=Date:From:To:Cc:Subject;
	b=CtonFvCYRs5TTLJuNXnx/ypTfNv5LevlVVnPKnonlzFtWx2kg6QzStP9tYzgKvKrY
	 aN4QcxHBFFvoemhmr8kzrOTmXgv14TPSy5b08/Osljb1cTzahP7xuz30X1+y0VuceN
	 G/R4UIkl9KYYYr4J3JaCP/KsmC7McuBZ/eH4o6t/DZaL7jIY0/LpLylQD2v9swkqAf
	 e67ByO9tETHmu7HMEnw9giqr0wVT3IMPS9OsZEX+zB5h5B1Si3eFcRfxUDI1X9FtcS
	 ao8PIsQXceEbNvRyZhuUfDjc5nMqbYdy7ntSL448BQQ86yxbm5UQJJtlaD5IfdyQwH
	 3Adx0VGXwI1QQ==
Original-Subject: Issue in man page scanf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000207A0.000000006739C97F.003FC3FA; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page scanf.3
Message-ID: <ZznJf7-yGeL_6I1p@meinfjell.helgefjelltest.de>
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

Issue:    space, → space.

"These functions make it difficult to distinguish newlines from other white "
"space, This is especially problematic with line-buffered input, like the "
"standard input stream."

