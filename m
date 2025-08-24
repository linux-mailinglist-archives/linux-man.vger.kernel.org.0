Return-Path: <linux-man+bounces-3682-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A649B33101
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3A094424A6
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6642E0914;
	Sun, 24 Aug 2025 14:49:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ohbKh+YQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF6A2E0903
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046983; cv=none; b=MZZ418GlYNTaPyFV4WaHI3fJfLAo2M2M8p1grq9Y6Aqi4wwJstq9UTJkkw05nDPPZocXTbi9yC+UGbk5apvoOQlZfxQq1kjmjzZ12xJxs+dRUn2uiut5nTybLYZvVNyO69LxKRXvA2V8FGG1GAupen5S4Q6VXr5xiqJY26L37Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046983; c=relaxed/simple;
	bh=x5XUxIOBUfaeJqkZ+oRu/8ePMHYQRyyhi66n6wduzU8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Pv+SCBroHZAQIpTmflXXx7fMFjjOtR/O5f5sGt4aP23rjzqQfOyIhKWjRAGj/t92llTaxZ0ockTJc96oM2ZTezVBf9q5ukOxP0w0Kn7k597Jk+Wyu6af+VNjI/7E+ofiXzH7y8WUSObiolXSjLf4p0OQVTHM80TvY74ihd2IEo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ohbKh+YQ; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046931;
	bh=rfuazz2BFnwQP8PxInqXgaGmUZwj4rfkJPNE92AU4us=;
	h=Date:From:To:Cc:Subject;
	b=ohbKh+YQasBuINe5xeuEAtHlADY3/YPJ1HvqPaoZhCU3LkYMMPC3xuVniDWzHt/Wo
	 UxhuOfSiReeymmkaED5tiSNTJFiUfpuKPViq1waV7/z98+BaBUvMykqAPSfOXvaewj
	 2wzIBfYotocmxNhVHndu2nw4LhYCfmQXnpYhlO3EiC5HJyIovRifSQJnujduXHwOAN
	 jXmUrtGHHXz46BnoJJD2wNI1a2yFhJZ6/LBSMMG34yvU+u/pqYb1oJVF8iqb6ZqJ1C
	 tdAcp8rJZJbbL5FAnGbi4Uo/2YNjoykXpzmLHXVP9qU/sqXsnIDRwexMmCih7+fAqy
	 zplfiBUQUu9XQ==
Original-Subject: Issue in man page regex.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021788.0000000068AB2653.001398A5; Sun, 24 Aug 2025 14:48:51 +0000
Date: Sun, 24 Aug 2025 14:48:51 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page regex.3
Message-ID: <aKsmU0GMbNm5DsKn@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t errbuf_size → B<…size_t> I<errbuf_size>

"B<size_t regerror(>size_t errbuf_size;\n"
"B<            int >I<errcode>B<, const regex_t *_Nullable restrict >I<preg>B<,>\n"
"B<            char >I<errbuf>B<[_Nullable restrict >I<errbuf_size>B<],>\n"
"B<            size_t >I<errbuf_size>B<);>\n"
"B<void regfree(regex_t *>I<preg>B<);>\n"

