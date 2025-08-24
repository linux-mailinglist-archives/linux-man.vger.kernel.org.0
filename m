Return-Path: <linux-man+bounces-3639-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61845B330D5
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E01A2188A444
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E29B2E03E4;
	Sun, 24 Aug 2025 14:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="d4TH8il1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D942DFF04
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046962; cv=none; b=HqB9GMbsjVCzF3lauXEO+PPsgi/MLW4cjRjFE0LNhwTG9smLW7By6GZwg3/oYVwposga42tEE3Ot17VcffBYcq4vzd7UWpZ/IBlnYvS51LNf/BOTxlAn++NTCw6101/tcQc7nKZEh6p7wSpAIqwAFSGEbIllcBAjq1RhadfvR3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046962; c=relaxed/simple;
	bh=rzIXr3fdLVrKwYDHRTltdIN2XNikHRRnQwjB1qp849c=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ep1c7vD2TofXDP8iQPUcG3RNzfdHPbY+NpUtgZi5VQm/HstxVOkbotamfQCFg69Xr9u+BE8j353QUSW+qj/zIOT9d/5Xa0WQCTNvrPzAreektD/MF2azPk7371VQcQSfd7IoBQQAFy76oTJu8Xtsakz3mZK9sR//XOj2p4AR1wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=d4TH8il1; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046924;
	bh=pxsVU8aHCHt5YiOymu8LpENTNuf6UZmssFuEhfiocvw=;
	h=Date:From:To:Cc:Subject;
	b=d4TH8il1h5gCTJXoUM/mPlKlK8Ey8cpazLb05n0DiCWHoglimzSCkH8zDIl+pY74D
	 bgEve1HY/zaOy9FBUd67kHMHdxxQMWjd9Bu7aoUeJIwdPEC16dCy8iEq5fuNa6X858
	 fw4cQgaQO1G27rLGpPWNNTliQjZcqw+LnSZkQ685cUSHqTdPbYIwEOa2iSgGcAmTa+
	 nRNDASEx9AdppN28ycTuVcbsLO/1TJlP6lX6RH1HAgRwwliUWtYxjnPLB9XINKgCJ2
	 dTm5FcCiHhqiaM7UsItnOAKUKz7iHYPdJRtBGjo3bsq55nu7Wr/z8QLZk7diUgXzUN
	 EUPtdbElLEHMw==
Original-Subject: Issue in man page memfrob.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000215DD.0000000068AB264C.00139470; Sun, 24 Aug 2025 14:48:44 +0000
Date: Sun, 24 Aug 2025 14:48:44 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page memfrob.3
Message-ID: <aKsmTKERf0sCMlSX@meinfjell.helgefjelltest.de>
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

msgid ""
"B<void *memfrob(>size_t n;\n"
"B<              void >I<s>B<[>I<n>B<], size_t >I<n>B<);>\n"

