Return-Path: <linux-man+bounces-3573-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD3DB33090
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40D951B25892
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BBE02D543E;
	Sun, 24 Aug 2025 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="KEJH0H9G"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6672DEA7B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046930; cv=none; b=DOw8glTyUuhgS1A6upG0Vuy6gRSLeunG/CnE6tUGRuYa+MCWaOx282PX0Lv7leZgHBEPEUHzl2ZuLEQqQBIZjTIoBd9L71mwqZlBjSkE+OKnPEaXxKXxBnq5/zETUZeekHo8MamwCNkQlp2AEUp1aDnxS0h4c1BjJ4piouCk+rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046930; c=relaxed/simple;
	bh=4UXQpQCiKp1kE/uCf1osbgME5bFT7nROeMmP3htn0MY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=chnGoA+Q4UuMJboSWgcdG0v0k0hfVGmfvbeACtDWNYx2tdhAhGsN90WZ+SfhpsCU+c8i819PE7wylpe54e16meGNRwbwrkS6wnXurAgyu+RP2Oq3w0KkSluDiaTW305jvzhuAXv4GM8cN3iaRas3iG+RUWDLttla14voXg5WxE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=KEJH0H9G; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=kIFTB9GOvjqK4fpY8GW6m91qfqhEf8vERc1ALXGW2h8=;
	h=Date:From:To:Cc:Subject;
	b=KEJH0H9GGEKeJHgsSbuyzOmNFzfsR/xcihgcEhwZR4oHKDiMn6lZCzutTlG+k1I/r
	 nOQOUFT5TN2hIQkCFTw6DgdqwFPUITXR7PDqIlYe3PLGDCpcuczdzXb065pErjBqW1
	 QXLvkcnLNYjisDNoah5wxq6ULCHh2Fugy0C/OL/DMq28J8gmA3ztA0FgWCxaUy3auQ
	 XS467e7WPd/Ql0dV+nDwR5D3nNinB3g+I6rYJvGh8z4EDu43vuiWMQLcQGd1gDSxEb
	 1C4aX/gx5p/1vZpwkK36bk22QyKZztIi8l7gPA7S0Y9oJYOH6dj4PavZZL8YzZatQm
	 fWnuMhHYgiA7A==
Original-Subject: Issue in man page wcsncat.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002169D.0000000068AB2644.00138DFA; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsncat.3
Message-ID: <aKsmRKJCtKayNKSd@meinfjell.helgefjelltest.de>
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

"B<wchar_t *wcsncat(>size_t n;\n"
"B<                 wchar_t *restrict >I<dest>B<,>\n"
"B<                 const wchar_t >I<src>B<[restrict >I<n>B<],>\n"
"B<                 size_t >I<n>B<);>\n"

