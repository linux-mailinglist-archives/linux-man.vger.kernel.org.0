Return-Path: <linux-man+bounces-4518-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CB2CDC8E0
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66B9F305E374
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD773590BE;
	Wed, 24 Dec 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="KguBuhjS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F73B3590B6
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587124; cv=none; b=Bo/OO2r5IhXh2sDVz6I63DCGEwoCsQPauDSG3uAOdJbVehQBbNZguKGxs/fDyWGCfL1R/qPcWctLdGXRxuCuJZTXVmGKmnkWl0NLzoo4TZ8oBkgC32tUMw+7Z+/GPoEZU7V+NdM9MGlWYkGm0Z1wJsR8MbCCy0SQ2ZuE7vZmElU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587124; c=relaxed/simple;
	bh=SR6GfPHAisFNXqpVWEBoJxBrm0634xkuwpJv+0hWpjw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SZvrGVdI4ELd1nBVeG3GEhoac2vig4rmd5Ypu6CSYk39ElZT5eWu1DwKEp5FS9OqaGXUnraf5VvTQ6iRTf0AJ+1qE8/r1hwG7mJES/FDeKWefeW7+Yashv9rT/sV/SvEhmgof+5Rhd0nb0gS3weLVjxQpwP9EM6M8uIlMtaAJdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=KguBuhjS; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=HHvGWycr0MJy0kvkGQa72tbBoUg574H7RYZSqpq/qck=;
	h=Date:From:To:Cc:Subject;
	b=KguBuhjSqJkNEkUTg6L8bmAnIN5WYofP0ovNKjumqW6H5hc87Nxk9iQQO77IxWVIN
	 dF32Kbv6tgf/P42+HCaWH5WXteStyoZCEXJ52n9sZ9zd+d9LLA22/9slOfyRpCAqDt
	 qxbFEGUo1BDOoVmLa/EkSqG63tK85P5oyAO6J/H7gGnkCpG02+SBsT8Gtem9wX5Xv3
	 LXYxNpbCNwOMZBapUMT6lZtGuRv30PI+ZO9FAaLNX+w87pHKVhCde3j9f4fgHNg7b7
	 jL9lbsaHiJLfwA3DPH1keNtzIsqLGKw/fa5qqTxHyhrER6yT0iyzZfo4B6mb6mnmeo
	 MqRiXi7sZDGwQ==
Original-Subject: Issue in man page fmod.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020B39.00000000694BFAE1.00319A53; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page fmod.3
Message-ID: <aUv64bXVpofjc_6H@meinfjell.helgefjelltest.de>
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

Issue:    I<x\\ -\\ n*y> → I<x>\\ -\\ I<n>*I<y>

"On success, these functions return the value I<x\\ -\\ n*y>, for some "
"integer I<n>, such that the returned value has the same sign as I<x> and a "
"magnitude less than the magnitude of I<y>."

