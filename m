Return-Path: <linux-man+bounces-3633-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A67B330CE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7A8114E1840
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894EC2DFA2F;
	Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="pLVkQn0t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8F42DE6EF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046959; cv=none; b=HKX0ymb9XLI9eVvd6Sq3rA0oKlZkbgYdeIMAp//8t4Ck5i4edwYAbeMvzSSg9DyghBQaozX51nGeP9fplkt9/78NuVYcVMmEcLItj4Rdg/2CLDp4sCvoDec3EsHMBa9oXDPed4Rj2yLa38KReitIfTwne5gtfPH7ZsFhGU1qHj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046959; c=relaxed/simple;
	bh=i9kcHRm78xk6nLtxHwiwhLEfdWjcVBLdFx3Kkg84iEo=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=n79rjVygkU3dgQbBZFWmNSKYaUm1DUSMa/RFmsJwhqkAc7KQDCFa/7jgRFhdKHo6n9eMYCJlXO+bkHm+PqiyaEfVxVtGP/bmlJMzngJk8X0fCg0FulcI+wnpy8PzLSu9zeP6RUIl3s4cuywE49GIa//zV8Z57IsatxCPWNQCab4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=pLVkQn0t; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=Z0y9kpLGAjdZogVFD9I1c6j3uSgSxIeVgLd66XMT8ps=;
	h=Date:From:To:Cc:Subject;
	b=pLVkQn0tqeCEKGtvn3p5RirXHjzUPRnL70IYtZkV5064brgaaz/inZqVTuaZmwVup
	 hCWFDORNpIM4MFJkBAGTq8DXA5R+M6+riwAER5Fn4K/cdaz5GR1iJ+LAQ0tAAmu0XS
	 mpPDWFY/kDzWFOkQwN7hN1+8P5Y2IWWu2Q3hXQ67y8suyU15Ai+X3XT7uzF3U43B9L
	 izikcxDyBjLuwhqt/7Pi8AYoU+Ql2LoteyjVOQxV4xyElg0gO8eI9/Pkb/dWCvmvMR
	 m7ltF/r81ZZulXQSlWouBkO6RA3UlodZ7O0GsyRxUj67qs+wMXmInU270VuiWDINe3
	 BYXtEvQj1N9hQ==
Original-Subject: Issue in man page mbrlen.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021734.0000000068AB264B.001393DA; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mbrlen.3
Message-ID: <aKsmS1JPuy5Hz2RF@meinfjell.helgefjelltest.de>
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

"B<size_t mbrlen(>size_t n;\n"
"B<              const char >I<s>B<[restrict >I<n>B<], size_t >I<n>B<,>\n"
"B<              mbstate_t *restrict >I<ps>B<);>\n"

