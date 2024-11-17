Return-Path: <linux-man+bounces-1931-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF609D02F6
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CBCC283A3A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EA815B0F2;
	Sun, 17 Nov 2024 10:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="gpuZ5fcm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F6F2942A
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840396; cv=none; b=M/B2Cs8MjGq+AVm+CZqD6FybZtNY5usSh0Gyx5kDy0NYPspwaLqbvMYANdqKdPM5MrXL4ydrG4NpRxMAhUtpzLWTqgo1MfvheSLxd+/aHXwu3FY8EFmYK4ZsinNP3cYL/4+0k8/bBAIM8uUbi01MInREpNvVqRpArT/3oVqhSDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840396; c=relaxed/simple;
	bh=V1FqVwJcGV9vvSTcGFvYueSDT6jvItqDb740CJK2w2g=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Rfj8hPVJIw67ppafehs5q5KaaEBr7XgKktLphYswd+3rGly08qrhN05uwlpzH0Ohn411TnHDwdPVj0d3jyVv3MtdYdh7YC/UMXMbtr0XlMo+qAUQcIXYTiZ7/2bvDkbzgDRp6yAQhXbmLEATrx3trfX4RuZmlHGuNgTzVS8LIYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=gpuZ5fcm; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=lXlp1bE/j/eE3If1YrOuHRENah+R+78F7315jyu9up4=;
	h=Date:From:To:Cc:Subject;
	b=gpuZ5fcmDdHJsrG5OfSFhrm3z0wJgKc4FfEAons8lh/D5S30WzVB1/tVQGcPDnXAi
	 MO0btT/yCMkyBFX5Df/uJnvCE+2gEOMUw5hv8iJjYnOebh71q6qMJdAOG3B8wICWXd
	 MGOO5Si7Umli65hDB6zJ4DtKuMZDZAfuZXrdZ5vH/P5P/TcDpRAckeowOt4O5Fuirh
	 VoXL4SWemUnhcmPlwUwFEP0plObtdQMS92pJeyPBl42TCuuMj+sGu0W8NpndjZTJJT
	 EiSNAMPFD/X1snqLPT87VC81f3Il5/rnNdUBy1hi9OJZ2a+pZ7WQaeEKGmzTpKH4kx
	 KKHSwHRFWuMoA==
Original-Subject: Issue in man page charsets.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021685.000000006739C981.003FC5A6; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page charsets.7
Message-ID: <ZznJgUpx_AoG7C8T@meinfjell.helgefjelltest.de>
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

Issue:    (it) is \\[aq]/\\[aq]s correct (the final s is a english plural s)

"Note that UTF-8 is self-synchronizing: 10xxxxxx is a tail, any other byte is "
"the head of a code.  Note that the only way ASCII bytes occur in a UTF-8 "
"stream, is as themselves.  In particular, there are no embedded NULs "
"(\\[aq]\\[rs]0\\[aq]) or \\[aq]/\\[aq]s that form part of some larger code."

