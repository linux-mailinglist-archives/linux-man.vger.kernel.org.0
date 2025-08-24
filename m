Return-Path: <linux-man+bounces-3670-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A82B330ED
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BED3A203EBB
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6547A2E06E4;
	Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Tun2vvlQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D1F17332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046977; cv=none; b=lhz/BQT7W20ANQ7TYU8v7fUdiVt3bvE7JKAhY5qh7uXBrfOBLninOLDJEm067jyvLJPYQ6NPEPwTefdMfFpIca/NjcuZZW5/3zUx7bGABCkg4RGWwpYvTxlBdox6wWW9g5smDSnbHZMfdMFI8cR+eN+8xqV0g7SylcCi8pyGE+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046977; c=relaxed/simple;
	bh=6f5fmqNkI3lMP7YnHYOXDN/2c674idH4xeEbmHKVUmI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jkAbPp2IlDWmI5yE908At5RYZIgA9ItL0uNWFxqbyNEScES+LXpC63lhn+U5MOcKW5YR8pCc8jFbql9scFNlnrWlOsn+WXl9M/5h3Y0XigNA7UVp6LBggBKJXHhy8lp5nU2+YE+ijm7CNDEEp/Mxxv5Z2e16TzYUTPCGo62IgY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Tun2vvlQ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=TDf6CBS2my3HBWOISAAKCuTap9HORnzDz01bqy/4FHE=;
	h=Date:From:To:Cc:Subject;
	b=Tun2vvlQuY9j2sDCilL3ZSTjopy2c8ULHOaIURKsSOtyoUXY5zB2n8QqIhoBR7+qY
	 n9bjX6D758t1Mgelfe5e4myDWQ77NGr2OXeI2UGrR8QVjgdPy0HylxC58ntlCZL9G+
	 vBbpaTUD6bAMNJYWddWAjfpkfDMByYkT3K0CfH4hG8YliVii2f7Jq5pofG2V09o/gc
	 2pPjRFv2B3H2C2J407BCKJweJigoKxxZ1ZjERgtUVtxPYBKWfwRb/ht2josaFHVq6j
	 2TKqkvzZappy2kREzLzaUjcyu147UYDik7aIM3nc62oEpoOIpF6JEDdBweSuUIkV0f
	 /+R5HpLjNMJiw==
Original-Subject: Issue in man page pthread_attr_setschedpolicy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021779.0000000068AB2650.00139778; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
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

Issue:    inherit-scheduler → inherit scheduler

"In order for the policy setting made by B<pthread_attr_setschedpolicy>()  to "
"have effect when calling B<pthread_create>(3), the caller must use "
"B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attribute "
"of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."

