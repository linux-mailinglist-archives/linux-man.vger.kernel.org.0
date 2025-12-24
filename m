Return-Path: <linux-man+bounces-4512-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F56CDC880
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C79EC3009F78
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B699D3590AD;
	Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="U/83uwwV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059CD358D37
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587120; cv=none; b=FM38YhaOLejEINGtvCLuqx2c2wW0FQJQI8OHkLAKWWNUZiWALmHhd/M3COMFUSqVJFCGL8fEo4j2LB9Cul7rYZnbaeVoxxWkQQZzC1sg+Eyl5gLKlDHrY0i+aBoGFfwawJBlhBRoU3bl0+iTgrfv9PGIhEqRU3QvrObgh9Afm1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587120; c=relaxed/simple;
	bh=WnWT/eGFhORlioqbOWnS0SK+pn+9OcXB+cd2E0DCjtg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jt96pPmiH4sR1zpNfX8v+q3z5E78Dv08JHwdNLjKVi2+YOoaMCitC1xelp+iuwKSJtXNdQVQbNkX62Xy1lBBNK/x7GfWeD0BR34GxpdqcgtwTsnOddlFsMXijobZMzjSxdHK3guhCA719Nb2nmXxIFTvcAy+LNHrkNTCBKbyCcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=U/83uwwV; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=cuefkgMavM7Cy1zDZ3RGAEI8PXX4KvLTj04FJe6FwUA=;
	h=Date:From:To:Cc:Subject;
	b=U/83uwwVujYF4EJKtyb0duTfM38nu/Vr3mThEiDVVf8zAG1uCmepuG0K8oIDEvo8V
	 sV+ToBE51UncPbM2Wlbp64szmJA60kSUwjc42MKmtao9+QbWpY/tgiYaPqCPj1LFCT
	 CLnh8LFXyqUL8QeABoAPvKPCoNGeFoUBDgpsVe9NWvCrbdtmAs6QGFWq60vUtl8gid
	 8svrVJf45g0taWjgAv+sJ18lW4RPpg9VEG9g1JVqyY1eV2NNZf3Bgez9WJDbrxgQDq
	 4gTvUcaDa1ZDgs1wPeejs7LJmIqcaKnRreBp0YaRfnqImQ4p7Tphjsp8349cUJqQjg
	 /f+86CJZDycTw==
Original-Subject: Issue in man page console_codes.4
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000203AB.00000000694BFAE1.003199BD; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page console_codes.4
Message-ID: <aUv64dL4Nw-pcSp_@meinfjell.helgefjelltest.de>
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

Issue:    I<vttest> → B<vttest>(1)

"The I<vttest> program"

