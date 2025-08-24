Return-Path: <linux-man+bounces-3578-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42547B33096
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3367E4E14E3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF872DEA7E;
	Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="QATIv46Q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF5D19ABD8
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046932; cv=none; b=b9wExTxf6iaTlA/yPSbJTnlPCl/+35iyRTBaNhruYB//SL7McXh1E1dL6w+yDQKlhyOVWtYfVofsp3/FBLhbcx1Pdq830d0xqV2CQva/zITuY1JIU2tk2OMbdzjxzs+orZVpkBN4n7sZwIikFF+Wensulvxbw7UFcGDOz0JpMxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046932; c=relaxed/simple;
	bh=kmYclmyqCVErdogogFagZti1tIXBIwbVtQI5+tKDZJc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=D5pcp6oMxffYWpf9VXMgC/cI5HuZluGDabS+XD6+hD3hd6f26VsFY4DywaRrB3wbtZ6Bw/rgaBsIjS3uX1RAxL7hFiiErPmwU8JorCQA23NzFBUPfcmbPBku8uE81kfqNVFUOKfG4Kr1mZrIKEAs0HsiLlggX6nxglQoW1ZkDrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=QATIv46Q; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=tc6ERc+rSJJ6EZA7xJktyXmsDw88Sr0kQS8Civkb8a0=;
	h=Date:From:To:Cc:Subject;
	b=QATIv46QJEqsjDTz9Lz6ci5St0/e7wpdgBGfQLzIDNNSpCa+AsPrinyspaaIOWpsS
	 x4PxgpDNmAEwpgb/vBJ8Nrl6eVfGhboTCswRKAHcnAZKc6s29vJUecmuDqM4580rBV
	 5vapLwTsU7BO9K7llsTnfuRqbmIg/zD6lygYnOnX0/1E5sGe01yGDMWELkcvLqLzQF
	 5X+7I2DUwRoMemIVF4CN4fnWBGsRQ1ucCFXMGjAp+EmchLsx1fp01euy64M9vsN+uX
	 T6g1vkwqjHbrZz0HrZqtQUsj/ayfRYHEJlkrG79Yj+KtK5AC8JGpLO4G3jbH8pbcLf
	 EmCrjmx9/IDjA==
Original-Subject: Issue in man page wcsnrtombs.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216A8.0000000068AB2644.00138E77; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsnrtombs.3
Message-ID: <aKsmRKtfTQhIhs-F@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t size → B<…size_t> I<size>

"B<size_t wcsnrtombs(>size_t size;\n"
"B<                  char >I<dest>B<[restrict >I<size>B<], const wchar_t **restrict >I<src>B<,>\n"
"B<                  size_t >I<nwc>B<, size_t >I<size>B<, mbstate_t *restrict >I<ps>B<);>\n"

