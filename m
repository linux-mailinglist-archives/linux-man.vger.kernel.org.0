Return-Path: <linux-man+bounces-5486-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uAe5BFv7AGprPQEAu9opvQ
	(envelope-from <linux-man+bounces-5486-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 23:40:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC44506883
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 23:40:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1CF3E3005399
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 21:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6ED433ADB2;
	Sun, 10 May 2026 21:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyGkNsgR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B7E63115AF
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 21:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778449235; cv=none; b=bxtJWZLa9H2tNY74GIovs5UqW2AvFtvU1atrC8U3RbRlZUr7HTl7Qo5bxNvIf7jGjR3ClRXoSddeqCGRYko+ZCZstSL+G9tSn9E8tg7Pa5r5CoBvYSL+vFrSWLJGxqpG630TW6S4jn/vUHJ6ciGR5FkmvaTrU82ldcwwHgU1UXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778449235; c=relaxed/simple;
	bh=Lr8/iwdU45NBRrzQy1E+iqGuAdVW05xkxABff/HrFwc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bG4/fIXKrg6Qts/MR1fYxgBgYQwDbzrjvNYwMhrxTPqL9qH9o4TwM/qsUpMtUPy2W9sicaPsozkCKVp8x1VSvlUCAU75gJpnsu4Q4vCGrUjSzECu8FDAztCl7d4lJOOkkGezt3Shgp9vf16KYZU9eA7NpOoGOWTevzOlQj7ooGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyGkNsgR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF28BC2BCB8;
	Sun, 10 May 2026 21:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778449235;
	bh=Lr8/iwdU45NBRrzQy1E+iqGuAdVW05xkxABff/HrFwc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=PyGkNsgR9EtJuzHq3zBoYLT0/D8aI6iwVWjOtctY+Bk1fa4mivwnJYmujgF1x5h17
	 mbvozghQiVHuvszMPVm5ZcXo/7YqrjCATrH+FdujfemnG8kb9cyyQ8BqOYJJddUJAf
	 GIXn2mUgr7B6gwWJjInNuMPngbGL9ls8NCFbyrXeHr6llN7GhPves7uTxnKIJx+uUO
	 6cSuIRH7OzEk/oqZ6uuWq1RdeC+O0DTw2bdXBhZbPPx4wicycxOkHP0CHxw9xdbYVr
	 4+cOc83XZWiyN5om+FVG7RfzIgYd+eEWyYbd/b2g3PoDI7kivlXNv/e+0ND9WN6haG
	 /uia1IsccFvdw==
Date: Sun, 10 May 2026 23:40:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agD0KXtT0QWtfChZ@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
 <agDTy5k6VTRhtBAS@devuan>
 <agDrjs5bEN5zUvIM@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ndrrknytn2bj5tgw"
Content-Disposition: inline
In-Reply-To: <agDrjs5bEN5zUvIM@thunder.hadrons.org>
X-Rspamd-Queue-Id: 7BC44506883
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5486-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url,hadrons.org:email]
X-Rspamd-Action: no action


--ndrrknytn2bj5tgw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agD0KXtT0QWtfChZ@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
 <agDTy5k6VTRhtBAS@devuan>
 <agDrjs5bEN5zUvIM@thunder.hadrons.org>
MIME-Version: 1.0
In-Reply-To: <agDrjs5bEN5zUvIM@thunder.hadrons.org>

Hi Guillem!

