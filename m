Return-Path: <linux-man+bounces-1930-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5DB9D02F2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:46:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D617A2836A3
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42365148FF9;
	Sun, 17 Nov 2024 10:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="P2GzcWiq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA37D83A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840396; cv=none; b=blsbzfG/oOIi6BnyRgiwOEW/tUbFizC0XPUj9a+xIlwo40jXEqudsn9pO2Fw5Nv4Ilxnaa0t4L/lyu5S5esunFP1J5EKBtMxqp7onYuXGMyeMg3Bo4Y51hapFUAocq+X03x3cwRsKhun3S+XLmPqCdKWKFQsDWHCZKzsgpRjvVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840396; c=relaxed/simple;
	bh=jjlz6jX4C4zqbRAiSDTD+N631tGOMfPkx4dXDGG9iJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=GBNFc907fzOD+dHJTBN0/KHulEMg+uFaQ6wvTW1g6ItAtzQ+oK52op4mYw20M67svs/zyk3EWy4v9BJy4lIYGmmTE5z7L2ywmC4dfQJfrZMWHLegVxDTp/NJ54wZVLxQVczn1mjkWs12HVJ6XZc1nubO4q7aIhFDgHJ7fVyNeVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=P2GzcWiq; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840385;
	bh=Skbf2BnHGfxJFy7GEv3Cpk+zeiG5CKl6I4ocKlQaeHc=;
	h=Date:From:To:Cc:Subject;
	b=P2GzcWiq9pBusxhuBOy9cC7IfGmpPARVG4Z8uURJ88pY2j6cypK02Dr/jjzyt07D4
	 RTTccyGJlmu04V8ozrbUGAJd+JjRHf0F+RnmLo0lXLOKsQbFYiTeBBbgwouXkZxL8c
	 wZQknIhk+aqSEJv4+Te34RaSaxrp4s7IP4/cbavarOIFm/yFISP3PSHergsEStCIXA
	 g9+5u1o3J3seEaduMdWxPajWJKJEIvqaQ5Aibmr0hgMglPdLS9dDDQxiE1hZvE+lex
	 o3tP49Yi52YAjyIYZCawz1Uyg/CrM7an5oQon/ogPqcZPsliKpjfQxoKt/mrHY7HZ+
	 dogtK6iUCE9gA==
Original-Subject: Issue in man page tzfile.5
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021680.000000006739C981.003FC58D; Sun, 17 Nov 2024 10:46:25 +0000
Date: Sun, 17 Nov 2024 10:46:25 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page tzfile.5
Message-ID: <ZznJgShtaSiy5wle@meinfjell.helgefjelltest.de>
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

Issue:    timezone → B<timezone>(3)

"It seems that timezone uses B<tzfile> internally, but glibc refuses to "
"expose it to userspace.  This is most likely because the standardised "
"functions are more useful and portable, and actually documented by glibc.  "
"It may only be in glibc just to support the non-glibc-maintained timezone "
"data (which is maintained by some other entity)."

