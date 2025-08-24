Return-Path: <linux-man+bounces-3684-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 741D9B330F7
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B077204018
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB412DFA22;
	Sun, 24 Aug 2025 14:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="mN3YNPaw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA832E091E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046984; cv=none; b=hOgqzZeRG6EJ2p6yb2fGP8E/xJGqmzRB7UED3ELk9+uI8fHp+NAaEPwwi8CyjNxbaQDIczI0Mz8CUAw6nqRjgaWQHlivKN7HFsdmX2gOsJQvSt8P9D3Qtfm+waV+HiqYJy8cBzcUP8wQLvkRxYzjZr+jd1sfseQ+xruSVFryOr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046984; c=relaxed/simple;
	bh=TOOIK3wLVHEYexw54mgKrvWuEYe6Ela6Kg7ayn7z+a8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=avSb0RZO01nnZ6gl3+5sLpSKD+CzvV4licknPosTeGCkKr16eIxJDQeZWFdoVkOAeAoAkAMuPa9JrS65CWwt+RkAozvqZJRp69upOpB0Fg/Lxe1RF+Jhu8+j4qUgAenFVRw00uhRrbLRfvNQN4pZomHsBvji2xedOwuRVqiXyCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=mN3YNPaw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046931;
	bh=lmdUpevYrEnzM7AfgT7k8C7m4acAqCAdnCFup4aq7pQ=;
	h=Date:From:To:Cc:Subject;
	b=mN3YNPawGjg9drUxo2ycueN9MwWutDOzzdqPG5XrAmwdxgw9oWU+kqbStJ1EBLzdf
	 f4zThsAT3Jfdr9tRSs/vaTw4+sB5pYb4rUKlBn8+0e7o7gdNL22dKL7JtHTwBchhOa
	 nEF+CzRT8DGTUP/NAxof4rQA1xa6CkIKYD0vQLUDf/yO/DhVo6t8eN61ZGD+pmuktZ
	 Zg+SlSA7YYvrDBeSxWfh0DJuLpreBUbtqCnyEybk3Vq+y4Y+7xRL6K+0/eQGNvM6NX
	 cI58bd+3PLfQ+/LIQlqZLPwMGOKVsrh5Q9TUBMpkaHzOnK7ep72sPtXQsCqvCcA+xf
	 s+FKGhCOkbf2Q==
Original-Subject: Issue in man page cacheflush.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002047C.0000000068AB2653.001398D7; Sun, 24 Aug 2025 14:48:51 +0000
Date: Sun, 24 Aug 2025 14:48:51 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page cacheflush.2
Message-ID: <aKsmU2p9eme4b6le@meinfjell.helgefjelltest.de>
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

Issue:    B<int cacheflush(>int nbytes; → B<int cacheflush(int >I<nbytes;>

"B<int cacheflush(>int nbytes;\n"
"B<               void >I<addr>B<[>I<nbytes>B<], int >I<nbytes>B<, int >I<cache>B<);>\n"

