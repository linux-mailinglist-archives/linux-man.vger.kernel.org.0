Return-Path: <linux-man+bounces-1948-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F29379D0306
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8D44283416
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 885CB16F27E;
	Sun, 17 Nov 2024 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="C64lfjpW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099ED224EA
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840695; cv=none; b=u+p5LZKIVJhB45IOVsKBBh+n/AqbaQXsi4rVyo2Zn+mLm/0pp6YXBWgnxr9DVKnMYs3/j/1MrugqXCin3UHuiHk89ysuICqJpies0qyX25FE7NNrw/1NA4ssJkJWzYx0LhU9QnYtVD7MCLfzd4xoCujHER5rOE5uOvNT/eg8ubw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840695; c=relaxed/simple;
	bh=1961/WEhebxghLj2JShK9GBvKcFsy6106UAuPGfzwT8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jV6wmQkXAh59wKXvs55mXQOopVFJtmyw9SP/KWAAxer2vSdHe6X3zYhFViVsxBOXcw1VGmmdH4Av79yvlEtV9fxLoWpWl/74JQ/EOltQYWUtgMSiqzLx76hBjOqA6mAQkJkDhzrOGAXuaCX9uOhfw5I6ZAAnvSHxGirbGdOEX5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=C64lfjpW; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840383;
	bh=9IjARrt2emmf1F7NYrwp5zxriOHlLzIbHWyL3y6Tvo4=;
	h=Date:From:To:Cc:Subject;
	b=C64lfjpWOr7LnNsS4PqURqJlmyWFcLpKzud3jXR+pw+FMzSA6h5jWnhwK6AvzBrxz
	 +4zutORq9OR59UBNqdSO5OUCSM9srFocXuGc08EUu9eJEGA30cY/vkAeI4ejYJXNT2
	 k0TwEevcyyv2cKoJPXrCuemrMNDPUNscfPH/78CMbHVZpjJArBDIRLyBLHgYha9B0X
	 iQidhC/rXHbAhNGwVM45vpLcStljkBAaP9sH7XLTPKL84E+IXQgXt/4JkSUVTepFFB
	 +5t5W6WR9jL1LxqzNoHohWkWsb3o538yG5Z1UrTr+mhj2tmFk5W9uB1bART5/L5laP
	 3ohQvF3zBDQcw==
Original-Subject: Issue in man page s390_pci_mmio_write.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020747.000000006739C97F.003FC3E1; Sun, 17 Nov 2024 10:46:23 +0000
Date: Sun, 17 Nov 2024 10:46:23 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page s390_pci_mmio_write.2
Message-ID: <ZznJfzz4dlbC_-ao@meinfjell.helgefjelltest.de>
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

Issue:    to the user-space buffer I<user_buffer> → and writes them to the user-space buffer I<user_buffer>

"The B<s390_pci_mmio_write>()  system call writes I<length> bytes of data "
"from the user-space buffer I<user_buffer> to the PCI MMIO memory location "
"specified by I<mmio_addr>.  The B<s390_pci_mmio_read>()  system call reads "
"I<length> bytes of data from the PCI MMIO memory location specified by "
"I<mmio_addr> to the user-space buffer I<user_buffer>."

