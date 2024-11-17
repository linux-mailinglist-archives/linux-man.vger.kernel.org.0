Return-Path: <linux-man+bounces-1938-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ED99D02FD
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:47:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 155762849F4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CA317A58F;
	Sun, 17 Nov 2024 10:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="FfM4CGjc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A178717B402
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840400; cv=none; b=J4a4DHEzD/AVSN8EeJUOfSojP5e3ovN6Z8DzE/pWpGCEqfHb6eQ74r8WnCjH1gfE027Ve6Lih+7CHTJ3p7zrb2eYHCQtgJW86/GI0jlg9XpibX8dCqc26uV+9Wc/YlJIvYvbpxkuSMHJbDRzzYuPlcy/MvO88DjOQ2Lmm6zMjXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840400; c=relaxed/simple;
	bh=yNQp6XxNOOdVjPKGPz3Ds+/wkIwmG82pnLFrxG9hxDc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ConmKgZ8izVwwEIa/sHsTkqqiWI2BriYTLRKl12XUVx5sMi2z932+e36zvBRL4lwsJnIvAm7/tNgiPCiqZybuuGvx68fp+Wgj6ecS08ILd0iCg200QnW1V5ZLBrIF1tg+buWOGF/Fb1oPaavfqI1GKI6yrBDMwjqQjaYPDtcLSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=FfM4CGjc; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840386;
	bh=3sqaiqwxNy+GXVG10ULD9RmZSDJs3x2mK5OFCU7lz4o=;
	h=Date:From:To:Cc:Subject;
	b=FfM4CGjc10sgje74d/XE/h7r4KFyKvv93alJAw5hXVlbZWBrOmgkR29qDbVFm4BOU
	 0Cxg/4xPAo+FSDhtlPGm1VgdYa3pz/sJKocVK7I/7unL9WRQaQueWSA0oJt3f/xpqq
	 JaFbYp4uU1G7Tw4yHOVf/j672S+PEyOzvNRvyHxEJZiESwwMarzYSEpgUnU+VcDx3v
	 pZXZnUj/AhDyo1ffLAFhV5Djr6jrSLmcu9Fli5xkJNrwxuE4lx7uRbOlUsJQ3lxVua
	 QiryEzWT7FC0RolUDO88HkmptvC0hUE12UgEmvQLh23KUs4rjuQpMHghtwkvbFTUic
	 zHenLlOBHQGew==
Original-Subject: Issue in man page getent.1
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000216B9.000000006739C982.003FC655; Sun, 17 Nov 2024 10:46:26 +0000
Date: Sun, 17 Nov 2024 10:46:26 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getent.1
Message-ID: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
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

Issue:    No "in succession" here on purpose?

"When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
"B<endhostent>(3)  to enumerate the hosts database.  When one or more I<key> "
"arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
"B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
"indicates that the I<key> is an IPv6 or IPv4 address or not, and display the "
"result."

… and in many other paragraphs (I can provide you the full list). Last
time you said, that this is under review with glibc - are there any
results on this?

