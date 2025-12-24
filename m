Return-Path: <linux-man+bounces-4515-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CBDCDC883
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E6413016FA2
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F3D3590B7;
	Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="dcZT4gII"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0933590AE
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587122; cv=none; b=tWvcJ6r43DCV9EACE/9nB0R4C4mMaNrGetQbQbq3X3TtZoB5Yb4fBPrRDJXVmPIIYlPSd0OJXJnkJQWB4tSM/JdXCZeyX0hNm0pCojxxCiVwwB6rwWZNgf1T2ZqSifQqNzvlaoH0iZ6jJrYJG/nC7q0+AL6ctBZPNoFywJrFhGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587122; c=relaxed/simple;
	bh=dZeANJOiTYDI/K05s2S+tlJOIK6NQ2jgIaGu5W8cRW0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RIKLnNQ5iFzqC2PjsumpEmJtAkoLt2CeaBYKIRfGF3HbGo83LQjMluaprVtVRaa2WZYPA9rf4ubitlX3v4qbbott0hmlQCVgH8zb/QwA02ldCqMDyovvoKX6jIHrSkxrqM7yfAkdJVNHvgjobd3mpWB6Y/TNjJbhCaakpe5nD7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=dcZT4gII; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=9Yk/ptLLNWzEkqEtQ9xS7/7+0XkNAFEoL/6JdGHwhR0=;
	h=Date:From:To:Cc:Subject;
	b=dcZT4gIIa0K34YWDvb1irP680uOQGlTWcu6bGr3vfOqb+OP55VZgbaxLD4aFwJ5m3
	 X1aAjmuSoJKolMypXTFq6/vCZDOj+Q+FMzKwnzL7TsouQkOwsaGi6k3iI779DGXQd3
	 opojuszRI96Vbf2FX1htiGvVemTOWstDKwxdtji2OX8KWwa1p8eSCFSBetSzI/YH6f
	 X92LWG0JdJXoZ4K3L7NQfGfsLpnkCjVvBndw1qlLPwhNB0UouZl3/mgi2eMxJPLGJN
	 f2/s1M5JNVUUUdxBi0ld0KsiMuvcyGy94/wFsboV+SlZet+1+j1RPySc0hLotVIaxg
	 M0sQ/bx2tbjQA==
Original-Subject: Issue in man page console_codes.4
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A92.00000000694BFAE1.00319A08; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page console_codes.4
Message-ID: <aUv64TjNJQdRtZh7@meinfjell.helgefjelltest.de>
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

Issue:    I<asctime(localtime(t))> → B<asctime(localtime(>I<t>B<))>

"The call B<ctime(>I<t>B<)> is equivalent to I<asctime(localtime(t))>.  It "
"converts the calendar time I<t> into a null-terminated string of the form"

