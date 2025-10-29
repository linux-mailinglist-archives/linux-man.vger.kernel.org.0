Return-Path: <linux-man+bounces-4221-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDE6C19D0F
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:44:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F7851CC319C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1035332EB3;
	Wed, 29 Oct 2025 10:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jYY4fVHq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB093321D5
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 10:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761733819; cv=none; b=VF1W8dPskiyDUxJ3P6AN0a/1T5PPS9hjukxEqIRHcNdFsA7XpudW2qcObXttcRWISAQykLkFnMOQPSF0U1xdfnP5oNBJH6YmMh2ea+6a0X4xVkq6FcL2lGyWek9DzQM/0PEnfQnHCMXWCsPg/uJuEiJ2vhwLB2D7ekHEBWqA+jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761733819; c=relaxed/simple;
	bh=Jrw6RZQ/AaKE7koIWgicvxezeEzT11malD+LJ4ujOA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MrdznPz8xYAlXcRaRg63q0OiTbLT3/o0Bv/bkXjtoUqlqKRHsXPRKS/Ta8l+coBoGXJR71THU+qW/4lRaxGsvWXudaJ95D5Cnhh5nkX7wzd0fwFZ08vbNemIvMq4+iCc8V24P5T1YwWtENfz4daWyFo0oFkOZMb3B1Z3zkZyXfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jYY4fVHq; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-71d71bcac45so73586117b3.0
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 03:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761733816; x=1762338616; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=goql7in4JBK2swUb6p9aVysVuyNKEJ4vZA4DKChjbGw=;
        b=jYY4fVHqwajrBbhcJgQMJ/IyR/s9hh3uZRbq/xDi8FktIwooDWmVyezo1aZ6wIc2v1
         IIH1r0FW0w4asXWcXIPCX/OWKAE+zlKA5GGSJkHn9zUKjXmDOoIT0I6mnPrOH5YqYp6/
         Kcss98zFZ9Ext0DyNrMQJGPQ4eN5pIaCA86Kt2H0UPuQWcSRxmiAMDEzPOK+7XclfoY2
         UD+r1cRWPLeg3jAkeVflyYBJqayxF295NkqQ4gppzdT8H3wwaRdqUtOOjJGIbM+gqJ2d
         jISJMHHG3U6d47Z8as0lOSLFqFTyoniAcVeODq2H/msdTBDozx/z8CnJ0mTWTHv6FJGp
         djHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761733816; x=1762338616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goql7in4JBK2swUb6p9aVysVuyNKEJ4vZA4DKChjbGw=;
        b=OyHyMbX4GnuUiPM8dpjbbKO0jLSi7uS8/WJRGWSfS50pFmAK5KqTl0NTX3kz9BoEBC
         uLjWVLYqccPxkNa5HTbCToB0GX27CYV2fg63uVQQzUX9knqb2MsWc7/r5mdXbLB7ZFnE
         TPOgTik9LG3gZgpfTTMVGWwjJuFgd2oGnYNYUvZSu6rX3VFaohVpAdDz6Cq30krsb/Nb
         Qy2C5UTXFQ5SRlhYPYC5/ethzkGlVU32n7aLyf0qQKsO0gx4x9Ilwfuway18MZ9OKY3C
         t/CtV2EGzzlu24yNbdaDwDcM6uknY/apY+aiJThznVufPrQfw40BhATp6TrFmnICE599
         Uwlg==
X-Forwarded-Encrypted: i=1; AJvYcCW1gTRQKzQBnr+anRzHci9VTwuLdHzEh8NXfUXBbv+RyPPokm42NS6IYOntWXTwuL5kjc0JHqyHyyE=@vger.kernel.org
X-Gm-Message-State: AOJu0YyeE7ZH4o02CWr0v12EuC60grzuw5iqp8X9ox+CvfTRePIL0uHY
	yu4vC9vlRzqv88DLiDj52b5ecE16cCBclrDxGfxXpzQegJqEaZRhOSNI
X-Gm-Gg: ASbGncvul/oj53ZWe+svNUEAq6LLr9thcXz/yl6460MdPcKWqZU43/RTV5KpBlZ8YP0
	eaNBD9yBHXkfFaGQnb+LvOQSpeqq+vzE+YyWqr8Vg8vcvo3Odjq1k/HmmTytn5S8KKGja2fAVs4
	ywoGBgGR0T/z7g8cRVSYoVhZB/ePjNUgAODc+IDYhthktQkn7qLi918sL++ro87jcNqpjoEF+IB
	wf5wMmKwlLcmFvzvjs3kmBl1THn7tLi8n+mmV3KY9k+DMhsLJAyjixVu7kpFwMQomuTUFFniOUx
	v4zk8MtRPPrLER8fY5+3riN0guws+1+HhNfnUBCzJ6sWrWLQILR42Md99aAFh6RKC2OAqlU8ckz
	RnUfmP4OEi18i9Oos7fVkUttDPG42lYUKcFCMYnkVRN0XzS29ZutVtODqREsf8P1Fid9Aczhn+O
	+K
