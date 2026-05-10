Return-Path: <linux-man+bounces-5487-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FQmILn8AGrIPQEAu9opvQ
	(envelope-from <linux-man+bounces-5487-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 23:46:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7F35068E4
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 23:46:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E50723005E95
	for <lists+linux-man@lfdr.de>; Sun, 10 May 2026 21:46:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297302D739B;
	Sun, 10 May 2026 21:46:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHPPj9+Q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6D634CFCD
	for <linux-man@vger.kernel.org>; Sun, 10 May 2026 21:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778449589; cv=none; b=p+yWfW8OAu3rjtYgnuYhIUUo13n17DMyktdu0k4oU4uregK9xJyC1nY6O/sgvmL5EV6RN/1fNG2cirkGY098xSFC+V0Btmgc83dMyl75DM6YkqI/agqTppbq3GKSJVTvGqgSEor6MDASm3CeCHppQftX7PcFndTVduP3ci4B/ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778449589; c=relaxed/simple;
	bh=8OQKuACP9N7W+hDpcqaOsMdUxetDAc4B9r806aIRGIM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ivBEa3wLIfuX+OJuiXYB3Cyfc30TKIW1OZYnBgoJqKfumc1hsexb7g/agLfqGvVYg4/gc4eh6ENp3kZAfsX6an0DFQPHOWJf+blSPe8hjZ9AxlM3n5BnHnwI410+MUbe0tQV89lmEmmYlTy5TXnW/L0WGJU0HNdk3797i8kXEIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHPPj9+Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5A5BC2BCB8;
	Sun, 10 May 2026 21:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778449589;
	bh=8OQKuACP9N7W+hDpcqaOsMdUxetDAc4B9r806aIRGIM=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=tHPPj9+QZO5OP5OFXoA2LFAK9J2YX7AdX2UFYZvMRfY90ci646fEvysJKTINoD1hL
	 apEhkwI0SKyXXOM80xN9eEVTFfp/vokD+PsKfyUbOcoTKRMHyPKAb8KDgCpJKS+zOq
	 0j2DIN3W90qcyWCy5j2ZEwIecfBi7gYmL4S/snjnPKhcGvlu8898Cm2V7A8yqno0dh
	 cYdz6b5Kp+Z4lH6oh8LNduUsmt8cJIZoe3/4jX8dze1SVKKigFFK1gn/ngpfkD7Hty
	 7lIyK+wKTU5LPgeT/Uc2cUAi9eW/OmVxo2tgpNuqw1h8+hnORnh4JsuBw0NosPr6H+
	 be2JVSm8F9ORQ==
Date: Sun, 10 May 2026 23:46:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agD8X672fl5Y-6xG@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
 <agDTy5k6VTRhtBAS@devuan>
 <agDrjs5bEN5zUvIM@thunder.hadrons.org>
 <agD0KXtT0QWtfChZ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fctncskb4tvlxvsu"
Content-Disposition: inline
In-Reply-To: <agD0KXtT0QWtfChZ@devuan>
X-Rspamd-Queue-Id: 7C7F35068E4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5487-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,hadrons.org:email]
X-Rspamd-Action: no action


--fctncskb4tvlxvsu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@debian.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] .mailmap: Reintroduce file to fix spelling and encoding
 issues
Message-ID: <agD8X672fl5Y-6xG@devuan>
References: <20260510172205.350001-1-guillem@debian.org>
 <agDTy5k6VTRhtBAS@devuan>
 <agDrjs5bEN5zUvIM@thunder.hadrons.org>
 <agD0KXtT0QWtfChZ@devuan>
MIME-Version: 1.0
In-Reply-To: <agD0KXtT0QWtfChZ@devuan>

On 2026-05-10T23:40:32+0200, Alejandro Colomar wrote:
> Hi Guillem!
>=20
> On 2026-05-10T22:33:18+0200, Guillem Jover wrote:
> > Hi!
> >=20
> > On Sun, 2026-05-10 at 20:53:01 +0200, Alejandro Colomar wrote:
> > > On 2026-05-10T19:22:04+0200, Guillem Jover wrote:
> > > > From: Guillem Jover <guillem@hadrons.org>
> > > >=20
> > > > It make sense to use this file to fix spelling and encoding issues =
that
> > > > otherwise show up when checking the git history. It also makes sens=
e to
> > > > honor name changes for people, to avoid dead naming or similar. As =
well
> > > > as fixing up local mail addresses that have never been valid.
> > > >=20
> > > > It makes less sense to remap valid addresses at the time of submiss=
ion
> > > > that represented a specific hat or organization, where the person is
> > > > no longer affiliated with, because that breaks the historic trail a=
nd
> > > > provenance of the changes. And is what require a continuous update
> > > > burden, which seems to have been the reason for the removal with
> > > > commit 2231a1659621d281a2fbb0d75bad5bccce538f96.
> >=20
> > > Hmmm, to be honest, I don't know what to do with this patch.  I might=
 or
