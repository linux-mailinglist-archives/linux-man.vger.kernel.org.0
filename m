Return-Path: <linux-man+bounces-3652-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8359B330F9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:51:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACFB63B34F2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009442DF3D1;
	Sun, 24 Aug 2025 14:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="WJdquFTW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654322E03F9
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046968; cv=none; b=AulT6zp13bVM/2h5FIT0/8FUzm1cVlMaazg2XV/iJXq+HUIa6dpbchZx+ZMojrDgc/CH5vnfafPCf7Tf80yl6PhkuuyypDHsEirU1v2cCeuKcIvIAn2UQIsIqLLzMMpNZjyGrytZL0GPMoPwLAU+Dk+FVEH9RnwrcSrhjNy9KZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046968; c=relaxed/simple;
	bh=2VtzD6/04WQunmY6j7j5NGF5Xl0J697MuOyNjusgmsg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=DUG9rO4ZnPxS44KmOvtq6H55TG0hyD3C6g6CLOh+DoqQoo6vbbqcq8RIdIe+mki3VCe/3QJXbRFY5v9rNdSjS5K0y8XSOj1Va3IIcOpO7itGvHk6rVVE6swSj6wm3Kr/C3f49GFgguL6HdL1HCquMAG9GrIUwC4CsdsX906WWZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=WJdquFTW; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046926;
	bh=86r9qKDHA0FIg5vfcxf0ApEdZb21bn6lumzt60UdzWA=;
	h=Date:From:To:Cc:Subject;
	b=WJdquFTW959lCCMizrvYp6qkiAfEk1XVyVFHXfNNqiap6IhKCwFmQBqdtvfah2C3e
	 LzyE/4YS4/E+s+wQuxJ8ev4zTZQ1cwBoq979M1lUlBkSL1B497hEKTRm7Nyub2nDPo
	 Zx2XgGAfP5ufU96piHRgrXLosTpnC0JqaVyt5NUp7SC0OEwT6Fd699cP5AHrdFNBA6
	 Z3vqheFLS6+RmJhuSmKzNm0HjyHey2xqY1C/ctX6CbmwfWRNljU2uJkXYisk3T8Ke6
	 c7SYa8UqTE83612F3qFmRjtK3R2nJqNpGl64I3P8fg6M/G6O4glu3gehwcG9ZXeBzq
	 bR4t9PmsHuENw==
Original-Subject: Issue in man page open.2
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215FC.0000000068AB264E.001395B5; Sun, 24 Aug 2025 14:48:46 +0000
Date: Sun, 24 Aug 2025 14:48:46 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page open.2
Message-ID: <aKsmTm5mxKd2tPSt@meinfjell.helgefjelltest.de>
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

Issue:    the open → B<open>()

"If I<path> is not a directory, cause the open to fail.  This flag was added "
"in Linux 2.1.126, to avoid denial-of-service problems if B<opendir>(3)  is "
"called on a FIFO or tape device."

