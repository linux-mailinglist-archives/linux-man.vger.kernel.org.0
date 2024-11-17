Return-Path: <linux-man+bounces-1957-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 693569D0311
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2EA18283246
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F2F17B402;
	Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CI+XSQzE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CC313AA5D
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840700; cv=none; b=WpfAJ4fwnPFE3/WFItKm0KuysctZEQO+Ewj44bYt0i0mPP49mBtELU2RjY2U8iSi1+dtTwpIiFMaRcAuYc8t+n83SnwPuTeQCwdpcCFpohLN7HGyx5X091oEDwFlOUEg8iqX3m9yIJ+js+FQme9YTT74HWu+qgWmMk+RGpV/3Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840700; c=relaxed/simple;
	bh=ZjgI54oirlnGF4pZgc9JQWdu4nn7XrMEKZvMk7pDKO8=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=NxdEVVtuzr+PJWDVcriwXSn5ghahEr6j8tbNpqbwkxPc7o2PEo15pJSUdu7imvPqLuFjrhH+vZOxMgrwKXsRoO41w1zIX25jGdmQnqklvQuQKO5CTudzmRDyN6ApqqoW7Pw+PhsIllTdkoR8HzVsn8B1JMXeqYbvQ/U/TWFfqIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CI+XSQzE; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840384;
	bh=GHiX14eNn06Rk+CaPIAw0p8SMP4ZRsIS4tL/Rh9s2hI=;
	h=Date:From:To:Cc:Subject;
	b=CI+XSQzE18EbKNzlmL08ViQ5qHvH7MPooh1DBNUaUOIHA8f36MXoZuPmcDV9Y25dM
	 vaKPFc2uolYHYVn8NIvQuDfHnZdqxIpnRBSo2ZoOtVyrb5NTBYkJnYIIlnTEEZ/nQ9
	 oxklyHEP3dfcNRea4K/Tc8RqfxYVgnfWyHlHo0AQk0GEZzWeMwIFL/ZVkkrSo3A/zy
	 DE39mdmmY00CLJoU0IOL2sITQBd8bFtpVEcDopkny78966aCNUoR5ru3cxVbAV/phD
	 r8Mor/lFHg5eb2HoYGdblkvKm9Oj6xFER9GLgbqMfsvL0L6pSzrt55CwlOSwj9V8AY
	 xA4KoySShTFzA==
Original-Subject: Issue in man page syscalls.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000214BD.000000006739C980.003FC4C2; Sun, 17 Nov 2024 10:46:24 +0000
Date: Sun, 17 Nov 2024 10:46:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page syscalls.2
Message-ID: <ZznJgOK4ZGunfj-f@meinfjell.helgefjelltest.de>
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

Issue:    Is the first one correct? In Debian, ausyscall(8) exists

"B<ausyscall>(1), B<intro>(2), B<syscall>(2), B<unimplemented>(2), "
"B<errno>(3), B<libc>(7), B<vdso>(7)"

