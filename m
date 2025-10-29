Return-Path: <linux-man+bounces-4223-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E5DC19F02
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 12:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EFCF3343570
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D433A32E68C;
	Wed, 29 Oct 2025 11:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F+RPB1Ef"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 018D132E131
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 11:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761736385; cv=none; b=KTW1S1WzHazjtXc7Jvuv2dy7HoLhIoCH6949ew7aASE6Wl9TrS2k5ZSlw1164ptiGQ62+AsuU3liO7fVuGD4PYk0jvDLThTrFUUB0RTy86ZUqIUdeL4DbnbhHMfmA7FATC2GvAiiUo7nX00+YTQ3isM//SkdtjTj2c7NKekYkNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761736385; c=relaxed/simple;
	bh=zhdxTEShvknd5+/p8P925ersJ+5efv95PPWzv4LzhQ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t7npdKUKmw9xaV9DkVDb4vM5SsRxxM4M4yvbj+vktpfI/NNFqyx60v4WOz3p8OA58gvjVdCs75+sANQyKPCqucDc/BzEiaf0Bpk/5HmcsFzzW/NT5Ex1pbdKtOaWfvekiR40I7kYn1ESxGumMi528VEQlHoFuVDuqCleZUJX/oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F+RPB1Ef; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-633c1b740c5so7574942d50.3
        for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 04:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761736382; x=1762341182; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6TLESnwd+Rwhopnyp2d3HdQUb70moqH2vg6cxdXXKPA=;
        b=F+RPB1EfE48BDp/JdYMUXIG7NBczYMIr08NVYYClbHs2xc90HjP4hYpe2Vr1ORWvuH
         hDwsbYh0VduR4j/tf/gmKT+EDncL8ZO2si0L1CX/Kzsyh0sVPx87C0O81jRwH0vX66qJ
         yIzMSpGgzBLTf+JqHCJNh4S1ldTHgjmOwMSzzKi0G3tQJJwKqy9iR1YGkIfg59inKlMw
         G+WyAmGvlY0G4AFHhXksGxmBXxAESLJY7OcORDRNdBXxbp9jOrBbMuzU+YNg99Kk/RKS
         2rICGxg5epLcV2Qptq/ejvuibC9khWjB805C8KCM5W/dV54gGowMnwqzoMYJkNykB8hr
         vDzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761736382; x=1762341182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6TLESnwd+Rwhopnyp2d3HdQUb70moqH2vg6cxdXXKPA=;
        b=o1OpdbRj98bSAzqDVbStF9NRhkEg/XpLQs3wOJT9cm9TVjP37zxVve6BO6dJYzatph
         aCjmE44TtIMjyUHXYopOK6JcgHjkQ5ZtxhlJbHPpkk+n4+sYzd2bGwFeYYLE7EPPL4Gw
         l1plf7tb3zNixMHt+0ZHYBVkjgmJK7s4N8OwxC+wxuqI9COQwG+/7+yYMj9OTsVSBAH3
         eY63jkoJxDqfk55R2TJYDNWeQyzd84uaW4UsdStxzeskVy3OlOnEPOsWrWyrYJy5Imup
         Z9pHN2yiWwiAIz8grD3v5OBqlsQGKa7QhQpnbPz7DpSUW6EdEKmR71skJZ4+d4ETKL0v
         bOxg==
X-Forwarded-Encrypted: i=1; AJvYcCXTEYuFsGOerc+lgjFzjAa8CAC4/zJRP73SOGPJ9QgfYyYRXBlltejNm8h3VCnWcwbViDLwBh4zIQo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc4PN/RLMNbeD+c7t1vQqfpzwX0Njeu/Z6ShDMbDyZPt9eGYJh
	GFbCRstRl1m21aO9oLFpCcd7aLY09cFAi9jZta43wGmleN0IpO6UpwE+y49XFA==
X-Gm-Gg: ASbGncu5PsqgPT812MJfwAA/2hfweKLyLMbd4s4BdfuIqIsTaP4+el0/DCHNYNAI7yG
	hAZP9VMbKQilSHnijs8oX2o4rBfPzoO+muQh2N7JJNR3wM95Dx+F6fDb4hooXbtpMkeyt84Q0TF
	VZsdeWMglAloZNu83V2jEQJCKj3TzUeBAyKWLqmRlJRqhtZ3RrDi7Ze97Jj9rPdInOeWZn6n70K
	IBCEZNR8Ui7bbO8QdJ/vW8UYgC/URxcXjE+UYv+im567D79hOPv5sPzlELHomJAivUbkymZ8rvQ
	2M3Og61ej7I5+B3Hel8dqhPcs3YVC9/7fvVeBMylWkdDOesb9l9sHClTju/t52qt426Oa+w8FFa
	MQ0bdKOKLPfsenrvVrO7Mhk+81pDzjAQzZ4shRP3+VZy1KbcJeZeC9kSjimIUmfGEIQ==
