Return-Path: <linux-man+bounces-4514-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A29CDC8DA
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9C7C305AEFD
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CF83590B5;
	Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ussizp5H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EABA3590AC
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587122; cv=none; b=BSbRUK5+sPr2ZKX9KJV8ylaKJ4JOW/zlVwc9a/PO4z3z4lWZ3RF2De/Ljj4+3oxzZ8Q+0FL/fWKLZyqBWp8oAEZh9aYJCAJxZejOuQs+fZtTPph7wkLzGhSfLz225MoiFStwyBgRkBAgInxLk2oqRI6a5eRmKzhr94C3TEG4ECc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587122; c=relaxed/simple;
	bh=lH0jfMEIdxIPVzObxEAps+yDxTXP81yTRkbWBdm4jUc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NpvjeLKIsplxM6mTCqa/k5EKtLu9mkjcG6Wy/9HAg5tT1amZDBLQLgZsA7JVAC6fSVJ2///dz4bO1VVcEsie0mmosAe7SzUeK6TNi00Hsy5aIPS3TLYn/W/JxZQ6a/BOf4CF6vGloew8NLekM0bWfntLlLeI9LvsVa2RoUBCbIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ussizp5H; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587105;
	bh=TWncFSD9m+OSVBaSjOAN/1/XRY04zbPjdKPYSo2uOxs=;
	h=Date:From:To:Cc:Subject;
	b=ussizp5HLoNaR7dpNThjXRuLS7RcVhHBHJje7MJQDqT+39tFpjFb6XJzR1NPhLl5h
	 l0CSJe1+5KbNaLI8J5RWSB1CVZmK3WDUUGtlU3NrV0gmEf5pgtG5blAAH1V/mbxw3Q
	 SvwOCl4FeAlX2Yu13ctw78keo4VmoHAFtZPV1dB2dmBh37Ishy9HcM/v+GZk/zVTW+
	 Q1yCZC5VPAoQeDMX926lxWePPhVL0eyIZ1wMaDMGXvSa/oFPqxfa8RX9uAwtB4ZjJ8
	 ly4++q5VDR682Ya95z4wbGL/DWaNS6k51vOCRM4oHgl7UufqRQZA8kozqA00j9XUlM
	 jw66cJFg+PGnA==
Original-Subject: Issue in man page  wint_t.3type
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A85.00000000694BFAE1.003199EF; Wed, 24 Dec 2025 14:38:25 +0000
Date: Wed, 24 Dec 2025 14:38:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  wint_t.3type
Message-ID: <aUv64ae65sznmeE7@meinfjell.helgefjelltest.de>
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

Issue:     of → or

"wint_t, WEOF - integer type capable of storing any wchar_t of WEOF"

