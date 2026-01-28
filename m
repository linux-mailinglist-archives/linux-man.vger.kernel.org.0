Return-Path: <linux-man+bounces-4996-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFdICXxeemm35QEAu9opvQ
	(envelope-from <linux-man+bounces-4996-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 20:07:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B31A80BF
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 20:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C144301725B
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 19:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1515309EE7;
	Wed, 28 Jan 2026 19:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TBg9D+Wx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650432264A9
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 19:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769627255; cv=none; b=TRjx7+Jsixc726+X8bZcQOeEHiXrUH+Qy5TgNoU0//MFzMABgKCW1L6dQxpUnNxYf8QfzJchRlmtGWw4OryN50vHNEn33hynl8ffxkId+0wQ2xecmu5hO8w+yF3FX8CpTiDfff79g267ltfd0U3w5/ItgNxAtS6S5dlHTuPdLZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769627255; c=relaxed/simple;
	bh=fblKLM7pmbqye4gnWH03KRyk4gtgpsu8qtS1iBFVjdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jBFoLihmTUbRa5YIXD5anHxoJOswiPSXEuaE8xPAz0oe6eNIs4tUo0cCZCnRl+gydzpUw9iytJiSMo1gAH4wxZhggZbevHbCOD7XgZLGLU8mdhF0YUjwuujfxJVSoW1n3qwEkBo/P9M7yOfitnAcsRpzJE8HrINLFfka3x7gIpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TBg9D+Wx; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-78fdb90b670so1708587b3.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 11:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769627253; x=1770232053; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pe/p93wZtye6cN1Os3LMj8fjA0J/VBiG0YBov/UgHSg=;
        b=TBg9D+Wxf8xclKOCzCLIL3xPPjjDEeGEGwK+7ZeZ+cigWzbZd3hO9/lVKtA47DfPsS
         zIntZkLfHXO3r8qI424ChgqryxS903KHEW2fzvKVkbGeIN/IB3vZ+PNulpQM8/MwLpLb
         4syC/yQq24BYLP8BlnfMtVo4sV8iQa/CSc2/txrW6y6lqrbjLWVT/vSTctjhsVE54D9L
         eGODqqxu4BFcALk/qfoHT6I6YO9c5ifw48WV31GX6ellsx+9X1yfCSRndK2LyBaENBzw
         AViA5pEZsmYCmOdbFXMF4RaB2YtTs1hQG/tW+8+QKqJgXg/z2dFYMHRc3RaYkLURqKg6
         +VAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769627253; x=1770232053;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pe/p93wZtye6cN1Os3LMj8fjA0J/VBiG0YBov/UgHSg=;
        b=Tb2Bi/Q7slM6nrXakzdG9P9jGcgveaQh4xX/3/0CnuEG6XjGCt4z+XoUPedcn/lC10
         2BJqw08Tahbe80PBj6hda2HOl7dQYg49+Ytdj54FUX0r2W8RAXU2yNriQaRz2w6JxcH3
         8paA2fR+GyIOvsIoLZLTqEMuDHMlKz9fgmN7PRIb8sOVMtSNKOSnULDywGIojOe2auzo
         tKxRImiDJeGLolpvc/HIaqzMgL4g9PkogX756Ftni/WWaEbZZg1ycDPboZfiES+W9PN8
         PW7zjZgnIpq3JohlFXSKsBFlbkIwQKeJCVa0AolmkhNyxZEq8znO6dcWHLrIqPJGyWoZ
         vt7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPiKtXkfnRtZ5CVHMt2xuttI0xVID5prZUud1JMJ9OAjRQweMa6poE8e7aBrU1qp3GYB642IenZ+Y=@vger.kernel.org
X-Gm-Message-State: AOJu0YwgGnAezfsqBA2RlTBGYBnLzeOE5n8y/+umo0pnuBYLFmCaL9V0
	/gak1I5qgB4cSA3CoKuYI7Uq4KMDO4lyG0G+NTXWNESdDbAue5UUeGffWCN2oA==
X-Gm-Gg: AZuq6aLpNLIpODJsMaF9JVHiH5GlopC9t2NGemr1lXy3rj0B6vtSoN8llobbc7pjvUp
	sw+GZi5m/GYWDLS8LanVr0d9NvLTGoPg2pDqYTXNtzbEFtH18ixYIELKcRcYtQHKCLmvhvBKC1d
	CVWCukB3xqbhDYvbnJw2v5UCOKUK67BQ8esMXJhZ9ypW42nr47T3KGNiBpSvvrBZnN8a/Twnh7u
	+ZMExJNM9HSPlt3AbWHiOyIIwy8g1jl9PrVE4wq3KajWpoTKOqPMo8g6wZd8dfZZdCTGAVTcX0t
	TWQd9FDs/cXwbeC5JVVmq3PhObQ9MO8RALAowJrJcMr9hugIL9yxenB8PepOvnmmdjKph7RdNeE
	OROMUjeivwFGIIdvaGM1RvHO3IzXUqifd0HnoWVAsrN0jWU/bza0j8S8o8kM5jzLb7/sE0eoXM4
	VEdtYx6fwyWrU=
X-Received: by 2002:a05:690c:85:b0:793:b103:e746 with SMTP id 00721157ae682-7947ac1c82cmr49981067b3.36.1769627253304;
        Wed, 28 Jan 2026 11:07:33 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7948276287fsm14284677b3.1.2026.01.28.11.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 11:07:32 -0800 (PST)
Date: Wed, 28 Jan 2026 13:07:30 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <20260128190730.aylqwn55b6bo63xi@illithid>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
 <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z3gzocaax73s3wq2"
Content-Disposition: inline
In-Reply-To: <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4996-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oilshell.org:url]
X-Rspamd-Queue-Id: 95B31A80BF
X-Rspamd-Action: no action


