Return-Path: <linux-man+bounces-3641-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC02B330D7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5BE4203F20
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AD272E03F2;
	Sun, 24 Aug 2025 14:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="tvz3JSeP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63182E03E1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046963; cv=none; b=Ts4KQGFyNtG2f1LbgPOSdTjz15jLsbVENOSboWjnr5H1c/uu03GmoQyUMHVxK4J+smNLmNrEsi6KA6TIP4GL/lcxdbzuW7kJMrdlBAlK7RS2TXkgO85LuwFgrxyFUBOhpPZaW/+Z4gxgBfUlNg22sOJ2h42RFSSr0KoG+0ukyG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046963; c=relaxed/simple;
	bh=I6f/FvLx4HkGNHqAFFY7yR/GZP3NTHItppMDJk/n3V4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Bw9SNFBDLgzL27j1A+o2CvyO5SMQEPt9siBbrSsUCG4VmcqC2uMEyJeqwM8ZViuTywZc7VQGC/IV0jF3IbE+p9lMMtu66sTn0PuCA+k9VoudlldDA3NZ5g5P8t/RlcmFxeSsOx/dzcWv4jhYGRy+6a7+VM+ezESw87ErHsmvd1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=tvz3JSeP; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=tkUNZq61Q5xLSW6y7pHI7LwxFzTDKpNZpIXyfPNiOXM=;
	h=Date:From:To:Cc:Subject;
	b=tvz3JSeP4bysgYUeKTzeoURTLDfl9apOKw50Q+Rv30Yx98UVdsJj3Y86kLc8B+H4s
	 JW2lFlsf1Gy4Z2yaLty4FFw66qhBRziITsfU3TppEDQ72jZIzdgzJaKtqH0VSLM15Q
	 wlNHLXE6/F9EAnCJk77hAwtEo1e6VGbEw2qGwaRoFPlOr/6kc91Jwu5kpy69xoYnOe
	 NiDZW86P8hl5wZYDUYkQ6u2hfyulEG2QGegzFJ44V6sCyUm4jWALqJkQJfGvkJgoqo
	 7n3yrrG6Y4Z6Ckg58lpx694cdLg/Lk1MtR3Jgw7jM+2aiSwcC0tsdeilKf+fkOaf6s
	 BwQVzZ+PITllQ==
Original-Subject: Issue in man page memmem.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002011F.0000000068AB264C.001394A2; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memmem.3
Message-ID: <aKsmTL_3I3X_A6rh@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t hsize, size_t nsize → B<…size_t> I<hsize>, B<size_t> I<nsize>

"B<void *memmem(>size_t hsize, size_t nsize;\n"
"B<             const void >I<haystack>B<[>I<hsize>B<], size_t >I<hsize>B<,>\n"
"B<             const void >I<needle>B<[>I<nsize>B<], size_t >I<nsize>B<);>\n"

