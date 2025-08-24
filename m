Return-Path: <linux-man+bounces-3659-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81DB330E5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 71C27203F0F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7609C2DECDD;
	Sun, 24 Aug 2025 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="h96n0STG"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB99C2DE6E5
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046972; cv=none; b=C80Lg9GBsXfNZuzlQ9QgIv0m1stjhuIbxX+0Sp2tJT86svTvo4h+9X/tGG8QlDv812vtbn/sXDky4SaInmgMtANUoHY6AiX69CxOlLe8xVmzGVq3xmqiwMjDoMvDUeCxQcKurjdGwFF45PfG8lChu29E7EZn30/YtqIPMW6Z4bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046972; c=relaxed/simple;
	bh=oxmHwI0Qlu9jKMXrP5Qtxs1f1g1hVeqzJGUsXwFYqhE=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=F8GYh9lvaDn3Xjct/6DLaIUemIz4y5lAc9HJ9HxEbx/s2NDUlWoxzHF3eC3f2uXEu+bfJTOZZ0dR2aBjHlLLT4peBFAQ7wP7A5SHZ+xkQS5aGVjDepl/ZIprdaNy72WfUU237A7wvFMF7tj43/AQ5AwQA+FdijxfhFLR6UyLYss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=h96n0STG; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046927;
	bh=pYBW2MZEwgKaRG9aP/wafn+sejXhy4LoOdD/ik3wMbE=;
	h=Date:From:To:Cc:Subject;
	b=h96n0STGx7glFXwccvXFF4aBmo61koAXMLOXKuI9C+afxvhoupJXjMkFhbyqPkuDI
	 HnqmuTsmI3rwHGfaVjDZBnxF0cLwykNAa53RwNr8LqMuKJVzxQNoMMW7JV5h4bj5cB
	 Kxip+D7X2/m7wIhAiiZ7QaKnFsCuNYuHnKsj0c9wa0PER84/WZ2GRiSIQqglgB1ctJ
	 KfGmByiWYCKefAt+AVtLqvBEdZdbYpP+1NnRRdXNu3Zf5j6MoI2Mo4knU/TNsf7GVD
	 7Mu/kdLIZvJxGsIgpNbk68vGnADA8DtwLuU/6WALc3NVK3l+NkrAuDbaJ7pd1bw56c
	 A3GDOMHzCkbFg==
Original-Subject: Issue in man page PR_GET_ENDIAN.2const
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021764.0000000068AB264F.00139664; Sun, 24 Aug 2025 14:48:47 +0000
Date: Sun, 24 Aug 2025 14:48:47 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page PR_GET_ENDIAN.2const
Message-ID: <aKsmT-lJBqSQAr8f@meinfjell.helgefjelltest.de>
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

Issue:    endian-ness → endianness

"PR_GET_ENDIAN - get the endian-ness of the calling process"

"Return the endian-ness of the calling process, in the location pointed to by "
"I<endianness>."

