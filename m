Return-Path: <linux-man+bounces-1946-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C369D0307
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DE87B23CF5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9340A83A17;
	Sun, 17 Nov 2024 10:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="PkvNKVoI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E9114A4D4
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840694; cv=none; b=qgFKGNTupPauJJYiPOgE31U1Qic17Y/yLNdugGnGBTp21OjMcICf/5mw2bvg2nLyqy1SZ4+ehLe6eE60k8zsnoB5vScusVDIm3/Mf/+9ynLy9AIQV7gvQhofjtGZlgeADuMkZKRgto7tqQg5rNM/aOXhkgO34RyoNHxTVD82OA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840694; c=relaxed/simple;
	bh=przeREjGYrmKuhMx8rhbQqKjPcULKiw/dXJevp2lzZ0=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=p3q8sASDsX+DcwQVyfVHO5/sxm83gONzvAuUu2efKM2piOgUg2qwovepcGDVmhyHLVC/k+qfbTM9N6ZAbC9N3eNRicmnZKEWYV2d99LfC6evbVPunsgVRRKSV6CVsxb6tE71kZMAXfzPAodcHwaYQ1w4ZH5v1YcGsokcnbp83OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=PkvNKVoI; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840381;
	bh=XCZvhBRd3Zof67VZDpOu366r9RapWrYWpxsgavp6Ivw=;
	h=Date:From:To:Cc:Subject;
	b=PkvNKVoID8MswH9Pr8G8BVhQmhPdz5pvYPygVC1jxq3BzNvWl1UC5tsadm0TqKNSz
	 Ho7yhsg6XrQPYmefR36we6cnvGLWuHq6ZLHRf64wK6AC398c8CRIKEYbXA5FQ5ssce
	 MeBH4Dp2jrK8ugYNG4p0juvtiP2A2jsjX+LGPbnePlktaomaO62actOd7os4vhNVAv
	 LcC0c980vmoBd6FXCVeMJHb10waPVYcNEf4SrAhG2ACy/OzoFFyH5v/8K7AFqKjB5x
	 stiYSDAUCMWMD1+gSCEfaLv6e6wRAoJ/wdWtD+bPTUZ1t/F/nyk4AMeBKjifCutiPW
	 zVjISg70WAiUw==
Original-Subject: Issue in man page motd.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000202B9.000000006739C97D.003FC2E3; Sun, 17 Nov 2024 10:46:21 +0000
Date: Sun, 17 Nov 2024 10:46:21 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page motd.5
Message-ID: <ZznJfQAa4S1cRBE5@meinfjell.helgefjelltest.de>
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

Issue:    Missing full stop

"On Debian GNU/Linux, dynamic content configured at I</etc/pam.d/login> is "
"also displayed by I<pam_exec>"

