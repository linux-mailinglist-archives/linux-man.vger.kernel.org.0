Return-Path: <linux-man+bounces-4232-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6C7C1DA11
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 23:55:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6554B424220
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 22:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E082E228C;
	Wed, 29 Oct 2025 22:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ct7WxHvS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DDB2E1F00
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 22:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761778505; cv=none; b=Z5Lr5LsJ+2cWRUsMJlA7pbN82saHXMhAlXozfQise+W2NSrsbBUOwJeyIomqSuupk+8oj3t/jGviAuvuXgHTDbC7k6GPFXCMd94gkgQSZw/ykcB3NcOiPPBxVsY68O4hmFkjESZNYqlIuCdonHiAtlV+Rj6/LTpzg8UnaWc4AKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761778505; c=relaxed/simple;
	bh=6wGpPfFPaMn5CyeJc/x71wXNwivgx1hcv+VBSEtdlQ8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qsP86sBRgeb/X0SIw+Zt67f1RlaJNSilLRnnRg0EZwQVy4K38efrYaRMXMrnaFpPJK4aIkwacXy1sOh+ar3aqiQfh1+kTgV2J3esB0LPZ02uq6O/knxxseVEYUAA4XJ9vahV6gRdSHgiQ1FQ57JOqm0yExcdmzt8wClj62Ta20o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ct7WxHvS; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-63bc1aeb427so580963d50.3
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 15:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761778503; x=1762383303; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lgNmqRtu3NebyMNQJkxPuJYhadXG2/X2xqTFjmypSRU=;
        b=ct7WxHvS8MqZsyIg1lHpzP1T7l/4/O7OuvjPjcHMQa0DRO8C/IfCUXiRdK+7V2js56
         zHFq2SswHACmCrS5aRW5PG+vqTV2sWF6Br0/5VsFkcPfAQ8h1V3dfqcI8FTdJ75ncbZY
         U/1X8XbmwTQ1tG3dVPdGGCNsH9x3AfQppuOFOJoJmbUTw0HEtuy48rRuaH3wKgS0p7VQ
         tlTVlj2azAm9zqkAOoc/gFxawke11R0vc4D/TG8vppS879WJtOfoDGULYar3nj8H/gI+
         QCBTjHZCDVwus4nfIovxBVDvTtKtw7bpBeJR4pwNsAOTCFtpnA/1yPEftMUtbApZw6x4
         lamA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761778503; x=1762383303;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lgNmqRtu3NebyMNQJkxPuJYhadXG2/X2xqTFjmypSRU=;
        b=joojp5+KGdlPltlfyhLaTqb3+Lqq6PgwzRaCs/zcfAy8TTPVqZfUK2PHdUF4GLEX0D
         vJRUnWmrQO1sAFhgG0ivRB1GBib0vlXJQlOM6TfFotCYA6LC2qfngV6EcRZxlXsIkcyU
         /zbSddLQ8QH/4ZGc3VWDEncBNLQfD+fk7XOlJz6VajDJRSUIbVF7EsH0a/NMrjODdvcT
         z2W1/xDgKcl4L9NDZqHmfCkZibVWrTuBNNjZPtr6mVhLfxMBmQeVEXMxvYz8umOPtdzV
         tYcAOJRhhHUb4/xBQ6KFPU2Ah+5tK44lzkaTBW1YvezdxanzBkbu2rQiulzQFtJI8RzQ
         VIbg==
X-Forwarded-Encrypted: i=1; AJvYcCWLgPxpOhOQlEy2TDQ8EQsuwyajhJeN8/sFgisZfB3BR2c8TezpfpF7DyOptOMw8GUQ21Fp/7QwmJQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YyVv2LQNa/6tRTvqSzRemBwCHlhOPVAk5uNJW62zYw9oZ3JPRfT
	ZlsVpPGjV+8xu4VTIfQ6MLAU9keVTo3WLiGAusEyEavm4O2tFsnv0fOA
X-Gm-Gg: ASbGncteD755PqxAVTBOZNY7sbHOR3N/YSW1Pm7pmJmWS4lvUV3rncRbETOQXCr15CP
	LNdyy/RF3Vhw1GalqrSzkPWjM+kURMZN2aInJUDxTUgKgE6rVZfmUhj2l/HXZNoY/u8y5x7yRzz
	apiu5oAGFjRQOBGjAXNpAXzJBixmC9Sgeq6cgKJdj/pa+36VwS70kK0FoMOo08bD0oUJBa/CgOm
	6wPwbQFi1SrcmY4S5OvFS/T5b3pLz1sSaZp3uHZVodMfBsJmCZn0E4DD1lO+vCb6bgDwj7yO/bR
	dXRLRKsd5HQ5kd9r/W6Hl6cV872AjPqhz5HEUUONMsdJUan0CpYzsooSCSuZXENrioYH1RuAOaD
	5WhvxoMLNbR1DAEIlvsvnrhgT98IbW906DTCVW+vnv28GKwVuSzHx9PIJ6hX2ruCr9OmnlbGCcE
	0J
X-Google-Smtp-Source: AGHT+IFfoBtNLYDYnRxTbmUFGoqelVI1k7DuwcEtwuMJPPvq8BV3xyW/flXUHfC/oQB0uPTtCU53pA==
X-Received: by 2002:a05:690c:2c8f:b0:786:38b6:f4f7 with SMTP id 00721157ae682-78638b6f694mr15354547b3.40.1761778503218;
        Wed, 29 Oct 2025 15:55:03 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-785ed1e84ffsm40483327b3.55.2025.10.29.15.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 15:55:02 -0700 (PDT)
