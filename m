Return-Path: <linux-man+bounces-4519-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1D5CDC8E6
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99056305F331
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5D083590C0;
	Wed, 24 Dec 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="pp6rYkLd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BE63590BA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587124; cv=none; b=d9PlYmhXrLMiMwSvGtDa5gIUrj9qQg9JkemJiFTGnuOL8ABX2QlZ8blTdPjUjsE5PEGG12I729MxBCixp+lVrfg/N4jPbanJ5N6pluvFsMlm1TXuZzfQ8Zm/JwnABLp4d12Ko5HlWDFw8dCOloXglVf8QIwhAnl/+I+FR3Ka3HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587124; c=relaxed/simple;
	bh=BFgpSiY1L4xpbnEZEuKg5yJAvxb+C6/2FgBaaX+6oyU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VaqhIGJb+r6UIMnPuuwvJUKF5VU19j7BzeiVL1ZjIrTAKkN27OtdoCfC6T0dnmEaE82NxhNG12fXGOBqU1FEJKKumJwf1QaXRS4kTX83TFYqzL5qm6CNmEh6poYSzfn6NyIMBZdwuHiYuogQnRQ5NXXiRSFyBnxyYmFEzIvYes0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=pp6rYkLd; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587106;
	bh=8UqTywLT9fN4FVu8SFjPHJJbOjQ7x3P/JuDZz8g5u+Q=;
	h=Date:From:To:Cc:Subject;
	b=pp6rYkLdsPXXb5W8231Wjv2P4iN06kWOh9BimHOUEaybMPJ6Eijerjyb5EWvbo3Sm
	 N5RJlSw7vTCx2J7u2MwmTTqctPwrmvOok3GvHstKWvHxxTp0dcSx1CwuGVFhXC+8cc
	 mh4ccjMCh+oaoMSoa3BJcezbqy96ruIDI5TQfDfAkGTI/4Wjr3GyZ0tTiScrvUu66H
	 cxg0FgKfmOsiPyk4TAdvTUQU9xOY12QgEHhkRYNMHPVilZ/g+7VamdvK/08nZT/Zlf
	 kV5BVRwpzG9Gf/j2xZkS5orVq0x+ETNPxADy+V+z2cHtc5zNKxdWoI7xlskFOFT5qf
	 AIRMmn9zpFmBQ==
Original-Subject: Issue in man page getpt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020B55.00000000694BFAE2.00319A85; Wed, 24 Dec 2025 14:38:26 +0000
Date: Wed, 24 Dec 2025 14:38:26 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getpt.3
Message-ID: <aUv64tskHbjzCiMI@meinfjell.helgefjelltest.de>
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

Issue:    multiplexor → multiplexer

"B<getpt>()  opens a new pseudoterminal device and returns a file descriptor "
"that refers to that device.  It is equivalent to opening the pseudoterminal "
"multiplexor device"

"on Linux systems, though the pseudoterminal multiplexor device is located "
"elsewhere on some systems that use the GNU C library."

