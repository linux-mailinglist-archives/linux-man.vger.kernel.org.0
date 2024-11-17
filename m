Return-Path: <linux-man+bounces-1929-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAB99D02F4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96861B23CE1
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2474F13BAD7;
	Sun, 17 Nov 2024 10:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="iV+uM3HF"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C1482899
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840395; cv=none; b=XPb/iztyo2LHb2OjBgfezF6/o5X2MbcGmSR3Z+dJVKl1gK8gAFjQTF6Mp6zcozvuRh9WrkytSm7kG0xbKt0GuIseQotfY5APprLuG7fk0+uuF/AdFVh3y/UjFHtkuOceluUuueZfD9WW1FosnyuP4ILmxWrDHWiIt6J04uRLMKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840395; c=relaxed/simple;
	bh=OLlumFnxHLZw/FMAwqjTGy8bHB+pV32gUIWSYCU94q0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=f9dvFDS4+Ox6+0Dtz8t/kadr9Xn9xFgpl5P+e3JrR/cye2HMj7MoB8iLgpPQ6ZFG1IdhJGIL+0MQyW/M6+oafguiGj9OjY+n2acwqN4tWNzX4LyyPn8Ud4ShNy0TqWmzfoMHhgwkf1lHCLTlYZv2gUYr2ehPoY+3oi6m45ScwHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=iV+uM3HF; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=89vFjFGXUXSeNTbmfeYsyOmhomSSq5bBrUwiLVWos5g=;
	h=Date:From:To:Cc:Subject;
	b=iV+uM3HF3Emb/hb1EkxlMgDEoBl7xFRqhIC7gL7cXJ/+a2WkdwDInGobls9UO+s2L
	 sYz/xnDMaeU76mG6y1H7JtkWCucAGV4HoWSW/F/dLCNUg2lwy2f6avJzpyQ5MPmXYz
	 yZsaD9mO+Y+ekRA+J/XC6bmwaWdvLkMcwWZxpbJPXiAc2+v2CKN8tIrW9SWELYK84A
	 J/xh9WEENukMyI0Bxksg1ytLU3uN2ubxGqRfldyTRs2gEhoP4KQUSxL5+ZL6rRRyVx
	 RyoXeZ2jWKAtEA+rWgSksm1zcz8IW9MknpYdXcHU2N69Elot/sVx9o4Dac7CbQJfC6
	 xIqDwnR5Pf1Lw==
Original-Subject: Issue in man page timer_getoverrun.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021668.000000006739C981.003FC572; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page timer_getoverrun.2
Message-ID: <ZznJgdwbPPt5Xcze@meinfjell.helgefjelltest.de>
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

Issue:    Wording o.k.? "… integer, the counter cycles, starting …

"POSIX.1 specifies that if the timer overrun count is equal to or greater "
"than an implementation-defined maximum, B<DELAYTIMER_MAX>, then "
"B<timer_getoverrun>()  should return B<DELAYTIMER_MAX>.  However, before "
"Linux 4.19, if the timer overrun value exceeds the maximum representable "
"integer, the counter cycles, starting once more from low values.  Since "
"Linux 4.19, B<timer_getoverrun>()  returns B<DELAYTIMER_MAX> (defined as "
"B<INT_MAX> in I<E<lt>limits.hE<gt>>)  in this case (and the overrun value is "
"reset to 0)."

