Return-Path: <linux-man+bounces-4800-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AF0D19B6B
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 16:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1C55303D69A
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 15:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5755C2D876A;
	Tue, 13 Jan 2026 15:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VOQMS7ug"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f66.google.com (mail-yx1-f66.google.com [74.125.224.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFA72DA75A
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 15:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316717; cv=none; b=r+nL2HhWhLUdZulEWc2bpJs8FMLLinHsW1zK+u6G7oTqu1hjG7lLTLvi+YrjmnkDr9J8bsmM4YgRdl0sgzWIpNqVFU344sCDyhgL2/LH9VTva4GMmcVR/t8GktR5HzlAetAB3pnXJVj92QIz2IRCfOQEaxcx7tluwNDbsF+SIW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316717; c=relaxed/simple;
	bh=IajE/RDiMSZDaZL6Q9VmcgOd8JM7GhITwbxAZ69U9lk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WW2hWndWSVXde6WZTNq6+NdrpZymDwZN8hMKShvSCAyKpyIqIcsONrWH7vD0XlVR/KwpJ1X3/h0l8i/2DJWldKINnpZ3vXwsMSo/lmV3ybVch/hG4JqmFLCusVqCkCGG7F2UI8ygIkg0xNg/pUearUQLik3WF38S4xvGN3sd6t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VOQMS7ug; arc=none smtp.client-ip=74.125.224.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f66.google.com with SMTP id 956f58d0204a3-6481bd173c0so1835879d50.2
        for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 07:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768316715; x=1768921515; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0kDbV7EO4CDUad3xRjXJRBiYGHlez/VaykiXlOPqSMA=;
        b=VOQMS7ugiaIfzJkVX9N+phadks6DCLrxK55anXRwW9XgOmUBEP7YIc87h/iWW0Pthq
         oV1JkJZAn8bWAIwHEILvv4sHE9dtQIjLYQIA0+zCC0BsRC30j8Lu2T15oir199ZCx9N5
         3nZlC+cOT+5PTHIWQo8562YhEM15+1Ed0a1l9t6Sc54gqeXKmpQKItroMnVPDcba/UPw
         9T+tYax5SJxqt4hx3sn6RlESzFaS0DnU92znkIxlrV6dw+Gm+DSeWYYyNruf5Hgh9bqp
         ewzecWSxowaGheEvMW3YvQv1Np6gBM7xWvWTuUvRcto2tUoEDBovNFmnNUS6V77qUiTY
         OohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768316715; x=1768921515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kDbV7EO4CDUad3xRjXJRBiYGHlez/VaykiXlOPqSMA=;
        b=jRtbdAfACBH/MLbRkWkUOqzkyx6xsnhcVwm3d1JhYBpFbGrKVKRGF5ajs59eOnK8kR
         neFuUf/N/j14OIlz+V3+O+1DKPgGC7IEzNtQsXRDbf4OLVOwp3vnNQdcQ92DT6nHjtTl
         EJjPTcZwjc9NChJ6Typ0Xm7yfaRaILgaMbScbES5DaFGTcLN/t5mv6gb5EMmkX0SSIHq
         PvJsaU3N0BzegBJm0LNLZUG5lJlJZ2MM4owicjbE0vo8EbhDvpe3Z4JDZatFsGrn0d2z
         ri+NSty+o4D9PL+U0uD3a2YTNPz80BrFhADgdqOhou90ZmlArmFkfl73+ASrFmjBziyR
         rrEA==
X-Gm-Message-State: AOJu0Yy17LgeLSQXduuFzsTE0/OYvqjx20lf8Y80J3toPkpjuKwhGPLM
	+8uivD298xbPPjqojJMkuGjyeBXmXm03itThWZF87sO/WYz805IkVpPShNmFrpzR
X-Gm-Gg: AY/fxX5Bs7e8lUK5IbzA8F16E44JWbcJ7upnQcVTjPRBwMqXbA9xbvNWDyZmolDmaMO
	zkP/EDmEziek3bRt3nUs5ZBR3izG1/smqYwChWIsrk4fbRMdS/vKE8Mv+y3oFOJa21CKNnMsiqi
	9XXNG9aXPQF961UY/QzSELoUA5Ka+YNGEOG7SndtGG+i5yUsgDHezsrwTrFzxpSWuwAxwfZVOXY
	GIvz4ORwKyEY6WGzeq8H4bxWf6LhHDcZNlP4FeL/TTiE/k82IwrQgynQKb1DN33o96Lb+9rCRZa
	QgxVZaISapeobPRuCd2a2zrNBTQWjoKGu4RHTHgJVJNKxQYn8T9cxVAiRJEEvL0s3MDN9cTgwNK
	yL5BypSNkH43unQy+8BjzR8dcVY73y4vdqy+0R6TchAzKo5bNrHLstX0uzszpl958lmTomazlK5
	mu
