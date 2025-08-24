Return-Path: <linux-man+bounces-3551-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DED9B33082
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16F6B441DE3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA36617332C;
	Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="slL5mJBk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DC327381B
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046918; cv=none; b=Wdhg1cgijb7f1fMu+pkLUkmetThszMJZBxrWwSC8ZiV7UA9EkzkiE7MLHclT6gEgbjljqNAYNjuwVuiESrgy/vUGbhxQQg/5x6HbrlgAY4CTPzApK7Z67iBlOa+4DK9rvCpduXS+9Soc9utuXJiJkqKNEeZelzMeTGtCKz/Bm/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046918; c=relaxed/simple;
	bh=TZ9bdbOX0/dUsUm1mYVNERM4uFj8BZKweGK+RiKaNb0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=uemKxoeh2WQMfJCIQ64y5OdD2/01+nE4V34pQsBfiem+SZ4EbzRGYMmi9vhSPNNVAOtqlKIFWosug12vZfwBUhZSgVfF7ERkugirnu0MJUPmP7yQT2GV9OsYimg5utNzb/Nl4Lkif/Jz258AC8pyK5UIx/s3/mQf1T2B+IM7Gi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=slL5mJBk; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=Pw4B2YmUnMb5rwlFPygZwwHUhVqmQMlUY99f3pizSHc=;
	h=Date:From:To:Cc:Subject;
	b=slL5mJBkv12LI5MT5huPy9gmRvytk9janqushUJcKQ8H6f808g2uVZnUd7GurXvj2
	 lth9i1O+WYs6flWztlygcQdf0dh87cejaHrkPIbOiT6GMImrnCuRleNiVGAxrd7vx8
	 c2H1HaQEQ9+Uzb16r6XyMG2Ikq7YU/gPeK2ECLUrveHXTL9YrdAwYFeya8GCjsFrdQ
	 BrhtwQ2BvAwV0pvmU9vCrKO7qh5AXoGlRTrUK4G8KjJtrGZky/X8wtzbdldMAeZofb
	 2mcvw3LoFOFQLsKwN8577Ns5l9jgOV5VxUKsIrR13FaoGpINVySZniGdMd1X78puEB
	 12FaNw5MVeIFA==
Original-Subject: Issue in man page setbuf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020EE8.0000000068AB2641.00138BC8; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page setbuf.3
Message-ID: <aKsmQYx_Y5mzBMBQ@meinfjell.helgefjelltest.de>
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

"B<int setvbuf(>size_t size;\n"
"B<            FILE *restrict >I<stream>B<, char >I<buf>B<[restrict >I<size>B<],>\n"
"B<            int >I<mode>B<, size_t >I<size>B<);>\n"

"B<void setbuf(FILE *restrict >I<stream>B<, char *restrict >I<buf>B<);>\n"
"B<void setbuffer(>size_t size;\n"
"B<            FILE *restrict >I<stream>B<, char >I<buf>B<[restrict >I<size>B<],>\n"
"B<            size_t >I<size>B<);>\n"
"B<void setlinebuf(FILE *>I<stream>B<);>\n"

