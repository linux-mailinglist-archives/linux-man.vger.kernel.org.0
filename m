Return-Path: <linux-man+bounces-3576-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E839AB33094
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEEFC203C17
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68E712DAFDF;
	Sun, 24 Aug 2025 14:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="T6wOa1+6"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D324518A6A7
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046931; cv=none; b=VHYsYSsFea95U8qD4zAtNzQ96+PvJxealA+jBwLsR4lr+v55v9tHzM4yxNmCX40NtA4GnwiYASkVyGS7GFQV6ohQfz9eoFZXUW/hmNhv8L2vgrkmpqwIuQp9ljziJ+shIjyXhqJqHLWsVOSD4OYI2CrU1ABX8RlxKJXiLHp7ARQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046931; c=relaxed/simple;
	bh=8E2ngp159uUbJYKa/aco2gjcjNODco+8LlNzjE2wcHI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=b+DJgA2bC9L3po9yYYwtMhoJ9XkVxYl9FpVIhL374CZRyqi19BMht1LhfOAaKJv1o7VsHDKHqQTxlecgS8OoGpS0Bhk5Foe81yv/FU7kXiSyYx73HkCAUAGUtxNHuvA0t+KnyQKswm5i3rp3WxTjZ2vA3eL0LPKkqg+t/Zn8DP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=T6wOa1+6; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046916;
	bh=feXaoTbz5aN3O7cyt2HvwmMOrGpdBIb3sIJzgBihOfI=;
	h=Date:From:To:Cc:Subject;
	b=T6wOa1+6asIn64vRwO/yhE3fWEd6k/SnI3m194no3fQH+7vr0i2PpudOZDWDWzRYv
	 GM+TAqaAs4tmscK0QbQbaRa/rY5u2XmPme+a6UjJT7hIooFlbQV8nqdoncI28GixJw
	 js0tZWC4IYkxYMcsihlkU6+8rNNmaZJXIZotJNIuc40cMsfV/8jAJ2N4+hu6lMTiT6
	 sX1Veyuagbiu75enCvYchHRP9XE379mx4f02KAHSpmkxDyZa9NjXXIrHYI8ZDccj2Z
	 L1SRSbwun06QbOByeQsLlo8O4QiMQu9gruYe50M9o0jkJ1WxKHK9e1+lEb3CFDGA7B
	 Ju55Yx7uwj+2g==
Original-Subject: Issue in man page console_codes.4
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002047C.0000000068AB2644.00138E45; Sun, 24 Aug 2025 14:48:36 +0000
Date: Sun, 24 Aug 2025 14:48:36 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page console_codes.4
Message-ID: <aKsmRHY3W6FcsLso@meinfjell.helgefjelltest.de>
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

Issue:    B<xterm (1)> → B<xterm>(1)

"Linux \"private mode\" sequences do not follow the rules in ECMA-48 for "
"private mode control sequences.  In particular, those ending with ] do not "
"use a standard terminating character.  The OSC (set palette) sequence is a "
"greater problem, since B<xterm>(1)  may interpret this as a control sequence "
"which requires a string terminator (ST).  Unlike the B<setterm>(1)  "
"sequences which will be ignored (since they are invalid control sequences), "
"the palette sequence will make B<xterm (1)> appear to hang (though pressing "
"the return-key will fix that).  To accommodate applications which have been "
"hardcoded to use Linux control sequences, set the B<xterm>(1)  resource "
"B<brokenLinuxOSC> to true."

