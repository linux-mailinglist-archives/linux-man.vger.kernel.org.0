Return-Path: <linux-man+bounces-5649-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1p57BERsIWrmGAEAu9opvQ
	(envelope-from <linux-man+bounces-5649-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 04 Jun 2026 14:15:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F3A63FC59
	for <lists+linux-man@lfdr.de>; Thu, 04 Jun 2026 14:14:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=shutemov.name header.s=fm2 header.b="f onYTS8";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=foArchTn;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5649-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5649-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5AC1C30D4998
	for <lists+linux-man@lfdr.de>; Thu,  4 Jun 2026 12:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55343423A80;
	Thu,  4 Jun 2026 12:09:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C64B42B742
	for <linux-man@vger.kernel.org>; Thu,  4 Jun 2026 12:08:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780574940; cv=none; b=Uny0JB4qbQ7ig6PvbT7jdZ6q6ysBgUjfTcBmZX2y4oX/VY099Y5ugkzgBT8Ua6lcSbGVaook8YZK+BzXZYGfVdVra0NMXMqmBMggXsP1FIIisZ6ggcwHVHb56uV7RZPDPdhwbxw7wfOstUjQy/rN1tSmltAnl+jt7alfAkTbwoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780574940; c=relaxed/simple;
	bh=Up4s+WP/k8GKgTgGvMBO9pVq6pmjpWrNvdijgWP05Xs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NWxaV7fyKOrGMJ+eYKr/+rG/VtbKbueoxsTBapWp2GOgm1PKNa2Hw0XuRrrFb20AQUAZfR4tZCgHiM5m8AucIiyzbpwK319+Y9UNLeQInq2RFWUgInLAB9KoFXQ6MBq7FNYVg8H6MsTtFlPnkBpb7WFA+JzItf9Eh6xaFWcpnbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=fonYTS8G; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=foArchTn; arc=none smtp.client-ip=202.12.124.152
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 3F0357A0137;
	Thu,  4 Jun 2026 08:08:57 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Thu, 04 Jun 2026 08:08:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-type:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1780574937; x=
	1780661337; bh=SxzDdGArql93wl+UDTip4AmU9SdWM/mbV/Efiw72poM=; b=f
	onYTS8G5WUBWZfTiCbDP3DcEcuE97J0Ktk/ChzGZwcFIgtynCX79lY0cRZFEz7fQ
	1r80+80/JxgyQUJA1vgn1YlnsjlNzMBAlqZt5O8EtTzqEtRnQijqDUGH9qCiQF3K
	TLNAu/ETJulHhAUcmyA8KnQFxzca33TYZXTUagVaNnOF4WxbUapoDNompZVCOi0C
	9K667/Zf8U2aQ+sPMIX3oKiCksS2IUWgQt5tHFdqUDPZDaL0Q/cvLfQPDTS3Db/J
	YORhhSmgBMCFdhWLjGUu4h3jvOaLzV5Ctg8yNfvbQPT45/mH14zxYVIF37fC7cC2
	y1TIKEpoPnpdYTBWQPBWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1780574937; x=1780661337; bh=SxzDdGArql93wl+UDTip4AmU9SdWM/mbV/E
	fiw72poM=; b=foArchTnRc/UV/WiiEQTQw52VFqwKQI7f9dVTI17ZsOxATDOGUU
	IYlUc2IiRGlVHA4IJx5YS4o/CXZUZ5PaOAJiTouZxgLm07sA0mdwkix8c/mcyoBl
	sTfsRutqMeS5Jrj1TBXB8uGPAgKZCMiyax6O7B1EGl27YuvvVhAiCJ5N8PqwmhSg
	5PhAqfLAkXX4wHyJuwvbCSF/35s8ouEjstDVBRS4VHz3Cbh3kmzddvx9OdV7pkzF
	vFj9TRW2dm0AJARNNSYb9UGEV3vbEZFi+Q+zNXcTbUrVS1AU97RPkEXhFs81n5HC
	G/1NvS34gfmU0/nbbEMTadKmeuJO2vjrJkw==
X-ME-Sender: <xms:2Gohaouw1B_yZKHmaCMlGFrN4cfsprMFkoxBmkX2Neer0JrQZZ88Fg>
    <xme:2GohatDc4URR__ZxS_w92tRJ2jmxY1ZV-Y-fw3ENmbzgD38wfmuMLUxMVhh89ObxZ
    vRUxezf1vVYglurJ6FcNWs_bODIcVLGUuyovqEMzuavewEyUSxTfw>
X-ME-Received: <xmr:2Gohajbv-EqKDjLrEC6WA77TZQjxg02tsDU6UVleSBQP7uRWU7v-mhatTKLKuw>
X-ME-Proxy-Cause: dmFkZTEyVRy6AhRXjDucvybhkcH7HdvssV6wsU+WT75hdzOCdR8/jxXF7Hmp1JSEuezI8g
    hSRI4mCzUdC+jtxZJOnQkyUOhQN5ocyyfr9UBkjiWqnAFJmy31gbxmAf91CP7OPWJHKk6i
    I2EVkOyH7cuFYgAswWFNyUaX0Gj4wdPFosaKq3uT1Ko1hejU4mwr8moJ1jy8YO71kbNsL9
    0epn7Xn1IaMomabO7PGoMLq6xTyWn4suJBGbZy5sAdZPxpQRIpGW3CPsCtjctOUpcIcfGZ
    QBdaRD2VrUQMGs/JpRN0LenF7LjmW0ORhA8SBXDhNZJuAas0cQjkTHVizuHluVLo2Tf8K/
    4npwduDZZSOTc0C6pGJ0/epY7WhwleTLswy2iHMmSpxgZNTlTWIZJHWG7A1R0NPYD2IKm3
    Ki8Naee8zrEaaybxlXEJtKzLWNnJ9yTSdtTBM21YwkNCJpnlD5nA8RZR53NdBCpJruEnM5
    MVgWdbpB5OYB6bpSomCw3mr2teKthhc3sMPP/9U4m670/Lg+px62Kp5dyyamnmWOiHUk0Q
    9ekGHbaZwBm+5il4O0P/+isTbLUBCuP9uhkXxCLEVdt9IVmaPACaGGzbjeySZFiugupbJM
    WwZOZ9N00+B2OrNr5ieVW5q8iEhNgd5p5/1qv92OHrTxwdc037bRbv5vY6PQ
X-ME-Proxy: <xmx:2Gohan-9Y6BOIPDdueOEnNgxQj7OKlxCwDUYXGAPXTuiw6TTPpexdw>
    <xmx:2GohavhQHc6pnEQ2rBuPphrJYDi9EsTyngKTwcqNMo-EMEwTuRkZfw>
    <xmx:2GohaqiHYK1whEngZYhBQ9eK-PLqj1xlIgmDM9oEzptC2E9amAUWrA>
    <xmx:2Gohal7O1sA7w8ZlsdeFUP2-c00LtMcS71WK71kUWGhLXdsTj4eT_g>
    <xmx:2Wohal1S3eLkVsHmajPCHaE1ScmSBxo8zQuzHhr47PAPFOAdp8mJ7pov>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 4 Jun 2026 08:08:54 -0400 (EDT)
Date: Thu, 4 Jun 2026 13:08:49 +0100
From: Kiryl Shutsemau <kirill@shutemov.name>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-mm@kvack.org, 
	akpm@linux-foundation.org, rppt@kernel.org, peterx@redhat.com, david@kernel.org, 
	kernel-team@meta.com
Subject: Re: [PATCH v2 6/6] ioctl_userfaultfd.2: Reference UFFDIO_RWPROTECT
 and UFFDIO_SET_MODE
Message-ID: <aiFplwrPTalpnQqn@thinkstation>
References: <20260526134149.2831720-1-kirill@shutemov.name>
 <20260526134149.2831720-7-kirill@shutemov.name>
 <aiC9Be5oxT8u1Z6E@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiC9Be5oxT8u1Z6E@devuan>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5649-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:rppt@kernel.org,m:peterx@redhat.com,m:david@kernel.org,m:kernel-team@meta.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[shutemov.name];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,messagingengine.com:dkim,thinkstation:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68F3A63FC59

On Thu, Jun 04, 2026 at 01:47:42AM +0200, Alejandro Colomar wrote:
> Hi Kiryl,
> 
> On 2026-05-26T14:41:49+0100, Kiryl Shutsemau wrote:
> > Add the two new ioctls introduced in Linux 7.2 to the list of
> > operations supported on a userfaultfd file descriptor.
> > 
> > Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
> > Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> 
> Patch applied; thanks!  With this one, the full set is applied.

Thank you!

But it looks like I was too optimistic about Linux 7.2. Looks like it
slips to 7.3.

I don't expect any API changes in between.

How do you want to approach it? Do you want me to resend it with
s/7\.2/7.3/g once it actually hits upstream?

-- 
  Kiryl Shutsemau / Kirill A. Shutemov

