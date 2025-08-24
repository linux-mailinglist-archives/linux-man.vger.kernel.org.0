Return-Path: <linux-man+bounces-3626-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A47AB330C5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8183F1B25ACB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 153E32DECB1;
	Sun, 24 Aug 2025 14:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ZrfzQlCA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8099814EC46
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046955; cv=none; b=ACaz1ghEHqyLdPLuu1kZBCVu5AcVybI4IZD7NF5Ayg59SUahfUzxtTO5AIJiUL8FkqbBCiop6/dnI98p1JotOPmbp0k/yLaqD0cW/mXuqyxNNw6p9VIr1V3oxyXmUEmcXnsNkEiv8Y0dU0VJYsOvwUb4lyOwtuVxmBJBWPbS0D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046955; c=relaxed/simple;
	bh=IpJ88IsOmZSf8sweeNbkMfpCGlpdOmBVahctSEUBEEw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rewoL8Qjokv1S1fxqbXySj8fAHSlY54lP5kV1HxevmGmWpUw5f/OYyqr1a+zQtG2ItGhjQ/5ndvM+oHY4QQBrXVO8rhkR2CO8ZnholTdnTMxJenCMAHQ45vbwiRYTHjS3IGzsWrbty7MZV8v3IQvR5yGpGpuaWDaWk8a4RGex48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ZrfzQlCA; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046922;
	bh=F5rFTRTHCYQ2OxRZckolcrVcQhua4DtjCgeRaYku6TI=;
	h=Date:From:To:Cc:Subject;
	b=ZrfzQlCAhsnMv8R83vQHgckIggS3sXeWjgeg1V0iMhVekOXJU/JwOjwZodwNdTXHz
	 cJ1Rq+d8ZxZY5SJjFOL1C0iYoTUoztemg8e4ZEZadKZlhxS7SK7rngJZeHY+zHK/Lk
	 1ZRzMnZepD/RZ66tl8cLz7S+aZmTfGLEU/xIbYlUf10qOMbR0cfoNZUgl53tGGs4xP
	 3yHCuGTH5leyugOgL/Crx+cxmsb55+MUH0UnjRh/8uQZq2f874KAsKVpUlr1j6VGoU
	 FdwfpepQWEqHYxBwBob+sxbHY2rFb8jYasD3Da08w6ffUclDjmBzekzBhlkrMi8Z+e
	 D3gEsmQBFJydg==
Original-Subject: Issue in man page listmount.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021551.0000000068AB264A.0013932A; Sun, 24 Aug 2025 14:48:42 +0000
Date: Sun, 24 Aug 2025 14:48:42 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page listmount.2
Message-ID: <aKsmSrJiLLdMvKuo@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<… size_t> I<n>

"B<int syscall(>size_t n;\n"
"B<            SYS_listmount, struct mnt_id_req *>I<req>B<,>\n"
"B<            uint64_t >I<mnt_ids>B<[>I<n>B<], size_t >I<n>B<,>\n"
"B<            unsigned long >I<flags>B<);>\n"

