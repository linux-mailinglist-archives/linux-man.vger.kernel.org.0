Return-Path: <linux-man+bounces-1951-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D309D030B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19E95283773
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682911714B7;
	Sun, 17 Nov 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="CrX5T96X"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85761392
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840697; cv=none; b=hs/VZD9/Wi9A04RxQAKshGyg4WqDuh9ZA19Fx10R9VqAURq5Ka3X4hl5ouy3H2pHSdSBT/w3XsRh3kX5Z7+Fz3cqyK9qtz3QWn6iScNtd25GwurMwMpOvHbcN40fiAzxuiH4gQCEC3zQpp/E+0TFUidjk1H9kTPnw3ufDU2eyz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840697; c=relaxed/simple;
	bh=6f5fmqNkI3lMP7YnHYOXDN/2c674idH4xeEbmHKVUmI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=oxDBBlffhS30Dh8+KgmGtMtID8EST2L8vvwGR505vHICJeGoSwGsoN4cpcwZDg/0Llj4h1t1Yc5WXgWB/dg605s7dZmit+qk/MbDOGekSJ5Yb6SRK59Dx7yfMYJLNGNoK3a0oGCiKzozel8MxRsMH13gQAXfaYOM7I3A8sTD//c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=CrX5T96X; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=TDf6CBS2my3HBWOISAAKCuTap9HORnzDz01bqy/4FHE=;
	h=Date:From:To:Cc:Subject;
	b=CrX5T96XE2q8Vif9OltsYP1ZWg/O4IPOsS/hMAu7uDIgGOLY52qydtN5KOmMUBv1C
	 pLJf00E0qBFJQgyGebEsisX9lXTt58RLfrIp1zkxLm4LNmzbKDTue9DodvUP+KS5eH
	 R0Wispcw8jZeE8bH7tX2f+yZmjv6F1XO8VW5m49FHu8hL6kD0LQ8+RMWC9MtfO1+A8
	 j8PS5Ko6fBsoKUG3+9JH5oi+M7jhJOAY6RF2l9VPLvnZGLHokHXfnmu67XG0eymcYL
	 V13iHjylBotsMPsSzbYaj20xarjf/6irMTP94eJr+/IKHXmqB5qmfVmZWozIKB9bHJ
	 fS8lywEnZ5/8w==
Original-Subject: Issue in man page pthread_attr_setschedpolicy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020591.000000006739C97E.003FC396; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
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

Issue:    inherit-scheduler → inherit scheduler

"In order for the policy setting made by B<pthread_attr_setschedpolicy>()  to "
"have effect when calling B<pthread_create>(3), the caller must use "
"B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attribute "
"of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."