--z3gzocaax73s3wq2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
MIME-Version: 1.0

[whimsical response; ignore ad libitum]

At 2026-01-28T17:52:15+0100, =D0=BD=D0=B0=D0=B1 wrote:
> You wrote it confusingly (if I wrote it like that it'd be on purpose;
> I doubt that was your intent but that's how it reads), so I
> isomorphised your program into third normal form:

A) I believe the "correct" locution would be "isomorphed", by analogy
   with "the party magic-user polymorphed the gate guard into a toad".

B) If you, or anyone else, has a well-defined hierarchy of normal forms
   for shell scripts, I'm (non-whimsically) interested to see it.

   What _does_ normalization look like for a non-decidable language?

   https://www.oilshell.org/blog/2016/10/20.html

   (While the foregoing discusses GNU Bash specifically, I have
   read--but not seen a proof, and can't promise that I'd understand a
   proof if I saw one--that POSIX shell is undecidable as well, the
   "alias" feature being a sufficient condition to produce thus.)

Regards,
Branden

--z3gzocaax73s3wq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml6XnIACgkQ0Z6cfXEm
bc6fLQ/9HVu+IzZggQYaMdqtg2i19ojCG3N8iEBYxL1zSEzpKVQED6V2tWyfRcvi
j/jsh+fVVeZ3B/6ZvEd1uTEuyKSN/qlGfrXbuvfxTTZM7u6/16OUxIYxFMetWf/B
OoPY2aaW/xtgGDJDJT1srX2CIrETJy2AFYgtSITlYFRslBZO6Rwsr5/0PqS97cbq
FoOUMLfWonYYJL/EdVMPwaQ8EXyyJrLxE60l1rWUlvBEuXGO1wcCPbXkQHSilaU0
KO8Wxs+CIRXStGOkFLlSlqFic4KSXI8UwywZKQUxpWu8IrbFmZMqYoo7M1fvoHll
VQsZ+N0Z8n8lrgjg/EmgqJTWzl5hlndQxNLzq+Kd84yBbiVqsjpRnOl0vz2Gu446
e322s6LeJCUbyQqPBfjJ/GMar4CFYkEDb57bggb9Qmjj6dDeicfACtnIVbk2c7IK
yWgHuKAu4leVA7For7hjQJET9xUQYiEBJfZDIAPlBBCC13jHVnwPAXvV2tk/qz9o
5HAEZ2O98G3+CA4quO+qF2yvBjYy7Wv1+LX5x2AXuLCKR83yGo2LlztOL8QItvbk
AODQ3ov7le9STGahxCLL/Fxm3CoBynwAFMrGUoJ+IxGt1tIolfhFfsdnLT5afWxD
HLBYrNdCFWH32/r5WXhpjm56MNktSylgiPonm6IR57L/8Vp797Q=
=g8Fv
-----END PGP SIGNATURE-----

--z3gzocaax73s3wq2--

