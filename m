Return-Path: <linux-man+bounces-3565-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3C6B33089
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AF68B4E108F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 422702D979B;
	Sun, 24 Aug 2025 14:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="P3mPSK49"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6EC22DE703
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046926; cv=none; b=swTwqD7F1PBNQb99D3+64gIqdseemVoxKW0VPThNmIJWXETU+fvIW9j7P+s9nyqB7tBbL5NxmUg51i2RWUWEf2I4mLC1Dn15SQicwXpthmpjRA4rnZ2qktGCuvepbxE8tVIwqcnchCqKDIh5JMLiE1rU3q0wwlpEedA9GLryCjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046926; c=relaxed/simple;
	bh=v1WgvDtsDo17zrm9RV2IkNcgpYzqvJFHxrpn1/7fHh4=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=I7I1gbKrINxBoTkcjVDhIXsyjT4cCFKHr9OEqXs9uq5XHjB/XCo350UB1SJy7Q1dzIx54SYQQN6IN1lBlnX+77GFoOuuXZQL6XQ8P319UPOX7ChjLHDhWHP3RCnoeTlFgmaF6pazTYfe582cozVIILG3goZ/4JL9o7zg3G8Cfew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=P3mPSK49; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046915;
	bh=4C+0bhUI+6MuP42r+lvbNhvDTKZ2pwOSSH7geGg3IWg=;
	h=Date:From:To:Cc:Subject;
	b=P3mPSK49V00p2+H4d1bTxC7/7cpLWa/QJGPzNVg6WcifIsfV0DyXytrZmuMSmzxX9
	 rupZF5Yt19tc54+qeSCvpaVQkQDJL0ngAH/UGfkafD4Y1nebzJefpLqRK98vboDxiT
	 d5OPrauJIPPOWtfZ4m+DTYE6RbePGSULTyiHTgEAOc9IWqgYp73NbCGfk7DAiwKnbM
	 7ewOWplKiNWFAkw+bkuhVj1fmIr9rnbFOLAK31X/pc/BW13qWaeypJ/25ckUmcSfLf
	 6jDC+wDfzZ6rKvQpP4hQUPrVSbC9ZbAFsaRW/ZBy/Zhg8GK5HZW0weKGjwBnNON21e
	 fe7IpOpONxueg==
Original-Subject: Issue in man page console_codes.4
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215FC.0000000068AB2643.00138D32; Sun, 24 Aug 2025 14:48:35 +0000
Date: Sun, 24 Aug 2025 14:48:35 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page console_codes.4
Message-ID: <aKsmQ-CU1ZWBzU0c@meinfjell.helgefjelltest.de>
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

Issue:    Why is hard wrapping introduced here?

"Select user mapping - the map that is loaded by the utility\n"
"B<mapscrn>(8)."

"Set palette, with parameter given in 7 hexadecimal digits\n"
"I<nrrggbb>\n"
"after the final P.\n"
"Here\n"
"I<n>\n"
"is the color (0\\[en]15),\n"
"and\n"
"I<rrggbb>\n"
"indicates\n"
"the red/green/blue values (0\\[en]255)."

"Set screen blank timeout to\n"
"I<n>\n"
"minutes."

"Set icon name and window title to\n"
"I<txt>."

"Change log file to\n"
"I<name>\n"
"(normally disabled by a compile-time option)."

"Cursor to lower left corner of screen (if enabled\n"
"by\n"
"B<xterm>(1)'s\n"
"B<hpLowerleftBugCompat>\n"
"resource)."

"Cursor to lower left corner of screen (if enabled\n"
"by\n"
"B<xterm>(1)'s\n"
"B<hpLowerleftBugCompat> resource)."