X-Google-Smtp-Source: AGHT+IFrRoAQK6y4uum7b4of9yEEOPFqxsvp4xBijMEbE4TFs8ClLuVVXv7wLsO1hffPWUFiulULfw==
X-Received: by 2002:a05:690e:4193:b0:63c:f5a7:406 with SMTP id 956f58d0204a3-63f76e05ca8mr1984308d50.58.1761733815753;
        Wed, 29 Oct 2025 03:30:15 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-785ed1fb943sm35243207b3.61.2025.10.29.03.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 03:30:14 -0700 (PDT)
Date: Wed, 29 Oct 2025 05:30:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org,
	"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <20251029103012.5tswxzup6yyhmi76@illithid>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="czqxivmugxgywpud"
Content-Disposition: inline
In-Reply-To: <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>


--czqxivmugxgywpud
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
MIME-Version: 1.0

Hi Alex,

At 2025-10-29T11:15:13+0100, Alejandro Colomar wrote:
> On Wed, Oct 29, 2025 at 03:42:00AM -0500, G. Branden Robinson wrote:
> > The sentence is confusingly cast, but the problem is not as simple
> > as you describe.  It is common in English to use "neither" without
> > "not" preceding or following.
> >=20
> > Neither wolverines nor beavers have yet self-domesticated.
> > Neither C nor C++ are good language choices for novice programmers.
>=20
> C is quite simple, and as a consequence, a great choice for a novice
> programmer, IMO.  :)

I should have known I couldn't slip that example past you.  ;-)

> > alloca() does not query the system for available stack memory, and
> > does not fall back to using the heap if stack storage is
> > unavailable.  It therefore cannot indicate an error if the
> > allocation fails.  If it does, the system generates a SIGSEGV
> > signal.
>=20
> Is this last sentence a guarantee?  Can something different ever
> occur?

I don't know the Linux kernel well enough to say.  I don't know why we
still name signals after hardware traps on the PDP-11 and VAX.  Well, I
do, but I'm not happy about it.  It's yet another case of claiming
portability wins by rearchitecting the world to look like old hardware.

https://queue.acm.org/detail.cfm?id=3D3212479

> Here's somethingvery similar, with s/does/fails/ in the last sentence.

Yes, that's an improvement on my suggested wording.  It keeps "does"
=66rom working as a "pro-verb" (cf. "pronoun"); the reader does not have
to scan backward in the sentence to find out what action is referred to.

Regards,
Branden

--czqxivmugxgywpud
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkB7KwACgkQ0Z6cfXEm
bc7BlQ//XwgV3Uno7m2PN/ynH5GztN/S6KMvGvWM2ee/nVRSSMbp4S3c4jmrlEci
Jmp/TYWdAJMRRbwU+T5reghvb87YFKdqGEVwrW4ZrGxsqO0trTAMywIyMtPohR5b
MmJq+oA2K3kAAmDJqe9VfGuY3w4cGpYjMbLgDU4YTuiFlBAcbEtHCAewpMjTo9f6
ptiOdNcgW/cBNsNi71B+4Hg6Hgf/8RhSc/ZvqkPm1m2uS9ZopRs1zdS/bh8rlC8v
Cy/K/agRlMxzuqQwacd6sjIdtBjWQo3mcLAWYRAhUQh58Bvb5WFcWyv51ixDS1u/
OR0Xlgxqir+oY1pwHfQdYkBq5nhjNnxb8rdJ+U9DzN6IXOcr+jFSZQwDfatVHA06
VSRjvXgmg9P1xPeP1YuWrZbzJ7XeoJ5SJx7JjccMycoIeQVpbT9Io9nnC8zpadC9
f8HBi6/ToUvMFktuvbgSyo1uioLBGvw02Kf9sSh7mtBrpCUn0Ec6IhVYtJ+2vl1H
FN0R4XybB8Ylbw1HQbs+PRcBpWsqdOUjTwy2VaVSNDhkEnF/eu54vFhP5OJXFLrw
DgdqrHQOFCW8d+SyM9f894BUGmqYCZpjdQKOUKsmsgYxnmMKtUA+kUPR5lS+CR/p
yqFQC3PBG6EkOP7YTC3GPCFgC0L5sOyAoT7p3N59moy/6xhUsEc=
=gyQO
-----END PGP SIGNATURE-----

--czqxivmugxgywpud--

