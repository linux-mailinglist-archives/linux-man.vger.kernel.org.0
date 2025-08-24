Return-Path: <linux-man+bounces-3591-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB634B330A3
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD457441E37
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051F92DECCB;
	Sun, 24 Aug 2025 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="P06za1xK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C2B2DECB1
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046938; cv=none; b=FtnATgduMbbuipyQSLx968mnjbY6aMzTlsf0nf6TJirEtcT/2y+G5g8ZVIsJ5AQBrwPPARROsLFf36/1gbWPCpzVaW404dgamPS6CNgCBK8xWOGM5DO0t1ZIG5JifAxhe6FdL+F1uC+sEfikQTiXhp4qteLxbH53LSq5E8HzHB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046938; c=relaxed/simple;
	bh=f7F+kRqaj9VFYZGDCANWRFlFk/G6NFjDczf/N8KCTS0=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=cVpbVkPgiArqepeTf/A/CiLKbNGd7DrbiURdEX2DxkR+OIqqmJKa/vJiP7vtgsLcFoddHwzhzV+t2ByvYj5HYLn6qxLvjx8cM7NX7/apIq5bizdgGRu0WEX8FJelLJ3QdM+1eoSXx1Lrsesg37pLF4iOmKwHkcGb61L3XPDhyrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=P06za1xK; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046918;
	bh=0vRR3REcLPu2s7nx3QWxAUDux6+gSGrm6OnJqkY1BiU=;
	h=Date:From:To:Cc:Subject;
	b=P06za1xK21hxlcwjp/9uxGer7AN9r3GnWktTv8sSXOf8yhYNMie+Y/+NMSvVjtnCt
	 8Sf7CdSjeJzvE7YsSaK4lePwzj26NiBde15g1isXDgT8ICJP5pFLb3I45CZTzEbOY8
	 S4en64RnliupLxfiF0ogid5cci+AHOQpmHXu0TU/Myz3agbIPJG6uxYyYJ0gfOlbdu
	 1mZ1TgvnqrabviIsMFy/jn3MajZs5pj+4e+2Kyl0eAMyjzo507FyBLdUGOaTNPBjJh
	 Bd+qfra/tTjbwAGzhsJ3XkLZXfcnoN4+DVyLZLwfQYocFl7lR4BHlF2xh3qqZA0h5h
	 Pp/dERVFwS81Q==
Original-Subject: Issue in man page dir_colors.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020EE7.0000000068AB2646.00138FBE; Sun, 24 Aug 2025 14:48:38 +0000
Date: Sun, 24 Aug 2025 14:48:38 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page dir_colors.5
Message-ID: <aKsmRo9hmWxmRoVK@meinfjell.helgefjelltest.de>
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

Issue:    From this point I<> in msgid are incorrect (maybe similar issue as in groff_me.7.po?)

"I<Any character (octal notation)>"

