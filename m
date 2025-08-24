Return-Path: <linux-man+bounces-3667-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E13FDB330FE
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEE623BDFC1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F792DECDF;
	Sun, 24 Aug 2025 14:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="G5DSBU6V"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74CB2DF6E6
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046976; cv=none; b=NZ4RGNN1Iw8IX4br+jV5vXqpAuPHKy6U65JjguceCnZGpO+JPDc9TiinST4obsxvIsmR8Hq+2oJG/a6QYQ2YlPjnYk7xQsckxYduUbgBpkLDYSARmLAMwrJ3YUA4MIqRk3IlxYHf0mz4BHG4Nwm4wcHSVhVJkddzxVibPyKjcbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046976; c=relaxed/simple;
	bh=c1rhzIt0z1G3LCKcGnn7kmi+r9j/nkJay/UKXF6GrSk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qPpUw1juELahl1MqyYK4OALEYVrD5t/TfFxmLzIX2u7mUq/IVoUYlNrkK78H1huWYnUL59dsbD6bxY197yi37c/b+gS2K7Z+JWsiWol9JXOqd38TLVeqtlGdduHl0q+GWokZ/AOo5ykRgE/y3jeAgnZrnO23lBM7ijqQn+RHH8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=G5DSBU6V; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046928;
	bh=70ho6Uk6k+kNMI7/NFl0eI6fIL4hJulMaTmvzTTl2u8=;
	h=Date:From:To:Cc:Subject;
	b=G5DSBU6VGa1eLGvb4Uaqv4KvdU9sLWlGQobSyOjz/cuB2qwJvd7MysMR/ncGYMT47
	 Tkhk6moAHgQIHgE6dShh5IZWLeQoS47SkBmpwANwIwWdXHKpObXduZvSP09AioKafa
	 9W6l0XxMH2thxGSqJvmEk7/Tn/mN2cYjlizatb6mUPwRIOduy2GoxSlAYG3QyR1HeA
	 xPm1svubOO4RqC7ZiUwS78iLiUSm5H+M4Qq85yDp2RyQ7QHJqlP4bDA2/AhjP+tDM+
	 xwntwlW8Kp7nYl6acsFJiutJN513cSmNZ81/1QAgBtapBOrTnFmIi2jaF/3QCrswDQ
	 8+MeCeoHO3YwA==
Original-Subject: Issue in man page PR_SET_SECUREBITS.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021773.0000000068AB2650.0013972D; Sun, 24 Aug 2025 14:48:48 +0000
Date: Sun, 24 Aug 2025 14:48:48 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <aKsmUDB9cQY7Qo9P@meinfjell.helgefjelltest.de>
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

Issue:    I<op> → I<flags> ?

"I<op> is B<PR_SET_SECUREBITS>, and the caller does not have the "
"B<CAP_SETPCAP> capability, or tried to unset a \"locked\" flag, or tried to "
"set a flag whose corresponding locked flag was set (see B<capabilities>(7))."