> > > might not take it; I'm undecided.
> >=20
> > > Out of curiosity, what were you looking at, that lead you to writing =
it?
> > > :)
> >=20
> > I've had this change lost in a local branch for some time, and noticed
> > while going over pending changes for the recent submission. And found
> > about the file deletion during rebasing it.
>=20
> Hmm.
>=20
> > The original reason was the same as now, when doing things like:
> >=20
> >   git rlog
> >     (alias for =C2=ABlog --format=3Dformat:\"%h %Cblue%ai%Creset %aN %C=
green%s%Creset %C(auto,brightyellow)%(decorate)%Creset\"=C2=BB)
>=20
> (Off-topic:)
> Interesting.  This is similar to something I use.
>=20
> 	git log \
> 	--format=3Dformat:"%C(auto)%h%C(reset) %C(dim white)(%cs;%Creset %C(blue=
)%aN;%C(reset) %C(dim white)\"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%=
C(reset) %d%C(reset)"

Oops, mistake at the end when pasting stuff.

	git log \
	--format=3Dformat:"%C(auto)%h%C(reset) %C(dim white)(%cs;%Creset %C(blue)%=
aN;%C(reset) %C(dim white)\"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(=
reset) %C(auto)%d%C(reset)"

>=20
> >   git shortlog -s
> >=20
> > Or other stuff involved history digging, you get wrongly encoded
> > output.
>=20
> Oh, now I've seen some of those you patched, and indeed, they look
> like something we should fix.
>=20
> > Assuming you have concerns about maintainability I think it would be
> > fair to state somewhere (either in the contributing docs, or perhaps
> > even in the .mailmap file) what are the acceptable entries there, to
> > mitigate that concern.
>=20
> I'm now thinking I'll accept the patch.  I think typos in the name are
> uncommon, and so they won't require many changes to the file.
>=20
> Would you mind separating the fixes for spelling issues, encoding
> issues, and name changes, into three separate commits?  I assume from
> the comment in your patch that there are no name changes in your patch.
> I think the comment should be removed, because it might seem as if name
> changes are not welcome.
>=20
> Feel free to also add a patch to the series, adding
> CONTRIBUTING.d/mailmap, and documenting what's acceptable.  I agree with
> your criteria.
>=20
> >=20
> > Thanks,
> > Guillem
>=20
>=20
> Have a lovely night!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--fctncskb4tvlxvsu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoA/LIACgkQ64mZXMKQ
wqnnwBAAj5ut8o9AzpcQT+te1r035CK324VFicKJgcFL3q1YNHmRzNVEIPAXg2Ku
V59wM6RIqrVCmtxuOpdHV9RfvOEZjaMTxHoZUASiBEU+eqDDqwdYi/R7Yj5i5pwE
YaqEpbwaykXMuQ880eawgItqnxGU6Wz/bLreI+qygPtUvQlgxfht3j/amlxtdaZK
wiMtTLGE6/31BByZdDadyMR3hIA5SyVcy1MUtNM+fIO/VyUWpcMrFm2tirg1YcHl
prkFmKkLEC02TPIVJCZ0BvyLaa4E3tUDANNBIqEVZsJ5uKf4c16/b9zACedbaBsG
ycHJ9J7wm//kHdd6olTvllAEnL53kmjH1uvdHrflroJTLrePG7jo9lwszes6FzXt
r9TCtMlwld05NXDqtlaRzYyOc3nq7ObtSscRMzNncCVW8vF8/5GtHa8xvzK//2p7
teInmT10mo9LulfIi+sXnWnBIOPDI8Y9JCTvh+5nF47CDfkJ1QYBu/Dba+/wcBFJ
fYgwKezkMtFWyEM1HvdvIjjMWmzywJntL7CESa4eS6LV6NB3bGvK78jgawqw/Tar
oU3KlJ0+C0as1jPaExW34uRJYmsCfzYAKGg1OJPw5MIxrDDORyh2bMx4Mq8De3fG
r+DSeWxBv2SULCSKGbMmb3wQAvxZwC938wjKPwgmSixxNTjKYTI=
=hCnO
-----END PGP SIGNATURE-----

--fctncskb4tvlxvsu--

