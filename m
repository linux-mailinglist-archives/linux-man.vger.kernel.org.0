Return-Path: <linux-man+bounces-2859-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3602AA7DB3
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 02:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 056914650B1
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 00:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E27517F7;
	Sat,  3 May 2025 00:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dKIN4KsD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28B0320B
	for <linux-man@vger.kernel.org>; Sat,  3 May 2025 00:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746231252; cv=none; b=Rli4xpWFw82/j00c7GSeXtgqvuU3P48W1sQUtzpa0ck4afPfZ+wdjMndVf92tyicZKAacLITX2evfLoetqTrcWO2SX16SA0ndWg3lXfVe9ZH3QAri1X8dtW9di/fDYz3FMhbSqXIfQbh6ZD4FP5h+t3vgBNMvIOe8DxCym4Q7Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746231252; c=relaxed/simple;
	bh=vdM+BG16I19efz5JerOdUq135Rv+zTRF1aSR3Ttipgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MOot2T7F37xpC8gdPqytVBaRiX6OHFiTmSp+040YQ3W4YnsU9B83LPfD9f6WiE0FjR1Vp+29yoNSetl4cr6kyeBLrVEar4amT49Ajih77UnoPawgut5LiNeuLPiKcibqtP1l6Bw+gZRFdENl/t1GnUBCQ2/DwI/faDX+1yCfzJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dKIN4KsD; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7300069c447so1492227a34.2
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 17:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746231249; x=1746836049; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rqky3LeuKwn9AjHanbZEJ3aCdOK1JgiZNLpr0ULERWU=;
        b=dKIN4KsDy1Z6tj1uzCo7P3YdR6utdXCjpgdga9s9b0VppXc+l815itoPGfkPmiXix+
         PoWlg0Ct0oBzLiHrvja1rCwcutZGHBe50uMLfdZcQISqM7zrkV1Em92tCOq5ycqjKl5+
         AO8UXLPxbqYIh9nu11/D5FfsOJ8pKGYqEFDRn93OcHcUbNV4xmy4pkF5OUqzxhDghaxb
         I5hgTwNuXYHGtMbo2wsnGa+2AeStFYivmJAI8wg88SpDsvBge2LVhv0iqb/Ef6hyY2HG
         nLCua5w6CRPhOaLGn0iGJS8FxL7Vwf7pc9twE1bVHITlwd0VXbI713pWyv2EoPmUNcnD
         8JFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746231249; x=1746836049;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rqky3LeuKwn9AjHanbZEJ3aCdOK1JgiZNLpr0ULERWU=;
        b=gvNLo0/XxAhz8izr/MjfGU084f7HkHrFaIeZZIiS127Xz2zIIeoeFjoKNwER9DBJJB
         vgI9ca6pUxLbjY17DzQmxZimmMzbe07+d338ItCijgj7NHOAsG05la5t/c57fU+gKeys
         V2t38XDWv14BLR/asccellZiuPzUTsL/7QXnxuWz9ZA+chdVmUll3e0w0WRlyVhyxrjr
         /CwXmrAz+5EXzfusZTymtTz+kYRmfeuIWHRYN7zLX/tuR07XsIf753EQ6ZPerRZtrPgV
         0fbm4IATHueX4BSA32CW1hyFSNJW8qlAyOLyEtIqanHcUQ2BopPiiEvzmMZJ1TZh4b30
         cKhg==
X-Forwarded-Encrypted: i=1; AJvYcCWvihNvAmAtkr0wjS4jSOUF9OqfZVWRjzy+dDgamCxkNeDhhk+Kh47epnNQnwXS6/1SZTLbAP0d9UI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9LXd5lZLKnURiww/W37VhevjlisrxMXwKidtoTcaAO6x1Utd8
	VlsaZL1bO6ayJ91LJEm7SUmZKFP2TidEUrvZ4z/D8kLltVS3d2UIFTZOSw==
X-Gm-Gg: ASbGncvqKJCKOieYZPMqDxXna2cfrBxgUsaRev4ioGmUX2sQHLKj9V2JEgPDYD4x11f
	qnn1OMJP8rP0H01gFpcRATCmAjRnlZB+T+wK0wxhbpo3pGVzRpmFuU6fP+Z9MbpiFpozec85zlQ
	6xJuvenj3aPPcdo0igxiAuHXcA5oVixffxy+DVER3NZ9XMaTNFPe2wbFplh0VAHTm9QV1JjC+Mz
	uDmTNpAxCcOz1UpqxBxijqsXH94GOBseHTPqKZTR11/0jYC/vuDDxlzRFb2hXfYtdLluXY909Le
	a+CCoSH9RldnUOQy/x08sfZXyUtmsQ0=
X-Google-Smtp-Source: AGHT+IHTPyxZn3k14L4eitL6oiuxjUgmk8eMT8YaTXLWMB9xfatsd9e4KrPnyoE563onHRN3z4gF/w==
X-Received: by 2002:a05:6830:4126:b0:72b:8000:d487 with SMTP id 46e09a7af769-731da105605mr2528725a34.3.1746231249469;
        Fri, 02 May 2025 17:14:09 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-731d31a1f04sm685835a34.14.2025.05.02.17.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 17:14:08 -0700 (PDT)
