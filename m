Return-Path: <linux-man+bounces-2423-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1D6A3348A
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 02:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBDAC3A5F60
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 01:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF9380034;
	Thu, 13 Feb 2025 01:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OMn+cefp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151A57082D
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 01:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739409673; cv=none; b=MgRtMK5hCeTpg3BFjLlXOU9HBY/JpHyxTvxP6Qz9jmTumRNBT/OHyGNQTRrDAK2WsAG7yo3Jaz4TMOnKUzrMouTN/+qutPqdxFwxBmPwjQaAfLVgUgzOpOm4AikF+RJg+HS21zH6DnfCDNQF12a35ZGdWtIID8qmo7QNCBvBTxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739409673; c=relaxed/simple;
	bh=YX53b5mMP7/9cg7KTTZSNeWQ6KRwtTfPEd1vkiD4uh4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=NXZJeGg3FE1+1o0aE9HPCSW7eRVW1hjMQM0wOLwCuZ4cNnV94POyi8LvKZv3EZUUSm18alz56TjbmH6SXX4hCVOMzy4+ZBVZR0Fz+/ilz/DXAYP9rwGYPRvo2ThTvP1IC1ix6GWaXA9qH7Vmu3yM7EfN2WwkKNMoOxhk5buLOlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OMn+cefp; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-726f943b6f4so131449a34.0
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 17:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739409671; x=1740014471; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dYLxSxstEx3iCV9m+e550auFTAjaPmqETwQTJqYsIhk=;
        b=OMn+cefpxbLgj+wgwZzAHZDIiIADHDW1meV2XA7SOvzfMR6qZjySNgGPjLNTL/L1Rb
         HXoFY7Eg7U2RHRZrcqiZiULxJFcbhcGKvZaqJkBaUqec/r0l0zxfEnkuhQE/IffO0RYV
         SLJzx+2+E/tv5ErFhlCbiiHIUNNdsblxXhTnEPxNen3dPH9wGX1rRWNTrHHX17pUYkCq
         zy+nq0hMzYIYqkTT4BFs++OL/8rb9GSvt/rAB/YH8v0Js2fDkLJ3zEfVHoriHCJBg4Bo
         HwfDsU1KX18NfuJes7z0Wd745WtT+iAs3Hb4MOWY9VsIb4I0Ml/XbGzPMBM+nx7VGUWa
         llNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739409671; x=1740014471;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dYLxSxstEx3iCV9m+e550auFTAjaPmqETwQTJqYsIhk=;
        b=A6VPzLrZcupksJfQjgyeZckSb+SlBnaowGPLDlQrc2Xi6dqgMIr9FaBg/8AAM0Fhrh
         mBHc2ezVXdIS+8euoZjPC5Eq92S4B6pfOYLea1ZodZE1JxJHXd0o5NY2S3hm4Fjvc/eX
         bAQgNyG2zMfB9ryEWhzHwUR58LlNGtAnYvQZDujOCLOVzXaFNRzvLPM+RjekfQYhxlZN
         rU6bQTsfYPb+nIgBg/fMNVxG0uQ2681S8XyCS7ZYfBxSOi8wEylGdYeyJQSah2TyUwpV
         DHcBUOV82aZ2pYXHRO7eG2pOBYvWoPAmc1WG6yEauRUgaNd+PzYZaaXQ30XAuGdZsFP8
         F3UA==
X-Forwarded-Encrypted: i=1; AJvYcCUZATd2xgzGQEnumocMV6aHlHiDf9BXyOrWWafpljXkkK7/EFjEoVXGgN8qwIfALHVuxCtDi3Yh+yI=@vger.kernel.org
X-Gm-Message-State: AOJu0YzebvlUDY2cv40KCeF1DrufIgm7ZZGGSMGH4vLwm45uFxsZ/po3
	e4n3fICJkw3zocHL7NQef0sXQcbfqDRa69w7fhyVnP2LTBN/EVUD
X-Gm-Gg: ASbGncvaK+nzmea0o8upnHP6991I0TJ+FWx31nvRn6ueQP36AAHJ/WBFBUBzi10bsoy
	uGVFYCflhvg2lo244X6bMEtT1B80tysRAbO1n27Pi18nt0KuKDgFi2Np2HNHYzq1+Tngos8Uwez
	tky4IJRK6o2NK78aEdx93A2Vl3tsdWJwrfvHcwFEMryRjuCxsaDLpdI7PRuYQX72epWNeGRH4vm
	zRtkQvG5nBnE8e3lXgNjJLRLY4g9CXgZnP3XtctSFQ3L0w49XW2VlnbTUNrPGTyc2Ssi2mXQeBX
	WXlvGg==
X-Google-Smtp-Source: AGHT+IEV8zQR5OlepOc6J8JoraV/Q2uPFetAfMaFE4FWzU4RwK/2lbrMMgfERW/SZpJIoEH+nlNQ+Q==
X-Received: by 2002:a05:6830:6617:b0:71d:eee3:fd1c with SMTP id 46e09a7af769-726fe681d9emr1137362a34.0.1739409671010;
        Wed, 12 Feb 2025 17:21:11 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727001e6c14sm198921a34.28.2025.02.12.17.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 17:21:09 -0800 (PST)
Date: Wed, 12 Feb 2025 19:21:07 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
	linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
Message-ID: <20250213012107.urh4ndk4tnnzm3wx@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zzlwxvjpfmmszpfs"
Content-Disposition: inline
In-Reply-To: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>


--zzlwxvjpfmmszpfs
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Subject: Re: Unix V10 Volume 2 PDFs
MIME-Version: 1.0

