Return-Path: <linux-man+bounces-5083-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKzkH75ii2nDUAAAu9opvQ
	(envelope-from <linux-man+bounces-5083-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 17:54:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B224311D74C
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 17:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 146013007B8C
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 16:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE5BF320A04;
	Tue, 10 Feb 2026 16:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pobox.com header.i=@pobox.com header.b="t8JnTOZS";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="COv2eoo/"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a8-smtp.messagingengine.com (fout-a8-smtp.messagingengine.com [103.168.172.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72DC531B825;
	Tue, 10 Feb 2026 16:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770742457; cv=none; b=Dp173+Nbd0+F72ksXSME2z/U0T/EnwV/Row0uQnZG5Nbbwozg5Ivdv/6/67TH05ufctPwM5mvPu1jr6Xf2JAbcqQRozt7SYi99rs+XPgq3A3fOON0hUgqJ5KY+kB+rDsc8eBq7++D2rIiD0woJXEnK8+RzrkkRWEQ13qOCmLBf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770742457; c=relaxed/simple;
	bh=44DLG//cjFdQLoG+ate1d5n67q1ZXT8PsDgUWIddpSI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=qouBVR29SxKQ753bVoGoTHIWH49jsjFdw+VacvK4gTNiwFGJLZ0nr43YLQV0e75dUGjDj4ExoMWiqb0hXHkJtO+L/mdUW2x74+N98Ma0n1nXl5nsY97GMK3KkEO6LZcRa+tzFozTJOLXBJRQnqe7daU0LIBODJf2nY6u/7SLEQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pobox.com; spf=pass smtp.mailfrom=pobox.com; dkim=pass (2048-bit key) header.d=pobox.com header.i=@pobox.com header.b=t8JnTOZS; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=COv2eoo/; arc=none smtp.client-ip=103.168.172.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=pobox.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pobox.com
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id A6ACFEC0567;
	Tue, 10 Feb 2026 11:54:15 -0500 (EST)
Received: from phl-frontend-02 ([10.202.2.161])
  by phl-compute-02.internal (MEProxy); Tue, 10 Feb 2026 11:54:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pobox.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1770742455; x=1770828855; bh=K7fOi+yDz5
	Aj2zgFekANyWV4XT+UOOtzqS54EicTTRI=; b=t8JnTOZSaeZKnC3tCPFQBRGW3j
	rpGcqw36gBGEp91NDwSsp4quQSmlKKHO5duvDwoUayRDBLcaDJGv1g8axGlP1Bfa
	bH9f0mXtkTnVTtHALI7MkKW0fxry131QpsQd+lDxaYHW12fl4LjA7uaAN6FbwV7/
	NDgw/aFFdhgMZ+x9oMhx5AbZ80DhIkQIY7GTfyIrORBXOmRvD4pg2memv5Juceo4
	ecfvt22M4ZOXpWPp8GK6ZfzY1Hc3MLi52h1hNgqUUQwiYMyMfj1/hvCQOZV9t9qG
	KRD3cO3gj3u+OtadV8jkVKu5PktM2vguABJKI4U05QTrgPbDeSqZdI54P1QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1770742455; x=1770828855; bh=K7fOi+yDz5Aj2zgFekANyWV4XT+UOOtzqS5
	4EicTTRI=; b=COv2eoo/o/GolOphugjishn3qKM44v4bbFZhPwWurCZfTYeUIDo
	4s+LwcXewr7l356Vgg+sgLOKrqTX+hmOOk9dGTK5hISk5t8Fc2GwhSQLew3+bhnM
	J/brQZEDWHPaf3ltrz9ISA/hKZsz4/DTacURNRo1uO1OiOHS0SGynjun4ea5Wdoo
	TYZdopBaxsxGzl1wx7CIdwyD627OfxqtNhwnUOnfL3xqAkQW6204Im6gOPLl5Lgo
	7FfqDtr6WNVmLVAmxhf4bkb4BtUWjnygK9jECfyZiXpRQ492MTxCwWT35PTdGHAR
	RBWLw8Fb26jwFyXDM3utBGxJcUHVmHgL/4w==
X-ME-Sender: <xms:t2KLaccJsuqo2GyAF2ozUXOClK1RAK3S6heoN5RUVnFCYM_-5rCEBw>
    <xme:t2KLafsdrP1XgU3fhMaGTOVRUkcJyZipIi_o1CdRWsBb9Unj_WHMi7kLt8ECrJx7I
    B-X7P_5hYkvPZYNI2l3WOZBjFuebmLO9wgSeUjRiXMx1KrdRlUpYw>
X-ME-Received: <xmr:t2KLadkCsifRy91OY25kHaNKzdrl2TcchnEmaCglO0_-kZpmikPQ37z552-DGUi60kTTdHe4I5O1h_vS3V_71tWqheHOk5sxdQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvtddtvdduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufgjfhffkfgfgggtsehttdertd
    dtredtnecuhfhrohhmpefluhhnihhoucevucfjrghmrghnohcuoehgihhtshhtvghrsehp
    ohgsohigrdgtohhmqeenucggtffrrghtthgvrhhnpeettddtveffueeiieelffeftdeigf
    efkeevteevveeutdelhfdtudfgledtjeeludenucffohhmrghinhepkhgvrhhnvghlrdho
    rhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepgh
    hithhsthgvrhesphhosghogidrtghomhdpnhgspghrtghpthhtohephedpmhhouggvpehs
    mhhtphhouhhtpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    epghhithesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehnrggsihhjrggt
    iihlvgifvghlihesnhgrsghijhgrtgiilhgvfigvlhhirdighiiipdhrtghpthhtoheplh
    hinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehgihht
    shhtvghrsehpohgsohigrdgtohhm
X-ME-Proxy: <xmx:t2KLaRyGYqetDgsCOVhqF9lhVEwnVTVqbXt5mu9Gm3XCul4ZLHoE8w>
    <xmx:t2KLafOJeQkkLJMDRH9kYllvRJvy0eMS9hC4A0wAxsrOvE7-eNMUhw>
    <xmx:t2KLadpPJRh6ZDRfSmkmj_WFYmg-KHw2EOkUppjp2idPISdtVDUSfA>
    <xmx:t2KLaYE2XL9pvx6ogwVJzy68Ope-NSqEiWFcpWGMHlFTudnaPi9bxw>
    <xmx:t2KLaTDIlhAjfZI1uAt2LUdmSR7LjuQZ0qr9i9EoX1kdU5MCtH2vdsse>
Feedback-ID: if26b431b:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Feb 2026 11:54:15 -0500 (EST)
From: Junio C Hamano <gitster@pobox.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: git@vger.kernel.org,  =?utf-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>,
  linux-man@vger.kernel.org
Subject: Re: [PATCH v2] futex_waitv.2: new page
In-Reply-To: <aYtAknObJpjszCaj@devuan> (Alejandro Colomar's message of "Tue,
	10 Feb 2026 15:30:59 +0100")
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
	<se6hm5gnd7cyjsby5q6pctkrws5ecp5gpnfjuy3zh2shd2abyj@tarta.nabijaczleweli.xyz>
	<aYpg1XelZBzpw4ZL@devuan>
	<rqshygydxwpfs2mi5cwxl3wvztgctj3nvu3y5bpo5s32owucna@tarta.nabijaczleweli.xyz>
	<aYtAknObJpjszCaj@devuan>
Date: Tue, 10 Feb 2026 08:54:13 -0800
Message-ID: <xmqqtsvozgi2.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pobox.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[pobox.com:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5083-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gitster@pobox.com,linux-man@vger.kernel.org];
	TAGGED_RCPT(0.00)[linux-man];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[pobox.com:+,messagingengine.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,messagingengine.com:dkim,gitster.g:mid]
X-Rspamd-Queue-Id: B224311D74C
X-Rspamd-Action: no action

Alejandro Colomar <alx@kernel.org> writes:

> Junio, do you still have this queued?
> <https://lore.kernel.org/git/xmqqy1o5op1i.fsf@gitster.g/t/#m6f42ff4f0cb2d6dd1d68f12a533d04c822b68a80>

Still queued??  Not very likely.

It is a topic from almost 3 years ago, so it is either in an ancient
released version, or it was discarded long time ago for some issues.
Given that it is from Peff, it is very likely the former.

https://git.kernel.org/pub/scm/git/git.git/commit/?h=15108de2fa0&id=15108de2fa0cd8f002a0551d14c84505a853071c    

That's v2.41.0-rc0~141 if my "git describe --contains" is counting
correctly.

My secretary will bill you for 30 minutes of my time and for making
me miss a meeting with external folks with this ;-).

