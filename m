Return-Path: <linux-man+bounces-3607-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C41EDB330B3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5EF71B25AC4
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB6F12DF3EC;
	Sun, 24 Aug 2025 14:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CWYUNxdN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4852DE6FC
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046946; cv=none; b=ey8vDu+BJ2MS8CBaPBCvOZx29KPJ3ZoDNtlqrkLqL/4+r5O3qdbX0W1co77P3OyiWINQ2NOw8ng3rTGODcBVlymn/rK4Awbhor+mFFQddAD3OAhBWI+KC9K4vYyMbLxeQ7xW9yDQy4WwRVn5qcg3spzFzsHFWnsxnUDniKxTTv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046946; c=relaxed/simple;
	bh=cLAk+V4SBO/iTwMp4fHQLOzJYCDgphfpNYUykAP/66w=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=kVjUCp+As9grxE/VRKOV9O2IrLPUBD2RLKR1nK193oXnQB+wNVsrPfw5gWbMkj5emwmHvXdIQOeZa2jnV6dIRd5NcFHlBVTsZoFqC6gaiRP6S2YswbsPkTfkD/jX+zOvhOQeT0fQWxdzq3Vd7M3Xb1g1fut30oZdJWhFVK+fdxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CWYUNxdN; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046920;
	bh=ZUf3mdai3xz+fQqvGaPI2W3PbNWHvSSzamD2tUGcij4=;
	h=Date:From:To:Cc:Subject;
	b=CWYUNxdNqE8/4DD2uXHHRLj1M6DDFZ+VeRNVnd4rtlAo/ePDXBMosMkJfb1QiO56Z
	 lYFuwtnnynnAhhC8qbYF3LhSiWPFY7xf57VrfUy2fVgwlWYxOlQ0/+YBR6X1IIAdXv
	 X0PtkhTN7VMZS/ngY3RtmbelgeftBRrCxAleV3oC7/PTKNB+1tOPuzdevA0wlYRZSF
	 YdaH2f/3BxcOt6UQiBEIC2U1Vql+g3HO+8/8nkuGn3ZA24+zyKNzvHVx4Au61lVlPA
	 QA3jAe7HLPREu3i6n+L1HgIIJKfNi1xltgHgTa6RjVBvYvYXYDbQKPxAmfyDJGFHw6
	 TqdjS96BL53VQ==
Original-Subject: Issue in man page addseverity.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021459.0000000068AB2648.0013914E; Sun, 24 Aug 2025 14:48:40 +0000
Date: Sun, 24 Aug 2025 14:48:40 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page addseverity.3
Message-ID: <aKsmSJY7MV8yssf3@meinfjell.helgefjelltest.de>
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

Issue:    Does this mean, for glibc 2.19 both options are applicable, i.e. _DEFAULT_SOURCE AND _SVID_SOURCE are necessary?

msgid ""
"    Since glibc 2.19:\n"
"        _DEFAULT_SOURCE\n"
"    glibc 2.19 and earlier:\n"
"        _SVID_SOURCE\n"

