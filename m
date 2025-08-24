Return-Path: <linux-man+bounces-3596-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E933B330AA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EBB6D7A6665
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7543014EC46;
	Sun, 24 Aug 2025 14:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="MKkEm/Ax"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C050B21D3C5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046941; cv=none; b=rvu22NB4KKqWek39spS/rXbDvyEB20bCNvEymOmeHdA4eOc8iURjroKRRpe5+Q28sE5dNvcB7fL6dkG5fuBdoa/TkFn6ocyOHVsv/BVgRSfXPV79eOy2vh6ZQXN26k3xt9w0/A5d5IPwsXvUT3qbCboKst+gosqpMnP270cyYaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046941; c=relaxed/simple;
	bh=oLrGQqW7BB9kyBjKCoVpv3EWZSj8WsHW+EZErakcZHU=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=e8hJxbrX8WHmrHhSkIMxsOABNyI5KuuO6GTOuAqd+cIjNYvgFpwow87n6lFdiuJxf2bQrCz8QZbRnnvGAHnaHXAjpCEZWveITRZc0DRuSHIweKO/fvR2lnaNS/La6cskU4XH5v/3AgJehixeZ0IQMVJcpiFRHVTkkpMUhrDDWpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=MKkEm/Ax; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046919;
	bh=oLrGQqW7BB9kyBjKCoVpv3EWZSj8WsHW+EZErakcZHU=;
	h=Date:From:To:Cc:Subject;
	b=MKkEm/AxRzbk9mx0xPy5yGK0fB/kmkVlZNQvvyFe1tYY5qe+K70WBuVnELLL8Us2w
	 4k6+YMoQujtPoLvQYxgSKLGGjHY/Ltjo9j3b5IOzAvkA0ZRt336XReB2sp02NN8ymi
	 Q1Y0n2xf+iu2oXEs1qEkThy4oqsdaHW3uMFGv0NIiW5lUftuVEDq2YUWrATAGFRcPJ
	 vKG0Vu2inzBQu4dz6X7F2kAZOElc1XCD0Rw/sHCR99ugtSi5KCc/5sck328F9ZFECJ
	 GIaEudf6ZPQqviP1xEoc6UfKhMIuxAL08GW+lxT0Q/GbWPqkIV6I95GADhwZjULEoC
	 1q4iSxeFPavEw==
Original-Subject: From: Helge Kreutzmann <nc-kreutzhe6@NetCologne.de>
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216DF.0000000068AB2647.0013903B; Sun, 24 Aug 2025 14:48:39 +0000
Date: Sun, 24 Aug 2025 14:48:39 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: From: Helge Kreutzmann <nc-kreutzhe6@NetCologne.de>
Message-ID: <aKsmR62LiOdAxUvj@meinfjell.helgefjelltest.de>
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

To: alx@kernel.org
Cc:
Bcc:
Subject: Issues in man pages of linuxmanpages
Reply-To:

Dear manpages maintainer,
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


