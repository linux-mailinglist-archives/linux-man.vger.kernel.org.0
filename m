Return-Path: <linux-man+bounces-3550-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 92153B33079
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D1F8441D9A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF6E2DAFDF;
	Sun, 24 Aug 2025 14:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Anie603H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C5F14EC46
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046918; cv=none; b=mtcapf0LBRKcQ4g8rU3DUu5RMVW3BLWsX8/GlLRVjgP/IM6L0JVltYZxN2qMeXO1NbDcUv0c9DOWwZsdRwGerSsqWez+wxLWLtwxqUJMxHglH/MbqTGUx2OOTeiIaxlhyVw40KAVDp1uGAFHoveqCdj5ZaCttzYYOPl5KKiJ/Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046918; c=relaxed/simple;
	bh=FGZqo/vauBiURxZs0ieDMYrA6gYkcQmd3eBOW3ELlXA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WC4RwiwUK8Ze7oqGBLkvyOi0KvYc4DPXtltCl7DfgROxI6QV37X2M8MyuijHwAdn9kl/NnHqVC35LOvc3MOkFL5WxJ/5wPiZ3HdQgGDNoz32SnDZ5a2IEpEwWjC2yH0Gl1162x61G1qVW9SdpHDIh5zd3QqGV1AzX0bGb37TvIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Anie603H; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046913;
	bh=qZrrlqUHj5fky+9GL+4oqAoHS0vYAtjqErnLXYLE49I=;
	h=Date:From:To:Cc:Subject;
	b=Anie603HCMHZdRr2KPE2pC27j8SAmP/1PgoKzhdfd9cCIghtVqKXrWks08tF1Vdcn
	 n604q5Liu10FYzUY6M0KFJm+Fe3MCWqgcwFfQGiCIniHKLpaBSsixY77di3P2OC4un
	 nBaEOegMBWQn0nVp16JtnMHZ3C52Pdl6L0I30AewnowhQva1jTJvMvI7Y8YTnU5Ril
	 ABOSpKEHgLjAbj/QiGRPLSuYbkLeVBTUVDTWH/4RW18JsgnfrbCk5N0zrzyVVVErNs
	 YRxlxAjZur9jn4/iPta33VY0y3eJmuwVBelkbvHilg3S6BxGyV+jVbDgNAR5pW1Lus
	 bR9UgTYwG1W1g==
Original-Subject: Issue in man page s390_pci_mmio_write.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A24.0000000068AB2641.00138B96; Sun, 24 Aug 2025 14:48:33 +0000
Date: Sun, 24 Aug 2025 14:48:33 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page s390_pci_mmio_write.2
Message-ID: <aKsmQagMCXmUdyZb@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t length → B<…size_t> I<length>

"B<int syscall(>size_t length;\n"
"B<            SYS_s390_pci_mmio_write, unsigned long >I<mmio_addr>B<,>\n"
"B<            const void >I<user_buffer>B<[>I<length>B<], size_t >I<length>B<);>\n"
"B<int syscall(>size_t length;\n"
"B<            SYS_s390_pci_mmio_read, unsigned long >I<mmio_addr>B<,>\n"
"B<            void >I<user_buffer>B<[>I<length>B<], size_t >I<length>B<);>\n"