[looping in TUHS so my historical mistakes can be corrected]

Hi Alex,

At 2025-02-13T00:59:33+0100, Alejandro Colomar wrote:
> Just wondering...  why not build a new PDF from source, instead of
> scanning the book?

A.  I don't think we know for sure which version of troff was used to
    format the V10 manual.  _Probably_ Kernighan's research version,
    which was similar to a contemporaneous DWB troff...but what
    "contemporaneous" means in the 1989-1990 period is a little fuzzy.
    Also, Kernighan may not have a complete source history of his
    version of troff, it is presumably still encumbered by AT&T
    copyrights, and he's been using groff for at least his last two
    books (his Unix memoir and the 2nd edition of the AWK book).

B.  It is hard to recreate a Research Unix V10 installation.  My
    understanding is that Unix V8-V10 were not full distributions but
    patches.  And because troff was commercial/proprietary software at
    that (the aforementioned DWB troff), I don't know if Kernighan's
    "Research troff" escaped Bell Labs or how consistently it could be
    expected to be present on a system.  Presumably any of a variety of
    DWB releases would have "worked fine".  How much they would have
    varied in extremely fiddly details of typesetting is an open
    question.  I can say with some confidence that the mm package saw
    fairly significant development.  Of troff itself (and the
    preprocessors one bumps into in the Volume 2 white papers) I'm much
    more in the dark.

C.  Getting a scan out there tells us at least what one software
    configuration deemed acceptable by producers of the book generated,
    even if it's impossible to identify details of that software
    configuration.  That in turn helps us to judge the results of
    _known_ software configurations--groff, and other troffs too.

D.  troff is not TeX.  Nothing like trip.tex has ever existed.  A golden
    platonic ideal of formatter behavior does not exist except in the
    collective, sometimes contentious minds of its users.

> Doesn't groff(1) handle the Unix sources?

Assuming the full source of a document is available, and no part of its
toolchain requires software that is unavailable (like Van Wyk's "ideal"
preprocessor) then if groff cannot satisfactorily render a document
produced by the Bell Labs CSRC, then I'd consider that presumptively a
bug in groff.  It's a rebuttable presumption--if one document in one
place relied upon a _bug_ in AT&T troff to produce correct rendering, I
think my inclination would be to annotate the problem somewhere in
groff's documentation and leave it unresolved.

For a case where groff formats a classic Unix document "better" (in
the sense of not unintentionally omitting a formatted equation) than
AT&T troff, see the following.

https://github.com/g-branden-robinson/retypesetting-mathematics

> I expect the answer is not licenses (because I expect redistributing
> the scanned original will be as bad as generating an apocryphal PDF in
> terms of licensing).

I've opined before that the various aspects of Unix "IP" ownership
appear to be so complicated and mired in the details of decades-old
contracts in firms that have changed ownership structures multiple
times, that legally valid answers to questions like this may not exist.
Not until a firm that thinks it holds the rights decides it's worth the
money to pay a bunch of archivists and copyright attorneys to go on a
snipe hunt.

And that decision won't be made unless said firm thinks the probability
is high that they can recover damages from infringers in excess of their
costs.  Otherwise the decision simply sets fire to a pile of money.

...which isn't impossible.  Billionaires do it every day.

> I sometimes wondered if I should run the Linux man-pages build system
> on the sources of Unix manual pages to generate an apocryphal PDF book
> of Volume 1 of the different Unix systems.  I never ended up doing so
> for fear of AT&T lawyers (or whoever owns the rights to their manuals
> today), but I find it would be useful.

It's the kind of thing I've thought about doing.  :)

If you do, I very much want to know if groff appears to misbehave.

Regards,
Branden

--zzlwxvjpfmmszpfs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmetSPYACgkQ0Z6cfXEm
bc7vkhAAoNUBZ59qwMso2cQV1l0CAbix5MUX4L0UKycaMGZZPMbbmK9xWRCD2rV3
7TOGcQHKGZnDRppVc0aZIsQMIA+olhviceFZrSHwKiECqwDreCsTp+uAd8jsdBgx
FP7HZDb6Y+P4eJ7Dm0kyNLu281D5lTt9JhJDvcLx9QMrBJ7ldxEZnvfn2gf9iuGu
iOBveK6cenV0I/0xY5DpJglZ3xtgylwa8+Re2JLJ4oajVHphFBSuECSNfSeXpf4g
Ow6NgVH1oUjAYdF8tX1wBCKr26h+/+5XZTiQSqYLFIgu4k2+8J/tUlLaqy6BxBzt
y82PqZ2RA2/5fKEZeeh423poXbnViSOl7QnbDXMzDidcwWXkKHBA34EiYST64mWn
djq7x46ci8VAFCY48lhWHcQoCRtVTmkXlqvYt6hLtFj62970KcZ6aNCebhKEaKEb
pR9BMgR5OXweQeQah3UC+RgIaAa3UcKaqdYqVYyFTPBHsycV/qfUYSEK4YgOUh2g
gaEifW7uePLnvSwHYw/OvtL2KD46JQuaVN41wzVWUNbeWNvGGIC+Fldnqq8W/60h
B5ouOLcy/U/YC0vNoFNo3zL5feO2D9jqe7FFzXChTWqoPcen7S751BXpSNtNkVDb
CxiMmO77ZEfNOIGgJbUDM7dr8H/pTkEbuJZZ0R9srd2JASyDE78=
=wVwk
-----END PGP SIGNATURE-----

--zzlwxvjpfmmszpfs--