Date: Fri, 2 May 2025 19:14:07 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Martin Lemaire <contact@martinlemaire.fr>
Cc: groff@gnu.org, linux-man@vger.kernel.org, joeyh@debian.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <20250503001407.fduziqcvc5f33azs@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
 <aBUTF6SphOspqAKT@starship>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2bewmvelf6tdna32"
Content-Disposition: inline
In-Reply-To: <aBUTF6SphOspqAKT@starship>


--2bewmvelf6tdna32
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0

[adding Joey Hess to CC to refresh my memory on bricktext--see below]

At 2025-05-02T20:46:47+0200, Martin Lemaire wrote:
> Although Gutenberg had a major impact on printing in the 15th century,
> there are traces in Asia of xylogprahy[1] as early as the 6th century.=20
> It is argued that western educations give the guy too much credit.=20
> His contribution to the craft was more about crafting inks allowing the
> printing on both side of the sheet.

That could be.  As I noted, I'm not a domain expert.  But I would be
cautious; as bloodily successful as European colonialism and propaganda
have been, Europeans did not invent the practice of chauvinism.  It
seems to arise naturally among humans everywhere.

I find the sad story of the Moriori in Polynesia to be a telling
example.

> Earlier than that =E2=80=93 and closer to the practice that is printing
> characters in a monospaced grid =E2=80=93 there has been stoichedon[2], a
> style of stone engraving where letters are aligned vertically and
> horizontally. Words seem to be separated by a spaceless sign between
> them. I assume this absence of spaces produced the most uniform and
> pleasing grayness.

First I've heard of this--neat!

> To my knowledge, we have to wait for the year 2000 for someone called
> rs1n to produce a perfectly justified monospaced document[3] without
> adding or removing between-word space, writing and typesetting at the
> same time.

Hmmm.

[from the linked site]
>>> 03. What program did you use to justify the text?
>>>   None. I just chose words carefully so that everything lined up on
>>>   the right hand side. Everything was done with an ASCII editor.

I know this concept by the name "bricktext"; a guy named Jim Warner has
been practicing it in Git commit messages for the procps project[A]
since at least 2012, but if I remember correctly he was doing it in his
emails many years before that.  I learned of the phenomenon from Joey
Hess on the Debian mailing lists over 20 years ago.  Joey, do you recall
more details?  Was Jim the person you had in mind back then?  Can
someone claim priority in the 1990s?  (Or earlier?  It wouldn't surprise
me if Martin Gardner had an article about it in 1959.)

> How does *roff monospace justification algorithm relate to its sibling
> justifying proportional letters ?  Are the two vaguely related or it's
> another approach ?

They're closely related.  The only difference is that the horizontal
motion quantum on a typewriter/nroff device is much coarser with respect
to the glyph pitch (width) than on typesetters.

The relevant function fits on one screen, if your terminal window is at
least 36 lines high.  :)  (Much of it is given over to comments.)

https://git.savannah.gnu.org/cgit/groff.git/tree/src/roff/troff/env.cpp?id=
=3Dd96a9c58bbe296b065fa250e3ea1e1a410cdde81#n2185

> [3] Super Metroid =E2=80=93 FAQ/Speed Guide, rs1n, 2000
> https://gamefaqs.gamespot.com/snes/588741-super-metroid/faqs/10114
> mirrored here https://www.martinlemaire.fr/metroid.html

I'm not much of a video gamer--few attract my attention and fewer still
hold it--but Super Metroid was indeed a gem.

Regards,
Branden

[A] https://gitlab.com/procps-ng/procps

--2bewmvelf6tdna32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgVX8cACgkQ0Z6cfXEm
bc7NKA/+IjbQuLpyzfaNfX++5mp3tbGkNoH6eUvUcAQvlhjGvBWRWYKXWKGcGho4
EjRXyjzQPC7VNgbrJ2t3Js6MQNLn08cnt0AMR8I+ZHFMqEOTyQbCoGl23/2+mTpQ
I48sg6+gFCQd4ut3mNzd/xiYbSwBMfltundr2ch+qjnLoWpvoYsXCwr39JYigPil
DBRLTNYtiEO+8gcn4joCpYGMqqnD17gYLzFsROjAQjIZpOhQy07Q0CSQ8SJtxOEH
0gmGR3LGiIL8a6J9r8dX1fRV2LlIJXVWLaywJvldFZtiZWdFa/3Cv7cYZS77j5Dj
MSsxDtAA4NjYQjPYOPkPznKJUkqeMOROBJo/7Li+65Ws8Eh2w0LtZ9uh+hcAFo1n
jq3v4ZAGpPQMPnLkKIz+Ka2fiP0OntubopMRUt6YW/KPadaDt7Do8mOPOxmMXqII
w4l/IrE/EIkFgyDL/oL4x1Ghi9gge6WDzm4d0NRZc3lyMxZAo1tjs2LMhe5TYjCa
ErQWfZ0RjsSrbuKIoLjUhj6FB5y/dKBfFbYMZubRJq1Rq8YrY4XEVBiHWafAzt9F
jk8x2DeRznYFKZ1dvwVY8zzJyhS4706iNSGY+4fJVRm5P1FgIIweXGdwGwCa1Bk6
ZXdOf7DkYVi6ACdwut7hidyctY6WL0w5et9SpWY2Div4k7lFhlo=
=WjNH
-----END PGP SIGNATURE-----

--2bewmvelf6tdna32--

