Return-Path: <linux-man+bounces-4480-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0F5CDC887
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D9D730380F2
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77A0B3587D0;
	Wed, 24 Dec 2025 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WtowlkTN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59949357A54
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587103; cv=none; b=p/NmpF5y3grf+w9rPUVc9VwLZ3buFJ/z99L8fIKLhfnFielqT0qR1OSEoucvm2Ax5/YQ5JJki466kPueMjdDSHxVn2i9ykCcHxBaJ6Ycmmd3BdKIEVXMZfe3rTJjflGoAiCEPbAO6Cyi4RZwBvoNSz2r2NRM+H8O9H/5m3tQfUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587103; c=relaxed/simple;
	bh=N/lCNj0rivLAdPmN+MiAw9ckU+T8iPpBAcIrSFLIv/E=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZaatmihXQmhkRQ+kIiI6D4C3WAc/mJDAgK9rrRddMqYpgwYzCDordKM631Hmr+WxJ0+KIiviUUXawUTvP6cq8sewGZFGdEwDngQ+i/AV7s+QLZ/1tKahN3VERXwmEekG9OSDKwxyekHrOF0x9DWC8h/CANm2L5MlTsCKA/gvJpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WtowlkTN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587100;
	bh=yzqDg3tjanqUCcEbo/QTlYB/1Z97F6n+fGb3F4q6T+8=;
	h=Date:From:To:Cc:Subject;
	b=WtowlkTNrjynnM9ABpqUrHvujllAbr+dunmH4ITYVsH1JW0X1Dqe0mqvkQKldKztN
	 u8RN3fASVTDMnvOl598/4PfMnPA5Bu0rtntHILX2pVccUzMU2hUmzk0SqEwSd0q2IU
	 jpflPgpkFLGdl7SW+l34IjXTLnI6CF3zmDZFgYglPuuJEp4QgxW+6R+ZpRiVp5Npes
	 X/sdvqQ4tXTsrB01pjiORLG3Q5k4tG2bf0vhhlPrF6i806mir3Y3H9lolFMP1vE9YR
	 kyXYEIkRZDdHRYmiYTqDr14wS7cMkGBX3eTd9a7rpWUxS8BQxZBWtjaQj4e73DTedv
	 3WERUcrrebTGA==
Original-Subject: Issue in man page ioctl_kd.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200AF.00000000694BFADC.0031967A; Wed, 24 Dec 2025 14:38:20 +0000
Date: Wed, 24 Dec 2025 14:38:20 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page ioctl_kd.2
Message-ID: <aUv63KL4fjkvKquK@meinfjell.helgefjelltest.de>
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

Issue:    a char → a I<char>

"Get keyboard flags CapsLock, NumLock, ScrollLock (not lights).  I<argp> "
"points to a char which is set to the flag state.  The low order three bits "
"(mask 0x7) get the current flag state, and the low order bits of the next "
"nibble (mask 0x70) get the default flag state.  (Since Linux 1.1.54.)"

