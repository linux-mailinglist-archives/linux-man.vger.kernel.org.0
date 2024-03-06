Return-Path: <linux-man+bounces-549-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB1F8743F7
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 00:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 107031F216E8
	for <lists+linux-man@lfdr.de>; Wed,  6 Mar 2024 23:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EFD1B5AD;
	Wed,  6 Mar 2024 23:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b="eyWK7Rrp"
X-Original-To: linux-man@vger.kernel.org
Received: from pulsar.hadrons.org (2.152.202.106.dyn.user.ono.com [2.152.202.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF2E41CD2F
	for <linux-man@vger.kernel.org>; Wed,  6 Mar 2024 23:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=2.152.202.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709767857; cv=none; b=JLISVR/KsaKLGHDNvsGa2VBHyOQryBwON/lV7yKAx7xvo9UEcx6KEzfDIMRfh+ly8ixM/cJJ+8TA17LZhbjb95Z030C1HWOAqWcX15AwUuCfQZ8nDT6ikiJi3Ip/pIr1HlZMsPn6eejwCVlOAmz5sKAzD6LhAa7DaDrPtBMSjv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709767857; c=relaxed/simple;
	bh=xX610jrQ/9So6h4c2gsR6zUXEMfOeMYkvCuyoBp6T4s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=M6oKNizNZZEDLJun6+dxyei9t0z1If8bZ6D4sv35TlkGMBEZw64BP8boDxqNt5HDtF70ze+Rxl7nfTT0OtYO21xhCaggoM4c839EpdoU0jDpuJ1WLNCDQQHXYlKxHbUdfWDFlFQrm60ITE/8p9ljU/8njtQNvMqm65BwG31H61A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org; spf=pass smtp.mailfrom=pulsar.hadrons.org; dkim=pass (2048-bit key) header.d=hadrons.org header.i=@hadrons.org header.b=eyWK7Rrp; arc=none smtp.client-ip=2.152.202.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hadrons.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pulsar.hadrons.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hadrons.org;
	s=201908; t=1709767378;
	bh=xX610jrQ/9So6h4c2gsR6zUXEMfOeMYkvCuyoBp6T4s=;
	h=Date:From:To:Cc:Subject;
	b=eyWK7RrpAoto36zR6dZbcdw0ZPnBWN2eiqporbErqgtOcyoVF2uthwSOwgknk7a/T
	 k6O+12tQhKEK0lJqRzVD+G07fIcsevqI+v2rsjXZUL8b/1MorfyZ+/oat0D37NsZKq
	 H7huiCCDKwQgWgzrq8qHuXACYvPWpndRAvceQU3hTda9VvGVAEJGCIMHoNiPuwvsIC
	 D5+Atku+BVPR9ta2qfoWke87WhXDx6rUTtbkPvMnH4+KixxjaEiJxoZWwo60EOKvp0
	 6Eo/EshnAF/xROYPl6recyIUpHgA9pVb8VWqcwh5LD0NwWGLqzLM+7GOLFrakKUnYK
	 3JSesSmTOWq+A==
Received: by pulsar.hadrons.org (Postfix, from userid 1000)
	id 274C5122F1E; Thu,  7 Mar 2024 00:22:58 +0100 (CET)
Date: Thu, 7 Mar 2024 00:22:58 +0100
From: Guillem Jover <guillem@hadrons.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Order priority issues for special 3type sub-section
Message-ID: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi!

I just realized the other day that we have currently a problem with
the order priority for a couple of the manual pages in (at least) the
3type sub-section. These pages have been provided by libbsd in the
3bsd sub-section for some time, and that sorts earlier than 3type.
This has not been a problem for the section 3 pages, as then those
will always be preferred if present over the 3bsd ones. This also
means I might be reluctant to add new 3bsd manual pages related to
types, to avoid future occlusions.

I think this only affects timeval.3* and timespec.3*. But I'm not
sure how best this would be solved though. :/ Hmm perhaps thinking
about it, I could rewrite these manual pages and only provide them
for the TIMEVAL_TO_TIMESPEC and TIMESPEC_TO_TIMEVAL macros.

But perhaps this is a more general problem as «t» sorts pretty late,
for example later than «3cxx», «3ncurses», «3perl», «3pm», «3p» or
«3posix». And ah, now I recalled the SECTION option in man-db, which
on my system already lists 3type before many others, but I guess the
problem is still that unlisted sub-sections get folded into their
parent section, so perhaps some of these need to be proposed for
addition there. Not sure about other man pagers though.

(BTW, I very much like that these types are provided on their own
manual pages, and their own sub-section, thanks for that!)

Thanks,
Guillem

