Return-Path: <linux-man+bounces-1952-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBACF9D030E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3BB0EB223FA
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F54F1392;
	Sun, 17 Nov 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Ip9PgKGO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC95A224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840697; cv=none; b=jvmh29OHWCdSmZg92QQASy7sMAkrdPyBiwhjHRQ1dnRY8tPaln/NZ6ol7lthUKPVq3EOz5reJhsBejNLSvAtH1+oDkOXCt6PzCCK5PFHY7jwh2zq9m74BSO8cacvOYs+czh6pLLFVI0Z1KaRxQFrVRtuPzjE3D8Yt/uvIfeemJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840697; c=relaxed/simple;
	bh=zeEFJdWNM8pFlxO+/tKwpA7tQxWfi7iwVm1oLF3Idik=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=S74f355TnqileaaWVXT4J4YD/ejM89YF6ArwPt8GoQBpR+tJ+4bw5QcNeovrepUaCZ7Sfoo/G/UfuxGUfpPQWm8jU8yOFnARhAh1spPht5VFwnRqHw/6XZiAcNU4UonEjiiahk7JB0Vpenmcpy1/K4OukqFuGZGtk58uDE5sdbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Ip9PgKGO; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=zeEFJdWNM8pFlxO+/tKwpA7tQxWfi7iwVm1oLF3Idik=;
	h=Date:From:To:Cc:Subject;
	b=Ip9PgKGOM2SWAMxt5QGFigujiGfx/h4YASku5/Qx0NTpOL2MR580O3TkiQvu74EUH
	 DJ4MlBjKCJCim2NqEuZp6EW+SLUiZ3+l6gHkQCHaHIMyU1xLTjr9I6PQy/EWkmBvqJ
	 7lPQ942rCrnh0GrJAPUOk9mOX1AQa0jum0M71z83yz/BKZDwg3kzeRNn/IZIcD7miB
	 zmBGYohDhWe6t92CuI365ZLVzdCFzSrhy8GJDszlQK+qYmma81qmR044/JcWJfpq2y
	 vx1dA0LYYqKiPhZiBXlzZwQZXAAPRqny+i8w9mLme1jyZjtKuWdAVZnTSIoXlnfCe5
	 8NCZaFLPyfAkQ==
Original-Subject: Dear linux manpage maintainer,
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000204BC.000000006739C97E.003FC37D; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Dear linux manpage maintainer,
Message-ID: <ZznJfqYcO2S_bP-n@meinfjell.helgefjelltest.de>
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
man pages both from a large variety of sources (including Linux
Manpages) as well for a large variety of target languages.

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

I'm now reporting the errors for your project. If future reports
should use another channel, please let me know.

[1] https://manpages-l10n-team.pages.debian.net/manpages-l10n/

