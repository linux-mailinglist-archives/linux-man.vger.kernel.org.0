Return-Path: <linux-man+bounces-3812-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8156FB3E930
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 17:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86076166443
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE54F346A12;
	Mon,  1 Sep 2025 15:06:58 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alt2.a-painless.mh.aa.net.uk (alt2.a-painless.mh.aa.net.uk [81.187.30.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE16343203
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 15:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.187.30.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756739218; cv=none; b=tJwfTR9VhMrNGdSLLMLH3k6x8tziE5LiOxOFqaQkridBPqKwV7v6ZnjeG7YX7NDKI5HIPZtJ0cXvPPajZmC/jRyKETL2Ir6VXFTEeLci15f0y0FS2TODh1uzuKd05m9VNZW9DI8o2Jjyec0lOyEIJmPjAH45IYLKC5jk1D5vYEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756739218; c=relaxed/simple;
	bh=6nNdQupWdZ5oKfhUv6HQchy0YcUMW4LGLbpL+HsYxQg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=EygEL+oV2WlDaQZ1hwok84ZuQYQHzfaZUVO/KDtRiCyMgGU5GX9A4bkQ4vzXAmQ2POb9RpvnUSIjoXzyWPFu2Z/6serysFHhvAKc5kKiTi6/2MPUEZY72ixSBiS2Z33awiDB/tvQD7HjFmpQMvYiBMC3R0fQkeIHnqotdziIX+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org; spf=none smtp.mailfrom=offog.org; arc=none smtp.client-ip=81.187.30.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=offog.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=offog.org
Received: from cartman.offog.org ([2001:8b0:83b:b53f::a])
	by painless-a.thn.aa.net.uk with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ats@offog.org>)
	id 1ut67R-002YK4-1l;
	Mon, 01 Sep 2025 16:06:53 +0100
Received: from ats by cartman.offog.org with local (Exim 4.98.2)
	(envelope-from <ats@offog.org>)
	id 1ut678-000000007oh-2P7F;
	Mon, 01 Sep 2025 16:06:34 +0100
From: Adam Sampson <ats@offog.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>,  mario.blaettermann@gmail.com,
  linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
In-Reply-To: <cydmigk4amlt62bjeircdfzgjzajlsoaw6pje6z5te7fu4a7bd@upahclev5v3s>
	(Alejandro Colomar's message of "Mon, 1 Sep 2025 09:47:29 +0200")
References: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
	<cydmigk4amlt62bjeircdfzgjzajlsoaw6pje6z5te7fu4a7bd@upahclev5v3s>
Date: Mon, 01 Sep 2025 16:06:34 +0100
Message-ID: <y2ajz2ii551.fsf@offog.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

>> Issue:    According to above, a domain error also occurs when I<z> is a NaN?
> According to what exactly?  I don't understand this report.

fma.3's RETURN VALUE section currently says:

| If one of x or y is an infinity, the other is 0, and z is not a NaN, a
| domain error occurs, and a NaN is returned.
|
| If one of x or y is an infinity, and the other is 0, and z is a NaN, a
| domain error occurs, and a NaN is returned.

But the ERRORS section only says a domain error occurs in the first
case. If I'm understanding the glibc code for _FP_FMA in
soft-fp/op-common.h correctly, it looks like it raises the error
regardless of the value of z, so in both sections the "and z is ..."
part could be removed, making the two sentences above identical?

-- 
Adam Sampson <ats@offog.org>                         <http://offog.org/>

