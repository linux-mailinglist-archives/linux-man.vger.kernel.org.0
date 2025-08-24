Return-Path: <linux-man+bounces-3582-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9DFB3309A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91DE3441E6A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C772DE6FC;
	Sun, 24 Aug 2025 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="MeTwflPK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326582DCC01
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046934; cv=none; b=NpBetQIiG+GUOIivqkag8xD16Kl9Ugr9Z47x/8Vw9y8MOr7Jb7H/0LXuv4AADiFm8MTlIwEycBuh1HSIBs3vat/UVFk9S8B/83Byv9vPUzccU2CSE5a8TIozxYKSZN2t6XiaiMI6z1LQjbEiz1WGnhad3tklOmMx7A314x2T/M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046934; c=relaxed/simple;
	bh=Ae1D+XR39H3QWeb7wflP+cRLcQXybPcdE6DPBP1eoZs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QK9bVk4hXcBkE6j2uDy5Fxv7FzmxDsavjEfjJ8X3BRg4VWGjgcDGZpXG/cGnRnqCUFlDZVy9TPFDSrE/M52okBUmGnE7Q65YuVw/+DIQW93QaVY6zWNFgGHaZJ2A3H2ooltO7bNuYMjcwEMO3Ova8mDaWKV20OWs+AV1cCUi3ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=MeTwflPK; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046917;
	bh=xl4+N7db68JjM9OOjiYPrWXpuLElhXUFfMkhC/BrqXQ=;
	h=Date:From:To:Cc:Subject;
	b=MeTwflPK73PnzVPia7HqtjO3r2xPop0T/aFTgu4r/wKfBfHM3xRyC+3thMuxhIN3W
	 j7MrQFmskc4MzNGHby4lJz6QuCRk9Bs3PINjALI+b6K6ya8/1+9ClPaZOHw4522QuB
	 nZr8zxpHtcrR7WNMLPIlqHnPREtLdHv6XDOFy7smvk7oxbGiRYdj1Nt6SDIMmniVwY
	 2RIXFTTlDRs2pEfpdALr70Dz3q2a2GOMU3m9LpYaRlkMSkUMjIbkxqABZqObV/kYJ0
	 +IfI3tI0QTItOPUeKFWrcFQgitZdewxSHGqT9GwK7LiwQ3n6sxDDndHUVB7dBduk/H
	 zyDJXOSGmR4SQ==
Original-Subject: Issue in man page wmemcmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216BE.0000000068AB2645.00138EDB; Sun, 24 Aug 2025 14:48:37 +0000
Date: Sun, 24 Aug 2025 14:48:37 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page wmemcmp.3
Message-ID: <aKsmRTD2F-hqhC7w@meinfjell.helgefjelltest.de>
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

"B<int wmemcmp(>size_t n;\n"
"B<            const wchar_t >I<s1>B<[>I<n>B<], const wchar_t >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

