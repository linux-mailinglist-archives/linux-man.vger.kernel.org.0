Return-Path: <linux-man+bounces-3654-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DC0B330E2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F32D4203F4A
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC812E040A;
	Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="DmOIvyl1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22B2DECCB
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046969; cv=none; b=XOpPXjaGcZx9QhCgkc29skOwBFLg0jSWNByybTDS3Fe2YOO/he7Nu61GirqNPxoMoEphg1z+Y/8eaiUiprajvw8Q8hkWVsmxvi0STwvgdvTZErLUViwdMDETu/VnfjQ0ULNwPyWNtozRJT8dnepjHPNi+xATzmkGEuLVqu9F4QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046969; c=relaxed/simple;
	bh=0aoKi9yQRaI2zz5oKeL8Ex2l01VbxzcjforGsfylKC8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=raG3nLn07bXRvCNampTcOypN4+etsZFvFA0vqqAvLJ/IDXUt8nRExUG9gayFmuyjZAL8S0ElanaM6RWtE37vwhHonI2lA7T5ZDT0Nu+OFy0Q8NkOGE7XUsXmqpD4ulF2fZo8xjRTzaxMuFX1Rot/prlz7d9wqvE+OxyGB1SvOMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=DmOIvyl1; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=UJMrU0PNyljc8GA89Zohc1rq/cY2eMKuZWzqnKCRoZo=;
	h=Date:From:To:Cc:Subject;
	b=DmOIvyl1+Wv/Y/Z1YuDpfqlOHZiUfaTtsYcb7UsclBM2mmFYrkRb6fGxunvIUJesr
	 yeLjPsqeuxaXTaNkWgsWgBronGb90F3Ux3GopUwbJ8JSu5RYYFbW1/CytYCoUWB+8o
	 Y4Zj6n1vQtjinMErHfclaxsnM3jAJMBKD0dCplqXpcK0omYx0Z1e74rbBb9wNSkPIq
	 jc47ZJONdDBiy59/t/MZF+zA1wjHWN9Zk2K85mgmvkK9pxhunHjlCC5qWE2bH02ByJ
	 FzCGxXi0K+xthnN13gT3g8TgmLNm4YdxgNCxtbosh4YJxtXDxvsZmWcOC0EHt/wGwQ
	 bfXesjwN7qfNg==
Original-Subject: Issue in man page outb.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002175C.0000000068AB264E.001395E7; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page outb.2
Message-ID: <aKsmTrrPq9MBL_en@meinfjell.helgefjelltest.de>
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

Issue:    B<…>unsigned long count → B<…unsigned long> I<count>

"B<void insb(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"
"B<void insw(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"
"B<void insl(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"
"B<void outsb(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, const void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"
"B<void outsw(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, const void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"
"B<void outsl(>unsigned long count;\n"
"B<           unsigned short >I<port>B<, const void >I<addr>B<[>I<count>B<],>\n"
"B<           unsigned long >I<count>B<);>\n"