X-Google-Smtp-Source: AGHT+IHn/gwVfo2iau586Ultc0Pf36iiqBk2xkIJnQqvcqVJZf/bPdYewK1tS4AwnE14B6qum3qMGQ==
X-Received: by 2002:a05:690e:1586:20b0:63d:7ac:b991 with SMTP id 956f58d0204a3-63f76ce7e7amr1975966d50.5.1761736381951;
        Wed, 29 Oct 2025 04:13:01 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-63f4c455454sm4084182d50.24.2025.10.29.04.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:13:01 -0700 (PDT)
Date: Wed, 29 Oct 2025 06:12:59 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org,
	"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <20251029111259.nvmnemste6zkg6kw@illithid>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
 <20251029103012.5tswxzup6yyhmi76@illithid>
 <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5qr4vtibs2yrjpsc"
Content-Disposition: inline
In-Reply-To: <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>


--5qr4vtibs2yrjpsc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
MIME-Version: 1.0

Hi Alex,

At 2025-10-29T11:58:21+0100, Alejandro Colomar wrote:
> > > Is this last sentence a guarantee?  Can something different ever
> > > occur?
> >=20
> > I don't know the Linux kernel well enough to say.
>=20
> Hmmm, then I'll reuse the old wording for that, which said it was
> likely.

In principle, some linux-mm people might be lurking.

> I've now also replaced 'If it fails' by 'If the allocation fails', to
> avoid confusing programmers to think that 'it' may refer to the
> function (that is, to think that the function can somehow return
> NULL).  That would conflist with the previous sentence, so it's not
> necessary, but I think this is more readable by being more explicit.

"Clarity over all" is a basic principle of technical writing.

> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Wed Oct 29 11:52:52 2025 +0100
>=20
> 	    man/man3/alloca.3: wfix
> 	   =20
> 	    Reported-by: Alejandro Colomar <alx@kernel.org>
> 	    Cc: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
> 	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
> 	    Co-authored-by: "G. Branden Robinson" <branden@debian.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> 	diff --git a/man/man3/alloca.3 b/man/man3/alloca.3
> 	index 52b87a8a3..367de81d0 100644
> 	--- a/man/man3/alloca.3
> 	+++ b/man/man3/alloca.3
> 	@@ -111,11 +111,14 @@ .SH NOTES
> 	 making them unfit for implementing functionality like
> 	 .BR strdupa (3).
> 	 .SH BUGS
> 	-Due to the nature of the stack, it is impossible to check if the alloca=
tion
> 	-would overflow the space available, and, hence, neither is indicating a=
n error.
> 	-(However, the program is likely to receive a
> 	+.BR alloca ()
> 	+does not query the system for available stack memory,
> 	+and does not fall back to using heap if stack storage is unavailable.
> 	+It therefore cannot indicate an error if the allocation fails.
> 	+If the allocation fails,
> 	+the program is likely to receive a
> 	 .B SIGSEGV
> 	-signal if it attempts to access unavailable space.)
> 	+signal.
> 	 .P
> 	 On many systems
> 	 .BR alloca ()
>=20
> Would you mind signing the patch?

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

There ya go!

Regards,
Branden

--5qr4vtibs2yrjpsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmkB9rMACgkQ0Z6cfXEm
bc4nsBAAiK8bxoY/9klmYn1Gk2DAz9Hp7uFKQgfvGQ2bxEwp9vEJneOE8eWhz+qK
eu9b+X2TAo4U1qh9jWzd4p7I54IQPsTWamJb+PE9AAx/oyiCUSYqNR2WMjIdgnnB
m4Vaw+z8mKOrG8AeuLgcrwvTm8vyLdDeagpzlbr/u166q7MqqrM1Cl30EQJ20pnM
DVDHPz2JypjGio9VFqyJ4LI7+G6J3+SfFtQBuP+5pZ1nVWNxPh8NiWwVlP9RjPIV
q22S5sJH0htzrPhchPnYnFhJjS0KQgulLeBjnIvjLgYyL93NtZgHa/v8M0HzXhJs
ow1NugN5T7EFJMYVJYMPTpwsQPlFfxRnsxiE9i6XB4tnzud2IPQ4i3B0LabVR0Hi
iKyW5JmsyaEVHsXEerKikT7jxnPH/AtDDSgUYz4FfnGTbnNp+THrznCmiUWCEAyo
yMpFqil4LS+isofg6wCQpMoCpp0JgvX+4qpdibLapZab3M5KE1Ho8KJEHAOmuSb8
LCURAfklSrVSbpj3WyANb1ktBWRsqg9zSWeBUDYAUId/T/xAM28GN/6gxtj+s9Lo
TqZMuQLojpEKqsos6Z4PBiAfhpiW9IWOIkxcw1YzfgatW5ijLcHbUpW2THvBtnNT
xCnJyCyzCFz055pQqI4k2DW2GAgrQW7Yrr2LrgkyfEtK2eNbF3k=
=rKr3
-----END PGP SIGNATURE-----

--5qr4vtibs2yrjpsc--