On 2026-05-10T22:33:18+0200, Guillem Jover wrote:
> Hi!
>=20
> On Sun, 2026-05-10 at 20:53:01 +0200, Alejandro Colomar wrote:
> > On 2026-05-10T19:22:04+0200, Guillem Jover wrote:
> > > From: Guillem Jover <guillem@hadrons.org>
> > >=20
> > > It make sense to use this file to fix spelling and encoding issues th=
at
> > > otherwise show up when checking the git history. It also makes sense =
to
> > > honor name changes for people, to avoid dead naming or similar. As we=
ll
> > > as fixing up local mail addresses that have never been valid.
> > >=20
> > > It makes less sense to remap valid addresses at the time of submission
> > > that represented a specific hat or organization, where the person is
> > > no longer affiliated with, because that breaks the historic trail and
> > > provenance of the changes. And is what require a continuous update
> > > burden, which seems to have been the reason for the removal with
> > > commit 2231a1659621d281a2fbb0d75bad5bccce538f96.
>=20
> > Hmmm, to be honest, I don't know what to do with this patch.  I might or
> > might not take it; I'm undecided.
>=20
> > Out of curiosity, what were you looking at, that lead you to writing it?
> > :)
>=20
> I've had this change lost in a local branch for some time, and noticed
> while going over pending changes for the recent submission. And found
> about the file deletion during rebasing it.

Hmm.

> The original reason was the same as now, when doing things like:
>=20
>   git rlog
>     (alias for =C2=ABlog --format=3Dformat:\"%h %Cblue%ai%Creset %aN %Cgr=
een%s%Creset %C(auto,brightyellow)%(decorate)%Creset\"=C2=BB)

(Off-topic:)
Interesting.  This is similar to something I use.

	git log \
	--format=3Dformat:"%C(auto)%h%C(reset) %C(dim white)(%cs;%Creset %C(blue)%=
aN;%C(reset) %C(dim white)\"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(=
reset) %d%C(reset)"

>   git shortlog -s
>=20
> Or other stuff involved history digging, you get wrongly encoded
> output.

Oh, now I've seen some of those you patched, and indeed, they look
like something we should fix.

> Assuming you have concerns about maintainability I think it would be
> fair to state somewhere (either in the contributing docs, or perhaps
> even in the .mailmap file) what are the acceptable entries there, to
> mitigate that concern.

I'm now thinking I'll accept the patch.  I think typos in the name are
uncommon, and so they won't require many changes to the file.

Would you mind separating the fixes for spelling issues, encoding
issues, and name changes, into three separate commits?  I assume from
the comment in your patch that there are no name changes in your patch.
I think the comment should be removed, because it might seem as if name
changes are not welcome.

Feel free to also add a patch to the series, adding
CONTRIBUTING.d/mailmap, and documenting what's acceptable.  I agree with
your criteria.

>=20
> Thanks,
> Guillem


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--ndrrknytn2bj5tgw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoA+0EACgkQ64mZXMKQ
wqlsaA/9EL2D2BtOMIBWnPXwjVFfYS/0ePwy6nyinu+jSfPTsjZ2Ec+H6lD9ySZ1
VoT88NYc/jeh53wgXOM24BciY6HApjDsJQjLTvveDsC33peVXpJVdr0rDLESANXa
drH70qbaM1Wg38UY6mEDhMKWD0gr9jiFndd6K1LTNRm/BAjTvOtbcHajrnEoniVe
D/6Psraof6HlaOjnAnevKR+CyksW2pKeKn8R2qdeXlxdtdRU4fdOUPtN7ysdPUR6
7vBrKVK017fwLw3JaFfVV+pwuMwduX3CUSLkwod1rBLGWYpezDPXqw803hJrxcvb
zQz7NjwTHM+3HCC+AgUczeNsa15O6yqG8OG/axK7KGEFOLowdYIbOnnMeQEfNzrR
jwkqwVWSE5h54nVACkVaHw1pED3iSLgH+LhdH4dqCZVrfy0+qF+JOn3n7sRj9V6G
HQn6MuJlSFZs4dRMaddhD297VjUVHAyZlGuDijz2Imy88iz2G1YJdMiTwzSKBfKY
Blaenyg+3j0LOFOvJ3jr1CiJ0ObjQFuSpPVhBdKAZFKfFi5WYDaXYUL5XwfhE6zx
UNGrPl4yITrc+mlXBDJtNJyb0vSbTW+cAko7Bcq6ASh6F/8eEBFiSSeJLUu5YUmA
R7th6SbRED35tBif30VgMkh0S8sqcTvnp8lMdfW4TdByyUnM0Uc=
=jnim
-----END PGP SIGNATURE-----

--ndrrknytn2bj5tgw--

