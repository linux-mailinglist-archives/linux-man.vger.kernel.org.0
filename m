Return-Path: <linux-man+bounces-3673-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD2EB33100
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4B27441189
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257272E06C3;
	Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="coBgyE+E"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8864417332C
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046978; cv=none; b=IZ7BtHFBOlySYJs+ukvhGrGFRsEkzM2g6B1WHbmtBEJmcVMc64zTtwAtXFIHWWAJFmZZ2/nuL3pgCGG9wIFjQoS/4ARxSBu4Na0b4D3JShAzGFBeiyQJGo86FhFxLBdnQ68j3Imt9eHXLgWB0K2NwcAywFVmWjWke378C+B0Vt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046978; c=relaxed/simple;
	bh=I6f/FvLx4HkGNHqAFFY7yR/GZP3NTHItppMDJk/n3V4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FM7a39y9Omf00vSb/7cvyzCBP8Hzas8mqlWhrfu8KElYgxTw9GMniOzDcgj3eThjD5xiLswQr1iUGxYBfT6MGxD2/kpK0enbOJxOPoHhkhpnQGS2al3ixgKE4YaAYnC9iBqtQScRdUXzYmkFFQD4i2VevjzM1Ra/FhGDfXojQ68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=coBgyE+E; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=tkUNZq61Q5xLSW6y7pHI7LwxFzTDKpNZpIXyfPNiOXM=;
	h=Date:From:To:Cc:Subject;
	b=coBgyE+EVLiSyVO1paxVOto78doGyVkRw//TOt7XTFUe95Tlo8ZrNu/IuLqTvAu8o
	 qbADs1TH4qANSbJlcMVNJqDlgwAYXqYFUqc6I84x1++t1CjtCEq9kqNFPQelPsvsGs
	 z7EL925GmVZJyYgv/6/Lig+ReGSQQ/X66A0QvUNT8nKEbCsIezjDmuKUmFHNJzLioi
	 K4Tu5kBICQ5foDGTMepgKotcL4UCy9Bqrmfz+dZnhI7FBnV3aw90ICUhyXDyiUsNSg
	 r+pq6vbfOHzre6u0/IHahzqLHfoAq4Z1AfETUTe3j8KRY+YUlyqZaeZA3y789vuw7/
	 qOLv93aTrjvnw==
Original-Subject: Issue in man page bstring.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002177D.0000000068AB2650.001397C3; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page bstring.3
Message-ID: <aKsmUFlXlgya5-XI@meinfjell.helgefjelltest.de>
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

