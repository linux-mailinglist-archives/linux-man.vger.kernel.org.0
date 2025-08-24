Return-Path: <linux-man+bounces-3608-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B11B330B4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7E7061B25A1C
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1972DF6E3;
	Sun, 24 Aug 2025 14:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gTCamwUX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDADD2DCC01
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046947; cv=none; b=BUKN3hP3L1mSJkiDN4pqTdgHokn6+raAierCPjVLp3JLqf3cX/jEXoM9riPWrGwzP36lNeJUWeex0qCmjRgDkH90vkKA6uAA3yDPUUjmnMlJUMnlBCPf3YtOAHVdhaaamybByBerRLOXjA6n4JJeYJqI7HN84RJ7mANaJeMviqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046947; c=relaxed/simple;
	bh=dXVXTEYKZ9qj1A0yC2gPivn7ddOrk47UPYuq5dTgoQ4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=SCKVZzscYr+ykwOmJjHNhbMz59Krk/zzNQGL9dNR7FJcFdMpICgNWCXFActDKHJn2BENM8meBxszu+KcSyBD5szpA8gHv+emkb1ZcTnqwHo5ENsOlqx3+yaMk9DvYegOPRtKJZT5/E0fISPbru1ExRePS9GvJurZ/SUsLIfF2Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gTCamwUX; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=Bsqi+UM6elB4ZdMTpJ7R7qzOkd0qRhRhlDUpGX3n2mI=;
	h=Date:From:To:Cc:Subject;
	b=gTCamwUXUa91dsU///s5Gq4oTckh/F4M0huSYfZP2Ata7bbL5o4jKaJTdm5KjjD67
	 VOkT4Xw80sYQe9eAZGZZQmPeg97s2Ij4AU1Bv61C0Yj/qaTzBMEfSzO/urw83U+8S6
	 D/vycwdEp5LQRIbXHrlHQJ/ihbZtEK/d+Kk83frU18lVE2dpc/9qO9UKorVlL+QlsJ
	 di08BUa0yeCVlhR0cZAaQ08dKzukDozHeyA1mEQXgxidj8y89NNmKWuT/hbnMzUkst
	 UMrW9xYbIrGFOGFcKDVd4esXVtXOV4RPeBHA/aBBSR9YBTLvBAYas2nuKuWFLSJklS
	 jVhD5mPvvAy7g==
Original-Subject: Issue in man page gethostbyname.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021704.0000000068AB2648.00139167; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page gethostbyname.3
Message-ID: <aKsmSJNfDOMklG18@meinfjell.helgefjelltest.de>
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

Issue:    B<… *gethostbyaddr(>socklen_t size → B<…*gethostbyaddr(socklen_t> I<size>

"B<[[deprecated]] struct hostent *gethostbyname(const char *>I<name>B<);>\n"
"B<[[deprecated]] struct hostent *gethostbyaddr(>socklen_t size;\n"
"B<                                             const void >I<addr>B<[>I<size>B<],>\n"
"B<                                             socklen_t >I<size>B<, int >I<type>B<);>\n"

