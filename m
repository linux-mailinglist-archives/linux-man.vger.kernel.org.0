Return-Path: <linux-man+bounces-4506-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 837EBCDC87A
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 221D73017D5B
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD90A358D20;
	Wed, 24 Dec 2025 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="fYujM/wY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8CC358D34
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587117; cv=none; b=f5XDFYDcxGiktMJYlbNtPK1SVK3cIg/JIZ/x3T31tqYHtWPbZqeCmGnHVwBgB/VFFBFIFynozVevNfV8vJDTdpLAErOmOSqb6njD+p2OzxUd/JhVYD91PlWZcYgN2/YV8XfRMtBlmZrUa2OdGAOx7meYN3qzIhdAfBZhtZ8LrsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587117; c=relaxed/simple;
	bh=ZTa/23rFfN6WQjrTARcV3uK2ICuk3DCtxj2xyF3fhIg=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=Q1Js0rg56nFndSOfqDbyIdTpxGNrZBzD24n80fFZRJGoy47EERNFTnGqRmEfk5Zx7u55Tqxvvs2HJI3I9LLltVjXdPuADytGRlt4qse9Zuyy55RPwAtcu+a2QknMNNw8doZNvuf3VXAq2b5QqBVim9wJdpy7w1TDk88gyIaLu14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=fYujM/wY; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=Ie87kIDQdkSDJ0krUKabm20dWbdC+ijku7P7vc0aGuU=;
	h=Date:From:To:Cc:Subject;
	b=fYujM/wYGU6s05yWLmJuPrGLszwAq489TKsKR3WDICnBPnn0oOGwJxmNlfcPV/Vxv
	 XZfTIcfa+yBdu/3KHC6VAp89cW2TVIlODds5CLAWxX4uHLg2JGW+/SdE4NkWUWOVgL
	 URNlQw8z/G5eGkGmXCcRYkhvu97muX6yrP7qUleJxq07F5m0G/uPLsX8khSamtn1CP
	 85olf9ItQtwW+i6jk7YgvNLEXm5Tctx0nUTMc83kK4tD1G9DGcWmfMh+gFFe8dCb7s
	 5PpWPFxN/o0pruFkZDyKGha8+UdZFprKU9O76OyIg0V+EU2W0I9Xop1damQbNWzBD1
	 p804pqgMgwfpw==
Original-Subject: Issue in man page  random_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A2D.00000000694BFAE0.00319925; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  random_r.3
Message-ID: <aUv64Cad8HHPpIyt@meinfjell.helgefjelltest.de>
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

Issue:     The function prototype above do not mention I<state>?

"The B<setstate_r>()  function is like B<setstate>(3), except that it "
"modifies the state in the object pointed to by I<buf>, rather than modifying "
"the global state variable.  I<state> must first have been initialized using "
"B<initstate_r>()  or be the result of a previous call of B<setstate_r>()."

