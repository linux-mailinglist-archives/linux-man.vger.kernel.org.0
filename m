Return-Path: <linux-man+bounces-3895-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D476B8CCF3
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 18:27:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CC4C1BC0D5B
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 16:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA07F2FD7A5;
	Sat, 20 Sep 2025 16:27:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C262F7AC6
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 16:27:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758385643; cv=none; b=Ftc+L/IaYmHIW6nqoBzz93UsmbE0W6mxoHcgQjLhFV3Z1HbQ72xO7qpFOUALmyQiMkAltudZ9AqZPdxV+ClsIko2rnGAXrRiKye+t23/U1JpHnOZeZFdqNaVNhlOVe4ftJo6nvZ8jo0dtwA1vve3BFJ/wOKyL2Da5RLWDvbIw00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758385643; c=relaxed/simple;
	bh=9kJVgzLPn7o1GCPNH5sW14jepC8U0/y2akpV3f/hV18=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=PfBT8iWnXmzk1fSREE/sOJJMZUcA2D0+fUuZzGSB2dZARIs33mlNJexLNHNiFaa06mCZQOUCFYMdNsFoEEhPpMzn8AyN/x8BQ705/ykG0NFHhu4SlpNwi/OfmT6l9wi6ZU1xm/ReMGgsn9l67evXpBzmbC0He1njD6aTwqoHpdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Received: from mop.sam.mop (2.8.3.0.0.0.0.0.0.0.0.0.0.0.0.0.a.5.c.d.c.d.9.1.0.b.8.0.1.0.0.2.ip6.arpa [IPv6:2001:8b0:19dc:dc5a::382])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sam)
	by smtp.gentoo.org (Postfix) with ESMTPSA id EEFD7341FAB;
	Sat, 20 Sep 2025 16:27:19 +0000 (UTC)
From: Sam James <sam@gentoo.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: coreutils@gnu.org,  linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
In-Reply-To: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
Organization: Gentoo
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
User-Agent: mu4e 1.12.12; emacs 31.0.50
Date: Sat, 20 Sep 2025 17:27:17 +0100
Message-ID: <87zfap144a.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hi!
>
> GNU coreutils manual pages are to some degree incomplete.  I was told
> today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
> moving the maintenance of the manual pages of GNU coreutils to the Linux
> man-pages project, where I could take care of them, and improve their
> contents.
>
> I understand GNU's stance on manual pages, and that you might not be
> interested in improving them much, but maybe you're open to them being
> improved elsewhere.
>
> The Linux man-pages project already documents the GNU C library, so it
> wouldn't be extraneous to also take ownership of the coreutils manual
> pages.

But GNU coreutils isn't Linux specific.

