Return-Path: <linux-man+bounces-4491-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6E8CDC86E
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DEEA4300508A
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44FDE358D0C;
	Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="mUqS1s11"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8763587CB
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587109; cv=none; b=tb2tawQOtLCnUjEv64av3gjX4ok40gGXRCE8GqTJN7ty/LFzS/IiFXXOBmnIYlZXi295NSAQonTQDSP26b7dfiDyHiT6y2UnBJD+no79Z5H2L53IcQxACLrFWIbtH1n8m2VtNtYlbqyi0cOfF7225FPvTj35ddkKLPSzssBxwFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587109; c=relaxed/simple;
	bh=0yQy3sqCxGS53W/NdFyKiF6iBlxclY8gk/sctiWaxvA=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=WDvQ+V2wAcKTUDTOX9k9DjN+0QkrhACl8taGiWXPB005yXS+iGq8C+Mj9rw4IQku53UmGYNtUaDs6MVcEhzPvMqcLTp+kW4sjzljclo5OibT7bQOlnCaag+wy9d+N5VsYayfxyeh1GgL1RaZzNehfQBYDuIW6+Vs4/PUgR0lDVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=mUqS1s11; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=0yQy3sqCxGS53W/NdFyKiF6iBlxclY8gk/sctiWaxvA=;
	h=Date:From:To:Cc:Subject;
	b=mUqS1s11FQRdHcT/b2ngeT98APyX29+teMenQtjmtSFwmFuSjjmKvvSA00pBbl6XB
	 YOfOZVAAi691E8lZA+1ANAU5ulHA7fwF1X0/e7SchL6Lyt5zU71FrBl207Wii/6OuE
	 /Csi2PusVVPKZ5xvonqOZc8/qSiKXiPpoi6zyGuNjfL0e6+5WfmiekgCCPVcyRNPM8
	 q1thrHGieC/x0vhm5jV5l0bpbbU6CcikDekGicsZctCwmY++WfjbmlWwXM0Ji2oq+x
	 Wz5//9O8wHvXxXB14LdZ4Gdq7zgkSIE8CSQwVkECxktf0PDOEuJaYBK34WUGR1JVOY
	 sCDxa415ekEGg==
Original-Subject: Dear manpages maintainer,
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020744.00000000694BFADE.00319792; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Dear manpages maintainer,
Message-ID: <aUv63oeYL1yrVAin@meinfjell.helgefjelltest.de>
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

the manpage-l10n project[1] maintains a large number of translations of
man pages both from a large variety of sources (including manpages) as
well for a large variety of target languages.

During their work translators notice different possible issues in the
original (english) man pages. Sometimes this is a straightforward
typo, sometimes a hard to read sentence, sometimes this is a
convention not held up and sometimes we simply do not understand the
original.

We use several distributions as sources and update regularly (at
least every 2 month). This means we are fairly recent (some
distributions like archlinux also update frequently) but might miss
your latest upstream version once in a while, so the error might be
already fixed. We apologize and ask you to close the issue immediately
if this should be the case, but given the huge volume of projects and
the very limited number of volunteers we are not able to double check
each and every issue.

Secondly we translators see the manpages in the neutral po format,
i.e. converted and harmonized, but not the original source (be it man,
groff, xml or other). So we cannot provide a true patch (where
possible), but only an approximation which you need to convert into
your source format.

Finally the issues I'm reporting have accumulated over time and are
not always discovered by me, so sometimes my description of the
problem my be a bit limited - do not hesitate to ask so we can clarify
them.

I'm now reporting the issues for your project. If future reports
should use another channel, please let me know.

[1] https://manpages-l10n-team.pages.debian.net/manpages-l10n/

The individual reports now follow in subsequent e-mails.


