Return-Path: <linux-man+bounces-4604-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE3ACED90E
	for <lists+linux-man@lfdr.de>; Fri, 02 Jan 2026 00:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D74A8300661A
	for <lists+linux-man@lfdr.de>; Thu,  1 Jan 2026 23:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AD51F3BA2;
	Thu,  1 Jan 2026 23:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SKkH5G3l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f68.google.com (mail-yx1-f68.google.com [74.125.224.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEC71DC198
	for <linux-man@vger.kernel.org>; Thu,  1 Jan 2026 23:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767311596; cv=none; b=pF8SpIh7LWQ15PNIaYMep8oXr0h7PD5nGQtZEYkSEpX4xlIdNeRTWQPxKsmXkccho270C3oqpzD3Ge2n4NiZ9hBWpXTAGzycsyB7I6XX7Lowrv3OYaOoVuNGgtD3M0D8XBJLNAvEydAjmZaskPfgVm/HK8lafYt0j4eQ1tKIzek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767311596; c=relaxed/simple;
	bh=fCDQAwinwDEXCkX1wISqv6A4ab834ji+m7xJhqCN0pE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j0vwKtco/hH4sBE/YvyN/sC4+Rmy3H+G4SYqBpRXrRA+f87uLc88D/eZkeb2hV2zrnliJx1iL/rY2tq/BgJARLjw4q2PgW1598ySMqTkvctz3S1QE84uh2vq89m5KBJeDZfiP+6j4/eOizfmA94XI8jquImy3OR5abVCaf2RSTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SKkH5G3l; arc=none smtp.client-ip=74.125.224.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f68.google.com with SMTP id 956f58d0204a3-644715aad1aso13514607d50.0
        for <linux-man@vger.kernel.org>; Thu, 01 Jan 2026 15:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767311594; x=1767916394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nmFpeiLnSM66PA4ml5N/9Rda29T7nZaDiLFmvLkAXVI=;
        b=SKkH5G3lSpVMVIJyxZcML+kv8K/vUQs7B7Hu2AXMoP+Ij9eEgGxa2pOzi91UnlyvBd
         XVf92guYN+th4z6pjh6M89OAiWCqch7xII5ATzQjaNm11QJvz7/JGAXPOmakgEPpheM9
         e0GK1GQYm5N7CUPJvLwFI98u+53Y4B7N20Z9G3VfjqlnfanrCpIVE6FqK9ewHC4jaaeQ
         q7VR44DmWpNnZ61f3/5wYFI50QjkQvBRYou2xL27657440CwFUkyWkszcwBfgR4O931S
         wO5CMj8WI274gtAxVr5gA2tZymOND76aCkp7tG1eeG0f4mouVPg1dPmY3pDbxt0asuYZ
         /r0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767311594; x=1767916394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmFpeiLnSM66PA4ml5N/9Rda29T7nZaDiLFmvLkAXVI=;
        b=GJhU/Y8BH1WZ//NozWN9b3m5SHm/IKlObjEQgvUNLXJnMRvrDuPCsnY2ABzYcZlj0s
         Fvnd+aMZ5KmhuMxT8j+OqS2xpiJEqT2kI9s/W4ly6GlWAuH3FiYApPdAzx2RWfJWBt5h
         q6RTX9Y11w8GRHvysIpQ6wT2Bx837zlTGU/NtKf3i5zcWnF+2baU1jwHHRzYW5NXR3xS
         6bIIRtniIJ43usows4kCU++hwgkqj/AtiGlb0sQcsAg0qt8CgemsvHgIBFu0StEa1kLQ
         p62obmtSV8td295Bo5mjXczdJB0ZaLk7zXcXe9TZ5IrGGOl93AocPRkvaCNqARN6mNNQ
         YzGw==
X-Forwarded-Encrypted: i=1; AJvYcCXbhx0BJN4TgJWUpGJhcMwTfHk4ESXEzfENF3a3S+5m6DOXt1I6v/oUJgw2K5olUui1GFCWG/hEqF8=@vger.kernel.org
X-Gm-Message-State: AOJu0YyRxDJT1TrvfXclKs2YjYrcjyW+SOUZVasEq4dNr+MMC+3Ik+X1
	0z5sqKSnCs+G9s5OD9/uWh8Rh6hObGL1U6q9fngsabWY+uUEg2J45bLGErAE5S/M
X-Gm-Gg: AY/fxX5YSKemMVWBh+hZzLUCT8/awdDGtX7W39e4uZECNd62+oAlhlyFW2Ub/r48d0Z
	Aq0HmfI6wDP8TOYH91yJegv1U98SosbOc531V8BpXwmUE3HxkOcqyTGlkrQ3kAtsXVBn/6qhvgN
	V3sDD1svh4rWYnsV9OOn/Oc14y9MXdmvsY9JXGGZAOklKb9HT7Gqm+yUlOgEhBl8Yo/kZvPsmhi
	nHCELo2Nqil17IBl9zawBbIErfmgB5dX9VRfqHPZpNBAPrAYzSrzeEWYyfxbm9IDZFSg+8o9SRG
	Vy7n87VggN+m1hwPIPaIRt0DrmQSyZHpZXFV9YYhT+BUlZH39F8YyYsWhhn3JvGfyEywQvl/WrD
	XGLFDR3rZos0w6Osv6qg+MRO98nd0eLayG3OeLqp2N6jgLYDfW+UAl5JfR+iXMYeDMecwV9a8wb
	3rnA3pHsDFauk=
X-Google-Smtp-Source: AGHT+IFt7T3A3DqL4M2REZZgrEhrkHAG0771hdmLmgj/R2bJAWBbzr2AasXA7dVLPMhbWX3kgKA1hA==
X-Received: by 2002:a05:690e:1187:b0:646:44ef:cede with SMTP id 956f58d0204a3-64669dd8b9fmr27373627d50.39.1767311593919;
        Thu, 01 Jan 2026 15:53:13 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a92d94asm19215635d50.19.2026.01.01.15.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 15:53:13 -0800 (PST)
Date: Thu, 1 Jan 2026 17:53:10 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: origin of alloca(3) (was: Undocumented systems/standards PWB and 32V)
Message-ID: <20260101235310.fejv4d7uvft7unzt@illithid>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
 <aVZwLk0RWoyRjL8N@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ajgpl5goiko7e7jp"
Content-Disposition: inline
In-Reply-To: <aVZwLk0RWoyRjL8N@devuan>


--ajgpl5goiko7e7jp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: origin of alloca(3) (was: Undocumented systems/standards PWB and 32V)
MIME-Version: 1.0

Hi Alex,

At 2026-01-01T14:17:35+0100, Alejandro Colomar wrote:
> Hi Branden, Seth,
>=20
> On Wed, Dec 31, 2025 at 11:46:32PM -0600, G. Branden Robinson wrote:
> > Hi Seth,
> >=20
> > At 2026-01-01T04:45:28+0000, Seth McDonald wrote:
> > > Starting the year off strong, here's a classic bug report.  The man
> > > page for alloca(3) lists two systems/standards in its HISTORY: PWB and
> > > 32V.
> > >=20
> > > $ man ./man3/alloca.3 | sed -n '/HISTORY/,/^$/p'
> > > HISTORY
> > >        PWB, 32V.
> > >=20
> > > After some Googling, I assume these are referring to the PWB/UNIX and
> > > UNIX/32V operating systems, respectively.
> >=20
> > Yes.  Most likely.  I have some remarks on nomenclature, orthography,
> > and history.
> >=20
> > PWB stands for "Programmer's Workbench".  It was a flavor of Unix
> > maintained and sustained outside of the Bell Labs Computing Science
> > Research Center (CSRC) in Murray Hill, New Jersey.  The CSRC is where
> > Unix was born and where famous names like Ken Thompson, Dennis Ritchie,
> > and Brian Kernighan worked.  Eventually, the flavor of Unix produced by
> > the CSRC came to be known as "Research Unix".  In the late 1980s the
> > CSRC decided that the Unix system was an unrewarding vehicle for further
> > _research_, and shifted its emphasis to Plan 9.  Over time, the Jack
> > Welch-ification of AT&T[1] meant that research at Bell Labs became less
> > ambitious and eventually halted.
> >=20
> > PWB came in at least two revisions--the original, retro-branded PWB1,
> > and a second, sometimes called "PWB/UNIX 2.0".
>=20
> It would be good to check in which one alloca(3) was present.

There's _an_ `alloca()` in PWB/Unix 1.0.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/util/all=
oca.s

It's not declared in any header file I can find, and as you can see it's
written in PDP-11 assembly, but it's there, and appears to do what a
modern C programmer would expect of it.[1]

It appeared to get stuck into a library called "libpw.a".

Static, of course, because there were no shared libraries back then.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/util/mak=
efile

Close enough?  :)

Regards,
Branden

[1] I see some other familiar stuff here...

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DPWB1/sys/source/s4/stdio

--ajgpl5goiko7e7jp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlXCNwACgkQ0Z6cfXEm
bc5cZQ/6A2myKsq/8qhbOCu48lSKWrFn0aj5C0A6krFVZYOW60DbMy7CZWqhXqde
McIJ2kxDfHAJH/7d1czsnMhTe5N/BibufY4Syog8TZqRBkNt53yP4m2O5g24MEyi
2tu7xbR5XiGOcgvX14zYmNkQasIC45iYEMI/n26yjEgtypHjs7YYjvj+PovTL/xG
U0mIFbxcEsMNN+FMZECJnIFWbyT9DcRAdd5W1Uiu1BsAA5SkRx/7u3EifB6AAgQg
PJ2wY6TFTBEp1lPlql65nRP8EqejJV8Dne92uMKHdDspz2AxSA+N9eW/jpJTXUg8
EzJuUk3d9i/NKHjKv4TkAngfs91CMvTD/d4GOxtjpk54rLX/kVXdtpciuuyI1uek
PW0AIJH59B0pHhMhvUQCFy3b5w/ok5EclVcqFRH0asqVcwEWErZL8lpmMOJBnowA
8jTvC2UxegMNDprROC0Gr5KEq20yo31pfNb7BrV7N2bxCKdVORBghqQDvGJf403a
7CjDk1dDfPpzAROf1wgcdikNnKZs8PUrK3cXlZqS8gzdhys+lg7uZJ2d/JEiLTpc
oUaRq9jjdCef4ny2XpRR8NvqEdRo/UYmI9q4JiukuT3COzxjdDK8VGH7kmroiPxo
Nyb3A10vkhPrFQMYtwyYHaFbm8qPH3pMxqD+9ZJjm1j7VAxZkYA=
=698J
-----END PGP SIGNATURE-----

--ajgpl5goiko7e7jp--