Date: Wed, 29 Oct 2025 17:55:00 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org,
	"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <20251029225500.squcpizsa3n255el@illithid>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <jhuyhyu2xgbcqwahlmjqc7lvqw44mrzuoveikrcdy6gm2ztu3o@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v2zmurrd6lu3tq7c"
Content-Disposition: inline
In-Reply-To: <jhuyhyu2xgbcqwahlmjqc7lvqw44mrzuoveikrcdy6gm2ztu3o@tarta.nabijaczleweli.xyz>


--v2zmurrd6lu3tq7c
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
MIME-Version: 1.0

Hi =D0=BD=D0=B0=D0=B1,

At 2025-10-29T16:22:47+0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Wed, Oct 29, 2025 at 03:42:00AM -0500, G. Branden Robinson wrote:
> > The sentence is confusingly cast, but the problem is not as simple
> > as you describe.  It is common in English to use "neither" without
> > "not" preceding or following.
> (I think if you want to be quaint you could say that embedded
> negatives are negatives for the purposes of "neither" and the like,
> even after lexicalising so far you can't analyse them in modern
> english: im-possible n[ot]-either n[ot]-or, as you demonstrate below.)

As a practitioner, I don't think English grammar works that way;
sometimes whatever the semantic counterpart of a morpheme is gets bound
so tightly into a word that the word stops admitting semantic analysis
in this way.

But I'm not a trained linguist.

> > Neither wolverines nor beavers have yet self-domesticated.
> > Neither C nor C++ are good language choices for novice programmers.
> >=20
> > That's more grammatically conventional.  However, I would recast
> > even more aggressively, as I find "due to the nature of the stack"
> > hand-wavy.
> I don't disagree but I'd say it doesn't matter? "How the stack
> actually works" for our purposes of overallocating is really neither
> here nor there and changes depending on the system (grows up/down) and
> hardening (guard pages y/n), but the pitfall is similar regardless.

Right.  The phrasing "due to the way X works" feels like a lazy maneuver
=66rom a technical writing perspective.  Maybe not often, but sometimes,
the programmer will want to _know_ the way stack allocations work in
Linux, because they've used alloca() and gotten themselves into trouble.
(Or maybe more likely, a colleague or former fellow employee got them
into it.)

As a rule, I think it's poor form to note the existence of an
explanation for some phenomenon without providing a citation to where
that explanation can be found.  That's what citation and footnoting
practices are _for_.  (In man pages, we can't have footnotes, but we can
have informal inline citations, and we do have the "See Also" section.)

I grant that sometimes, no explanation exists in a natural language; the
source code _is_ the documentation, and if you have enough hairs on your
chest/vested stock options/buddies who can hook you up with a new gig if
you faceplant in your current one, you go look at that source code, and
if you solve your problem, you document as little as possible and teach
no one anything.

Thus my attempt to trick some linux-mm person into wearily pointing out
the availability of ReST/Sphinx/whatever document[1] that explains
everything needs to know about the subject...which we could then cite in
the alloca(3) page.

But clever sharks are clever, and not easily fooled.

> Classical wisdom for alloca()/blowing the stack in general is you
> don't know you did it until you accessed some byte of your stack that
> you actually can't see, and the allocation is infallible for this
> reason, and AFAIK this holds in present day.

Agreed; I don't know of an alternative failure mode, but I've always
been pretty conservative with stack use--I grew up with irritable,
memory-starved machines--and never aggressive with alloca().

> I'll agree that the wording above is not my best work.

Given enough time, little of my own work endures the critique of my
future self.

[snip]
> This seems to be semantically similar to your sample,
> so I'd say we're in accord.

I think so.

> The wording downthread seems solid.

Regards,
Branden

[1] Or, if it's really glibc that handles this in a platform-independent
    manner, then we're talking Texinfo.  Of course there are other
    libcs...

--v2zmurrd6lu3tq7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkCmz0ACgkQ0Z6cfXEm
bc6IRA/8C7907HqyUGT45oHXMPKpBkiFgc+R5K1trt4UI/u8U4sgXChtB8kV2ef+
p6WGowdRcrThiKfCbE+O7chJim07FG+OgfPhqRYXwzYG529HgOou9bTArGYXaOzM
FbAdBIAlzTHqN8LnbxlNJ+6xu2+LLYk/Yu7k+9HuwxAKxcpNCPm6XFYXFvcNZvGF
C3MaW6bTSbji8oBddyEXWSmTLH2BZ4zQpI7+gR68pC5K4usSNRTKmBV7M0WD31dD
L2AFMSRRNUIbRvyWhQ58dADZc1YIeDQ7c7wNav5hDFalza22a+zZMWz6D1JeUa3c
h5QEp54bMtqhcc4rk0GC047G5cvfGwsjDCMAyaNzL62jNZWEZDpAsnK837qa3wR1
DI4VpzrsuQbZBcYTm+Y/zgTkOT6JzTAzDnMhUGHRxKvn6k9Boc/KhuUVVSat+RRM
AeDPPLTIyKmpAgG5jmZ4IoZ0TJ4ms8wZtPXfVAfQiijhR2DTzQFCTOUkbeTry468
Wq13GVxH6KTm/ypbb249gplrlqWmyvmlDAA7HPsPiaDMXCugfsvRfd1IQfpnmy6W
ExHUYm/4W6hH9ylG05RxpQYkAw/b5rkK5kDxEMa/51x0h5YP7mNYUblBn9lPRtTR
LAtQEFGNKwvUtry9sFUyoroHu/W99ifAjTc4zniK3Q+O/UKYp8I=
=8IfZ
-----END PGP SIGNATURE-----

--v2zmurrd6lu3tq7c--

