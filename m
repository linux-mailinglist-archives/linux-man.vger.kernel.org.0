Return-Path: <linux-man+bounces-1942-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A447C9D0305
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 24CACB23E54
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9960513C816;
	Sun, 17 Nov 2024 10:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eMYOul3j"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEC382899
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840692; cv=none; b=e6IR1U/RlHXbbAovsrFBBVCtUrb54TlcqLRVX670G25m+pYa9KuW8v4JVQB9Nbc/6pAiBTDSbIkdgXnKb+duppheX8OI+7GCApEafgR4DUqSZ1bFU8H4uSfpu0GbzbWPXjUCQZelMThDQHXGYyzDpglzKOhcMuY6jnRrYMpInNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840692; c=relaxed/simple;
	bh=mUvBO5/6qvTGV+stBzfUICEsaLVG+SP32I6c2TWIl/M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YfddI7YJPtUsLAySzwwwFsc3sJ6naJ+SR5AecXoqu4slRK4xy+lqA9a26QNBlTmCDx55GoO6OiZ/NUa5aBZPJE8sde4W2XHyLdIkMwBojX1UpyHjV8zaqVC6G3xCSu6xOQxL38jA/M+NURkV8RLlOjL0pNNMKKZQu6y8K00fPEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eMYOul3j; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=TIZWK3Ka0QT8CTKSuMiE2ZRm3hhURlqhWBoe4ktpqS8=;
	h=Date:From:To:Cc:Subject;
	b=eMYOul3jks8OIdyVz3YEtFgp1tMXvyJ0d+s+PHeObIXFcAjg85X77tZHJ1xtfxoGV
	 wCu7jWUGEDYsCZzBOaPjXyAOCxw4jf4H3OIJOGYr3paqMRMgap6rnXGP2RzvGEy9nA
	 TxHNJHM3tFhMdyFdcM2o9QBnrd9t8ImPakOhSACMYH/xhn7r6cdsITgscvtyIV94QK
	 4UWSROqMRkAezyRNKjgV/u78Cf9zBz01QGONWwNEEorQPzuhe5vjqTG4F4XkYraMLw
	 nDiav7+jbS+y2tr4CM4tSs5DzwN8paoqY5vuZztoUluk6sCWyCNnoGl03fHNdoAnQF
	 OW6zrKEOl/0Mw==
Original-Subject: Issue in man page printf.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203B9.000000006739C97E.003FC319; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page printf.3
Message-ID: <ZznJfjB2vxjYTHaR@meinfjell.helgefjelltest.de>
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

Issue:    I<%\\[aq]F> → I<%F> ?

"For decimal conversion (B<i>, B<d>, B<u>, B<f>, B<F>, B<g>, B<G>)  the "
"output is to be grouped with thousands' grouping characters if the locale "
"information indicates any.  (See B<setlocale>(3).)  Note that many versions "
"of B<gcc>(1)  cannot parse this option and will issue a warning.  (SUSv2 did "
"not include I<%\\[aq]F>, but SUSv3 added it.)  Note also that the default "
"locale of a C program is \"C\" whose locale information indicates no "
"thousands' grouping character.  Therefore, without a prior call to "
"B<setlocale>(3), no thousands' grouping characters will be printed."

