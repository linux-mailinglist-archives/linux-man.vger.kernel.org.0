Return-Path: <linux-man+bounces-4293-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 28971C5D28D
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 13:44:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B27B348896
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 12:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 008B01A0728;
	Fri, 14 Nov 2025 12:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.com header.i=teika@gmx.com header.b="MnI8UUtD"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEAA1B424F
	for <linux-man@vger.kernel.org>; Fri, 14 Nov 2025 12:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763123941; cv=none; b=fEBYT7K96DSdwogDp36TcptfDtmJRw8VPisELBGaBiDpVT//VAAf3PIyht8jMxBidvSsnt0daAuiPmQwg7M4PRuoHs+qPWG0IQhzs383ghvSvceX2QKaJPQEbgHOgO95yElwvIagqqZgQ9itceKJeEHSBrXChJqJyc94iBK3Po0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763123941; c=relaxed/simple;
	bh=qubj6nV2AcVZeWDQKFSrLoijdZ/HG0svHw4p9G0eh7g=;
	h=Date:Message-Id:To:Cc:Subject:From:In-Reply-To:References:
	 Mime-Version:Content-Type; b=ijWnuiJD7k88UqlVKH7nYdcWt8shaWYNJQRj9nUEnGjbX1FYP5388yAuLJEGY+NDaG0o2xqPF248GTWIe6GB1oQOd6aDKx+GocZUCZQODkU0Iu5vOhralkLvJ7m866Xsyhflt6FrrbFWxIm4jUv7f7VGP7neMKZoubbjGNwKi4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.com; spf=pass smtp.mailfrom=gmx.com; dkim=pass (2048-bit key) header.d=gmx.com header.i=teika@gmx.com header.b=MnI8UUtD; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.com;
	s=s31663417; t=1763123936; x=1763728736; i=teika@gmx.com;
	bh=qubj6nV2AcVZeWDQKFSrLoijdZ/HG0svHw4p9G0eh7g=;
	h=X-UI-Sender-Class:Date:Message-Id:To:Cc:Subject:From:In-Reply-To:
	 References:Mime-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=MnI8UUtDQnGR57euS51UOGHirKZCegbqeypNqpcqlttE3xPrCKus4M/+CRCqnZ+g
	 +Ka3TUrZbgmnvVhRCYmXOs6IL8lrwP0UYB1AX5Nk1Z6mGFwcf3SQ5TLxwc/DKWXdX
	 hXiOFigbEs63WPlOD10vo7p9x3I9+FG527VD7IwREvFp2Z2mzi2c+0bAd43T0mRUT
	 fTsDmIoNqrRqrSA2rI43lQ80L5LmMLKwMz6BiqP58cUNAOGRUrBLdEllQ3Cj85Rts
	 1nMaYneJWYOiEGOoFZV5BOtkFgjMvIw43qv1CXF7typJjAAIaDFMMlUL1eVzxnmon
	 mfjNdXQtmw82+t890g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost ([153.132.221.42]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MgeoI-1vpx6B3VPg-00n8YC; Fri, 14
 Nov 2025 13:38:56 +0100
Date: Fri, 14 Nov 2025 21:31:02 +0900 (JST)
Message-Id: <20251114.213102.157774727959285812.teika@gmx.com>
To: alx@kernel.org, teika@gmx.com
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [Patch v2 0/1] man/man2/ioctl_vt.2: Various improvements.
From: Teika Kazura <teika@gmx.com>
In-Reply-To: <20251110.165618.2111633615163528521.teika@gmx.com>
	<20251113204558.zbdxpkuiy5xh2ynf@jwilk.net>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Wuadi5MaO9NWgIwfILelQGLHnfe70JKH9RBaRpi0oN3uvLiFqNS
 T/09DHa6EbjDf6ukr0ud4hnKk8ZtxNwrUTPVJMWvQ5SzSsclV6jvtP9xoC8edjtZ766mMz0
 pD9pSUKyYHQ+XPTs4r26SdF6YqFFOrfJ7D8jyMZUlnWQDphZhKJ8Pba/mOmgQGd8HSnl1fH
 a7CyRI+oI886evOPRpxdQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:JKxEn+558Mk=;XWi0WG+QvE0lu93evD6Uy0NUfRj
 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
 ZhV522nsJVmzpWqYk=

Some follow-ups.

1.
From: Jakub Wilk <jwilk@jwilk.net>

> VT_GETHIFONTMASK is documented in vcs(4).
> [...]
> s/exapmle/example/

Thanks. I checked the other 4 undocumented calls are not documented elsewh=
ere
in man-pages.

2.
In the v2 patch,
a) The markup of "See also" at the bottom is wrong.=20

b) "privilege of CAP_SYS_TTY_CONFIG" -> capability of

3.
I'm thinking of adding something like below. It might be too wordy,
and not exactly for a man-page, but I think it is better than
being completely lacking. Any comment?
=2D-----------------------------------------------------------------------
VT_WAITEVENT: This is implemented, but do not use.

Historical note: In 2010, by the request of the package ConsoleKit, VT_WAI=
TEVENT was implemented. However it turned out to be a failure, and Console=
Kit gave up its use. This ioctl is a mere relic.
https://bugs.freedesktop.org/show_bug.cgi?id=3D17720

VT_RELDISP:=20
(Add this) The package elogind does ignore acquistion event. =20
https://raw.githubusercontent.com/elogind/elogind/refs/heads/main/src/logi=
n/logind.c

=2D----------------------------------------------------------------------
Anyway if it's to be rejected, I'll post it to bugzilla for slightly bette=
r searchabitily. It's an abuse of bugzilla, but I don't care. :p

4.
I'll add VT_LOCKSWITCH and VT_UNLOCKSWITCH too. They are simply what the n=
ames suggests.

Teika

