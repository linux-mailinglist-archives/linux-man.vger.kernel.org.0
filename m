Return-Path: <linux-man+bounces-4489-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D92CDC8A7
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:40:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B481F30456BC
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340EA358D09;
	Wed, 24 Dec 2025 14:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="oOk3dtPC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7F83587CA
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587109; cv=none; b=VwQmJxV1gs/p04pVh4WFt5VuAIMNrOfSEJmhGIoSPT40kys0c2mCtuV5ShE+UBmjT3PDSRlQ4/5iXUKhiQDPlU0qsbwaA8WMCMKe6EN5j8S0B0K5LiHxUZgTsSx8/4DNKFmaBUq4H5b32JxJ/rXXLclrdqBwBdlq6FTTu8Bnqpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587109; c=relaxed/simple;
	bh=btQ3ZeBBFfrHT6SgzM7GowPuU+KbYTDd7wzx/ADf1W4=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=HSPdbLAVE4+wqT85G+OJm67fMneukLKMUH9ovvD7NkawX3rrFmWXNH2CdBrZWwr6HzXwEqH2GkknmI7lnyX+SH7Ae5tN+KWMx0T00O2LKuZ+s4fN3DAE0qG74XGnkRG7uQtdzMX5ONAe9O2zQX8GIHRv7AMcgZradvwBUUSM1kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=oOk3dtPC; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587102;
	bh=os14kmVz8nOXFcpZMUmyG3azeUXeZ/v819GI/JIa1Mc=;
	h=Date:From:To:Cc:Subject;
	b=oOk3dtPChcotESmKb9Rp6BmuRoBaOIiWp698OMBBAulxVBk7Kgk4cRkFt8zl/uHRC
	 wD7XqdInlHupvOh33wPiT0//JUMeaOafjJy7vH2Enn5Q3IppiaBFhzZ0OrcbN+PwXC
	 dYYE9fqP45gN/k8agDOD+0+jzPJ4D+m269qvH70EKkSK8g5/CK7ch3ZsGrIT4+hduO
	 U0oaWVYyQl6J7b3CL4PUfMn7ZjDrkf5/SM41iQTsC9v+++WvSR90RhAfzdBMzve8jg
	 iD6+t4tA0JHvzQlmf9ovntKN2hIKzypHVDVgS8ku+WBQb4ibbzKYvXE7XClJiK26D2
	 /XzuoshNZq3Og==
Original-Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020785.00000000694BFADE.003197AD; Wed, 24 Dec 2025 14:38:22 +0000
Date: Wed, 24 Dec 2025 14:38:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUv63otKGVcNZ5As@meinfjell.helgefjelltest.de>
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

Issue:     No full stop

"PR_RISCV_SET_ICACHE_FLUSH_CTX - Enable/disable icache flushing instructions "
"in userspace."

