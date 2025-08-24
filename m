Return-Path: <linux-man+bounces-3585-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B9DB3309D
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EE091B259C5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2614B2DE703;
	Sun, 24 Aug 2025 14:48:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="DhXgFHkO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F612DE6E5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046935; cv=none; b=PO8Lv6sLV9wGtTvzv8w/q5RjsyqMHXFwWPOqOjib0aoAb2jZWgaDToAe/MFifAGTAmgz61R1iPkL996WNHec2fVHUVwQg7xvP5v4Oj6X7VRodh8Qx9iUBISHb/zt+n7TxOqka/xq4SCqa5Kdh2u5z/vA0SgOky3KYnZXuOcRP58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046935; c=relaxed/simple;
	bh=OZEXR0rCDp+/3/xLinSHuTvPw/jzEvI1tbdvtDyx81s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=DE6Gz40ASuh6xuNRxHrFdExHpqyy/Bog6bU8VvcNs+W1Ub6f+5YGo5B02H/D3CeXuJfEXte711hQKWQpnUVJkT9K8AJqt76Lhmi5pTWX+s2xlFsa/A3o3ZftrJBeeiLoxrCv/OyEi/eTB90VLhIVOyZEh1yGvK8a3BbDN8f4wsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=DhXgFHkO; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=wvaT/Goo/rbFpRUIpSe2pJ+Qep/g/rLA1GLQITlNIPQ=;
	h=Date:From:To:Cc:Subject;
	b=DhXgFHkOq2YJDnJkDeWz3Y5bNjNICZwWCvREDPzNRsdvgXB2o4dSJHBsua+lZVtw0
	 wV3/4ICEvFKNAEhPH1rDY+++Zi4QzAVD4F2qJ5FgcvGZioMZtAihbUtMD55lZdyPNc
	 zsryOfC0gCLusJmmI28dhUjRQb5n9UuESbKUknACirDJzqltBMijbwlQTefp9GrGMC
	 Eit7IgrfcunNcC6+Aedqq85dW9vQRpQ8hkaWwbyHr/Ka4v9GhyB6Kl4Mv54aBeMUT8
	 c+FmYScavKruyzndSz3K8aKTEBVEK5Z4lkyfhVZT8Udn6x1vt3mZ7jJXKYQ3WDLK/m
	 KnTa5WzgocZMA==
Original-Subject: Issue in man page wmemset.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216C6.0000000068AB2645.00138F28; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wmemset.3
Message-ID: <aKsmRYxJUCV3zYRc@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<wchar_t *wmemset(>size_t n;\n"
"B<                 wchar_t >I<wcs>B<[>I<n>B<], wchar_t >I<wc>B<, size_t >I<n>B<);>\n"

