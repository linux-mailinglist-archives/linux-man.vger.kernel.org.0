Return-Path: <linux-man+bounces-4513-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBF3CDC8D7
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C99A2305A824
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C42903590B1;
	Wed, 24 Dec 2025 14:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="mC7X3YV+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24051358D3C
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587121; cv=none; b=DAaQp9VLohqrjhBP53JJBc1D9Sfn2rxN18KLuWHpbZKNJtKleFAKlFRU3ODCfCcFXOIWM+lStZnkr1xzWsu7bm4rOX3Uib0qfk/8ppfcrxUHKp/cbcrLX7Be3T1FvJp+JCErgUYGMxlzyBMt07rR0o+trCRjodgZrVHqTqEUHlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587121; c=relaxed/simple;
	bh=+xXDrU5uKBax5RsoLuEqbA84iRDtaYes4XvZzTYyarA=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=oOczsTK1aMi20qIMEF5lMwIbo780Vzt7X0g4RjW+IIvAoXjdbebHJyLiBHnnj8ENnpJ3A2CTlCTVwM8Ev7+dzl9Ii2UuLjBIPz4rN+dbLvvQNDNGfw/bVGq0rbnWSYWfJ3m53WPpNKO7Z3gcfZlaGrySJArPHetkPn+YfdsJR/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=mC7X3YV+; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=Z+UelajP04NChbEZr04wzqYivqvW+YTeFaaNN+lOEik=;
	h=Date:From:To:Cc:Subject;
	b=mC7X3YV+bAMreCtKItcrVLtFJ/nti9oLbplE+XQNySWmJaNPa+mL0x4L4+Fet+nmz
	 Tnq+TIT/6G3+YjQHX+CRpZLFRWeyWkB414ZNcw+HH8keUy5ArpFqJGhGxlB/T46XAc
	 191rWjBLLoy9f82xSfXjHwNykBeAuVRF/+9is5JcfYTAbXHyPs17DWxfx3aK+TSfoh
	 2fM+R1sIDmicSBWWMgrkT6DJdv5TE7ZyxW2V0LUiyezvEvTWCMQxwQqKk5OzB1r0YM
	 GK6OZX0idboK4WXT+ahJi5gHC7ywN4e1FEkQrImoon3W7b5zATnXVGFPy91p9lTm6O
	 xJkbHs1X3q7Cw==
Original-Subject: Issue in man page  timespec_get.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203B7.00000000694BFAE1.003199D6; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  timespec_get.3
Message-ID: <aUv64coBiLDIm9NP@meinfjell.helgefjelltest.de>
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

Issue:     No trailing comma

"Standard C library (I<libc>,\\ I<-lc>),"

