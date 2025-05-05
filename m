Return-Path: <linux-man+bounces-2865-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC87AA9851
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 18:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93B0C189AE35
	for <lists+linux-man@lfdr.de>; Mon,  5 May 2025 16:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9973A25F98D;
	Mon,  5 May 2025 16:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=joeyh.name header.i=@joeyh.name header.b="fxq93pSO"
X-Original-To: linux-man@vger.kernel.org
Received: from kitenet.net (kitenet.net [66.228.36.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AB425D21A
	for <linux-man@vger.kernel.org>; Mon,  5 May 2025 16:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.228.36.95
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746461173; cv=none; b=mh7pvIyP8mVsaqSsHl4ZNPX40AM8c2bnXod3saqwLlcZdfdV0yxcPpG+6TjEVxz8QnGwcABQU8PqYBA0DakC4iXsPBldF16Ls0ovr8blsss/uHXs9puE8r45MwooDJ4PKkQMWwL5Yp7BQPYWR7Ij9GeCKk6Ix+oOJgbpsZUIDOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746461173; c=relaxed/simple;
	bh=lV0ms2ENqGzYdbeCgxiWqpLcEkTFeqbfbfrArCsjRAg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r9mv6xO9njRzIsq08AsgiK8fm9rQ6X+T4VordN0stDomndwlA9Kiw6xrHJYFJuC561Nab5xUS4VF5xsE35FTvHP66C916KaSYGc2HU+4+Dcs2mYs8ppTofaJeSX2DjnUTAxtRUhgtZdYlNnfh4sbbAt+ZdzKYuhHurX5KtFz34w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joeyh.name; spf=pass smtp.mailfrom=kitenet.net; dkim=pass (1024-bit key) header.d=joeyh.name header.i=@joeyh.name header.b=fxq93pSO; arc=none smtp.client-ip=66.228.36.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=joeyh.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kitenet.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=joeyh.name; s=mail;
	t=1746460838; bh=lV0ms2ENqGzYdbeCgxiWqpLcEkTFeqbfbfrArCsjRAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fxq93pSOFKezzyMMJuAmieTCHW5xIjNiPsj7BQ/V4a7usRldXj861QT8RBClaIjv+
	 CCkMHMZ3hlu17IXDghQCe6GHrVs8G4072WC7xqiNGzW6KxoNQyeYvc/ZL5a8VWB+Ka
	 PCgJzsD/AKwK7U5qfH60baO9UmTE1qn9DYE86Ets=
X-Question: 42
Date: Mon, 5 May 2025 12:00:38 -0400
From: Joey Hess <id@joeyh.name>
To: groff@gnu.org, linux-man@vger.kernel.org
Cc: Martin Lemaire <contact@martinlemaire.fr>
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <aBjgpgYzrRKsWn6s@kitenet.net>
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
 <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
 <aBUTF6SphOspqAKT@starship>
 <20250503001407.fduziqcvc5f33azs@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yZsu58AiehMf3NY2"
Content-Disposition: inline
In-Reply-To: <20250503001407.fduziqcvc5f33azs@illithid>


--yZsu58AiehMf3NY2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

G. Branden Robinson wrote:
> I know this concept by the name "bricktext"; a guy named Jim Warner has
> been practicing it in Git commit messages for the procps project[A]
> since at least 2012, but if I remember correctly he was doing it in his
> emails many years before that.  I learned of the phenomenon from Joey
> Hess on the Debian mailing lists over 20 years ago.  Joey, do you recall
> more details?  Was Jim the person you had in mind back then?=20

The name possibly vaguely rings a bell, but I searched my email achives
and didn't see him back to the mid 90's.

It seems more likely to me that I was writing, and just happened to have
a paragraph almost perfectly self justify and then played with it a bit.
Or I could have seen it on usenet at some point. Also, .signature blocks
commonly were formatted as bricks back in the day.

--=20
see shy jo

--yZsu58AiehMf3NY2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEKKUAw1IH6rcvbA8l2xLbD/BfjzgFAmgY4KYACgkQ2xLbD/Bf
jzh7uw//bbkoJysX2lUiV/olDT2V7p+gXbd2BCPUe7XRwTi2o6N3XzXLtfYqtMjf
l1xVs7uKGH4G/XcCLw7lI1/7LSkZEJEC/OEnVRT5l5LWK9/grHZGg4u2jncMo8ke
nPvh0no5qrwLVa3dxaxRsSqreRgokm9CvLnwA44+TJ9aehTaRs1oywP191jXVmNr
E4M5TYQtm06pOC5JOIIRDzNEVShAamY4oYCWEfAxPTXxQlmu19HL8e7hOLVxx0oZ
C5YrE/DcuFpSs1r3F9m37o8t7aeTvd58+az2mGnxiM0ksKv7s9bdUHkcX6sCDtNu
uGh9ZqQgtQ/iAgaLPuYNxogvv5i7iipr1Wo+Yh/+bTuZt0KFXm9IyIBUg5+2X53P
/c+jvWRq8bYNW08CJA7tWSRE2ln1FqFPCtULuW3ciqq0gwu180YTGI8Rt1rN+Hg/
ir61Lu8aAGJOk+vxUylHnVhTyA9qRMU4n6/pirH6bUcSd1USupyE606XmhXRgMfu
a/CR4jax1O7HBNLesDqxm1knGTa0Q62WCDuVGrmVwwHRvTm4bo9FWWqSN6e3p+xm
ueh8L9J/PvX0exF16r+WN2NykrHF8goYmMytfnW6ygxhjnG93rL4TLg+SjF9SIVN
j/zzih/WtX1w8TCGp+PMdgq268V9ls5BKBOaA4vb5VebF2SEKHA=
=0SXo
-----END PGP SIGNATURE-----

--yZsu58AiehMf3NY2--

