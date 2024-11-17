Return-Path: <linux-man+bounces-1937-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E61D9D02FC
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:47:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 429D6284AEF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 167E180C02;
	Sun, 17 Nov 2024 10:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="RXel+zrn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1B917A58F
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840399; cv=none; b=T1EMIXu/6Hwylqd7sGxkeDLwSAzwrXvGNi8rlZITl3S4YgePx1WTjti4YbV8skm9WNwoXA6xKbbnhSgUU1sNUqkiKSa7Fau0IAm9iAe5u+Edtzia+iOOhFa7x+7xs6rIHm/yXqcj7m/Hep1quAbUklJr9mKkPvHaxjaEmVhWQf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840399; c=relaxed/simple;
	bh=L0PBs2pOasBC1YOCJ6JDb7gBEX34UCBvAID/DhSzb9M=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=EN5CgSLEY07l3uE6J7nqklCThwNjp8+2h1owwsjsSBRZYapHtF6VToVHx6v80of3yopx69pOrYnaxPe0aioDKUv3hmCkymOFa/C4vdu2e8OWl8PTNj9Ptho1+hO87kCTrsBomz3cVo7A7n3qGZJT4+tHPrzPpKz1R8L21v1H4sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=RXel+zrn; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840386;
	bh=ZOeDRV1TQIkzm5XOCJBP1+WdFEFSblxAea6OWcTdbAE=;
	h=Date:From:To:Cc:Subject;
	b=RXel+zrnUMsaKlMqiTx0BOSWTxn2Huq50jgn+pI8yhaYfP6z7lkPzIM2W0ZrYXEFO
	 A7xqMwS2BjgGvyHmRLCAy4l2GnhJFFgLAcTN16D6dQpmwKc2tuZqi9mTr6GRH65UyD
	 FKdRl3pQCOwx/W2dxjAeYSqGMWTBcfLo1IlsK0xfxBHRo9+ZTZ/sTGWA24daENwN23
	 XhYlxd0x3Ff5tzB59akwz2a8dlCI+lU4n9olu5sIxRXcw7AMBVTthdjkC4z8yqHzgN
	 KV1I2qtqmYJKtWnjzJMJ4aUtNGn6UxDPf7mMjCUkPiQVerpp9bmHJq0eoHEjd6VKjY
	 RKqc7K2mdsiZg==
Original-Subject: Issue in man page getdents.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216B0.000000006739C982.003FC63C; Sun, 17 Nov 2024 10:46:26 +0000
Date: Sun, 17 Nov 2024 10:46:26 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getdents.2
Message-ID: <ZznJgidnFAE3KqQe@meinfjell.helgefjelltest.de>
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

Issue:    B<readdir>(3)B<.> → B<readdir>(3).

"I<d_ino> is an inode number.  I<d_off> is a filesystem-specific value with "
"no specific meaning to user space, though on older filesystems it used to be "
"the distance from the start of the directory to the start of the next "
"I<linux_dirent>; see B<readdir>(3)B<.> I<d_reclen> is the size of this "
"entire I<linux_dirent>.  I<d_name> is a null-terminated filename."

