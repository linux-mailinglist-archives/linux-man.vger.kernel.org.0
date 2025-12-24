Return-Path: <linux-man+bounces-4505-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D141CDC8C8
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C892E30528F0
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 934E1358D39;
	Wed, 24 Dec 2025 14:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="aOf47uSr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D452E358D20
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587117; cv=none; b=R4GuQo+gMa5133EP/nTpO7+fJ3vUIu32cc7mIthOyfwqddfTIU3cKysJnCI2cbGGwWLrozoSz72uHMZoLY0RySN/QZ//JsVRXDGwdCPc0tnvQT2azVRqQuKgoqm7wR3Xb6M2r8gQtQ9UBNGae8a5ne0TRKu7gx4FZwUZNsXZZ2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587117; c=relaxed/simple;
	bh=Hm9QyO8+7kZiCJJ91/tl/deFYMmetb/1P1O0rS4LLMY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=VC9DMwfN2488Gn/zyr3N7QlBnCqLUnb+eBgh5yv3mEn5F8U72oZarHXU6KiGvgFdc8YNoXnPlCxZCGIwnJ3H4lkrIwAhjk5BKpaIhA7WEy8sQwLJ/F4/gYBEbnj3a46j3VZV10ph/beaTgUI/Cs/q3sN5uB5t03j6oetYkq4nzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=aOf47uSr; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587104;
	bh=ROrQ4EpiArQqRV4PqOLSM369eeSnABahWpYK6AtQVHY=;
	h=Date:From:To:Cc:Subject;
	b=aOf47uSr55kiI+/tunpvV0A8Igg+XExz0LVBiplAB0SxezulxDVXd5yVAKZouE17u
	 LSdJOjr3h6sD/00GT/yiK9tm2+TjgSfkKyxC54NZdy/T+T8bEfUIr3tAxXbRzBWlc3
	 +DAyT+3PzzxFe3w5LAjjFXzXPppRF2MIYP9SLYSIVw+y69P9nkRoX9dKxvmC/Fjyva
	 Fkr10DPT3K3Tq0LY3zPD4eZLGLzyKZs+1+obZ8kVFnY1keXtOpj7cfO9dI9enwQJeY
	 bo04Fa+6EJ6ZEOJ4kE03UDMbj1UtI0pESO/9DfXDoNQtHBA7fYmsCrzlnyCdkh3kZb
	 /TYQ/yaWIzrhA==
Original-Subject: Issue in man page  PR_SET_TIMERSLACK.2const.po
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020A27.00000000694BFAE0.0031990C; Wed, 24 Dec 2025 14:38:24 +0000
Date: Wed, 24 Dec 2025 14:38:24 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page  PR_SET_TIMERSLACK.2const.po
Message-ID: <aUv64Kcx3sZIGgDr@meinfjell.helgefjelltest.de>
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

Issue:     process → thread ?

"Since Linux 4.6, the \"current\" timer slack value of any process can be "
"examined and changed via this file."