X-Google-Smtp-Source: AGHT+IG5CKDg3eU1xRiEoR1orSGz3fHOZ0yR7fGakmywNXg28jaP+Ar6w5Lvmtev/hzTR3irHHJyLw==
X-Received: by 2002:a53:dd03:0:b0:63f:95dd:b2c9 with SMTP id 956f58d0204a3-64716c4535fmr15016640d50.58.1768316714532;
        Tue, 13 Jan 2026 07:05:14 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-790aa67c039sm80329087b3.28.2026.01.13.07.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:05:13 -0800 (PST)
Date: Tue, 13 Jan 2026 09:05:10 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Jeff Layton <jlayton@kernel.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-fsdevel@vger.kernel.org
Subject: Re: [PATCH man-pages] man/man2const: document the new F_SETDELEG and
 F_GETDELEG constants
Message-ID: <20260113150510.74mmegkp46dmd5uv@illithid>
References: <20260112-master-v1-1-3948465faaae@kernel.org>
 <aWZIQA3GJ9QCVywE@devuan>
 <14e88ee6ff3ffd671f579d103c53ebe98b4f92e2.camel@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rmdsxzqejgaw52xw"
Content-Disposition: inline
In-Reply-To: <14e88ee6ff3ffd671f579d103c53ebe98b4f92e2.camel@kernel.org>


--rmdsxzqejgaw52xw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages] man/man2const: document the new F_SETDELEG and
 F_GETDELEG constants
MIME-Version: 1.0

Hi Jeff and Alex,

At 2026-01-13T09:45:11-0500, Jeff Layton wrote:
> On Tue, 2026-01-13 at 15:13 +0100, Alejandro Colomar wrote:
> > On Mon, Jan 12, 2026 at 01:47:11PM -0500, Jeff Layton wrote:
[...]
> > > +.br
> >=20
> > This .br seems superfluous.
> >=20
>=20
> You would think, no? But when I remove it, man seems to stick both
> lines togther. I really do not grok groff at all.

Try the introduction in groff_man_style(7).

https://man7.org/linux/man-pages/man7/groff_man_style.7.html

> I'm happy to accept other suggestions on how to fix that though.

Here's the hunk with context:

+.EE
+.P
+.BI "int fcntl(int " fd ", F_SETDELEG, struct delegation *" deleg );
+.br
+.BI "int fcntl(int " fd ", F_GETDELEG, struct delegation *" deleg );
+.fi

The `br` request really is necessary there, as Jeff says.  This is an
ordinary paragraph.  The `EE` (end example) restores filling.  So you
_do_ need the `br` request here _but_ you can discard the `fi` request
to enable filling afterward, because it's already on.

An alternative will become available in groff 1.24.0; you'll be able to
use groff man's syopsis macros to set C function protoypes.

https://cgit.git.savannah.gnu.org/cgit/groff.git/tree/NEWS?id=3Dcfcfe1dde5b=
1752484dcd94dde1d65c65a5540fb#n409

Regards,
Branden

--rmdsxzqejgaw52xw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlmXx4ACgkQ0Z6cfXEm
bc5xkg/7BBDbjNPf32TMbY6bG1vVzw8rhaeMlPYLeSwOqHfajthPjHjBxLOeSeNh
e7UiV16/jBx4Uk5DqPRGeWqVvk5PBYlPhntuaqA0ZoIXMGg1A0+xq3CIUwagBdlk
Oll5RBs5Ts/OKz8pjYCZ8+xMpeTHJSri4h1JEN9x72vGShqdf9Bs5T6D5TpCZrur
Op3W4qY4GCdEkZ6MelhRzzGBm+PIu/SYTEqmsGatcJ1oV2Pcwl8hT1fkjW1nUdWt
JD3ufDc/CVojdLjXWUeCASJrXOSkuToksC6TGRu98N4oQspOUhojB+pdR7GFcGQN
RJ+c2m8YFp6owX+HqF0of9IfFcqWljTaoFnBncUS64P/kXXGFHWSNRXcc8EHyqfZ
q97X1pY75F2AGhZYUGyrp1Jx+uh1oaUO9ZsrfxUEjzfKO/F30d25BrNcLaTnJvIn
yIH7JxR92/OJsO33cgKw8LHxZBeAUHsFjfo1HSsnxOBm14ttwHFIbpeFyF8mH3zu
+SnC9VQTQapDp6P2TVnIbeOE/RbwHqpUXIJFsnBpVUvpRod3BWOtI0y8e2oFBhhK
QWlbBaLM7lMDFZNGHsYN/s7cIGnYkPGRz6KmjPUByPbeUwLPt7ZsB45QbPY5Jgcs
+PYgFjvGD7ATA7WpLXN0nJizH5Glg2OYmZGd1zbdNIhc2HZUuKQ=
=fSZk
-----END PGP SIGNATURE-----

--rmdsxzqejgaw52xw--

