Return-Path: <linux-man+bounces-3577-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFCBB33095
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D04741B259DA
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5826418A6A7;
	Sun, 24 Aug 2025 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="LG24tz89"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBACF2DEA7E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046932; cv=none; b=Tcl+YmVJjZDUhi1oC9cJWVbgs6GdWOCbDvb95xl1/AdmjHJzCtrVF2Ov4SJNDn0ZfOJwtsSOx6u8hoCuW4ptjLoTivvukae9Vbim0uC2idLYbIkQvqULMmx3nEi7ugwzdu5nMP913uy5rpseSoYPWDzY4uVzSkXvxY2Q/sMbBTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046932; c=relaxed/simple;
	bh=/ZVSF9MEoHWdGubnKYJcDaoMSJfyK4ouqvg3GDuDHFk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=BQT7aSF/nCNMju1f+0zMMf7qXX9qW6fqfVT6rak1f6nbHIqRHpo+yqhtelreftpiKeLigFsiNDSviP/cntzX8x8LpviiCqVeCjdYt29xui8uOelvVF6RbPI3aTwT1BvqFIjPXBMIxyxzyx+A2M9xubCPpWlJ2q5thq8RhMHnw2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=LG24tz89; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=R4osbO3GnF6rq8MjTrn/4R1WTS6hlPpkKjgbCIYVVZU=;
	h=Date:From:To:Cc:Subject;
	b=LG24tz89TUOG6HFOzbOUHdycNm0a2XE7lz29Hwryi+/rKTh6pyMPUm+iLkamQ4o8X
	 //wUhrTblS/cYPimEl9QMwKapcgHI48BxZBO1Phrq6xiasolBYv5GRVKZo7ik0z+Vp
	 c4Fk760sETDjj1rZjyWOoBF0LYafXfhHVgt03rEy2D5Y6LX7TvS8Dqakm1gj9ic1Hk
	 Wahiu+QY3gZOmYUhSEs4Rk4N7Cp9hkaOVyGgLoAb9iQa5ghN+TDOU+xHZzgxx1sJr2
	 n35xfU0tqRY4vxxr5bSG7aYuyADILsNTsGqrCDBgAonS/GPNeIHGuMa+utzyiTBKUq
	 6XbMkdtCC63cg==
Original-Subject: Issue in man page wcsnlen.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020690.0000000068AB2644.00138E5E; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wcsnlen.3
Message-ID: <aKsmRCdCVWCro_lv@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t maxlen → B<…size_t> I<maxlen>

"B<size_t wcsnlen(>size_t maxlen;\n"
"B<               const wchar_t >I<s>B<[>I<maxlen>B<], size_t >I<maxlen>B<);>\n"

