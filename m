Return-Path: <linux-man+bounces-4508-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8A1CDC8CE
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F91430562D9
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13033590A3;
	Wed, 24 Dec 2025 14:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="XMZque1H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E344C358D37
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587118; cv=none; b=bTPoujQkQuM9PqVIRt901RRRQYB1lfK07mpg1L2C1j5BEIQOrh7nt2gQRafHHAk8glLVhuc2rFMAuuma9F/9+4OEnIpTXXiWktWyx2X1lOg5QpfDgE30jN+RM6FZNsleJ5d/QdreEiD3mzFjARkOzkB0GydrQUU/9k3sd+eTzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587118; c=relaxed/simple;
	bh=Y04IQzOkhUTmRQA+caerkYTqdzipAxsAxdISXXDELJk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ZRCl6gZrJbZFXjvmVrL3+Hn0PgSWu/qbzY9CjllZpVZSaTMcxNuljw+8koCHPwUkubK5VYIoCHW7di+iWhmhV/JMDswgU2R5P+1odmdBkWFaTOEi7cg1e3pMDTQvEo4EpxA0/OJfP6hloY2M8GqlJApl9mtjM++/qHCuD1DlVeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=XMZque1H; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=NVugzt2E5IXNrX72w8tIKlYZQ07BtmFJOKiZ4VfbLqk=;
	h=Date:From:To:Cc:Subject;
	b=XMZque1HjQH1XuxMbmBM8I/YU6XLVV+Lmc500hFRTi6BqtB7sPVTJLOXSXsOCod0a
	 5Wg1VLEotyzdfUKcl5V6HcQqkglZgDPvXgnJCiH+3ucVagAc9+gelQ4q9MwsZNfwqH
	 xjvBFvX8Lad8FWjtuBxhtrM+SE9gfPFp7MN5B835bFaTYRSmeUtUwMswp6pKDludVc
	 qUVYQ3yOwGp936dVK+WpWbFiHNtKyUNRKKPfaEJZFVwtcUlFbibG7xLFrdcgwmK0Kw
	 iZqLe0Hqs3ZDZSIrTNoAtmGRSZ+pMCiPHz+hAsau/2IIOECWm3E5SFXk3cbz+UoHQf
	 1RYoPhBKTjGbQ==
Original-Subject: Issue in man page  sigaction.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A51.00000000694BFAE0.00319959; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  sigaction.2
Message-ID: <aUv64KTVybnf2hB-@meinfjell.helgefjelltest.de>
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

Issue:     behaviour → behavior  (according man-pages(7) american English is used)

"POSIX only guarantees B<SI_TIMER> for signals created by "
"I<timer_create>(2).  Implementations are free to also provide it for other "
"types of timers.  The Linux behaviour matches NetBSD."

