Return-Path: <linux-man+bounces-5060-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKJjEGYIiWnK1QQAu9opvQ
	(envelope-from <linux-man+bounces-5060-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 23:04:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id DA58D10A629
	for <lists+linux-man@lfdr.de>; Sun, 08 Feb 2026 23:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 43C24300147F
	for <lists+linux-man@lfdr.de>; Sun,  8 Feb 2026 22:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D95D33B6F1;
	Sun,  8 Feb 2026 22:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsO8QC7z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619CD81AA8;
	Sun,  8 Feb 2026 22:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770588254; cv=none; b=E9Vf7UvO2PZf3DXmA21lBMoILMM9R4EajpEyEWkyU3nj2GYYwksE9HS/GsylT7l/uKU/lFawqGjcnLoXqP0TnnNyRgngMgWLU6xS8VHLVB1OnDsBhTiN4meYS6cygruB2xD/jGTyASK7zk3w9wVR28flO/XAus+DQUZXBcdRfgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770588254; c=relaxed/simple;
	bh=IiwCFqyKO+t0vzNixCT9hBcaIk3PdYX4GO74wz6Fexs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WXCtCTEaMSsvwZyPgwHSCCaKeUTA3UZT6wsS8f/s6Po58ycZwCMcLmuOBSRVq+w8aIHSUSCIrAXN0OZPmhhsEOzPhf1LuKQfuLsleVPM7GHoYJwNyuIfHCYzZXdTAI1ZENa7qiYPDjbdIwzwToOFOhzdXIhitXdDe3H7whysNQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsO8QC7z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B70F6C4CEF7;
	Sun,  8 Feb 2026 22:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770588253;
	bh=IiwCFqyKO+t0vzNixCT9hBcaIk3PdYX4GO74wz6Fexs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsO8QC7ztgwZQszM0moH9yrSrUSX1d9y2jfI/ncC/U4vbBRoAZ0bOokDSuq1UqzSV
	 s6hu5HRMZYNficfOJpojoMJYb6ByGjIC3ZA0gpSxSxk3+5ApJ8TOpeXNKkSH5SzCCf
	 j048bt+WkzXFFtUKvNDMtemK77W2DxPGt4TcXXg8HIeUCfQJpBG7Fc7SCKFJvIxL4+
	 bo/EyRoRLAupQQRTj6/tpR/tKyDnm+7gweQtzjS+r2ilYlUeDwwEEC+PgQWoaWxzeN
	 WgxMirOk9bfkejG9T/LYE5ds3JEvTcsJY9csffSLhzsvLJ3hCQq9ANEmUpqxJugfFF
	 9GTf2Nb68fSmQ==
Date: Sun, 8 Feb 2026 23:04:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <aYkHSQthFKL9TBxV@devuan>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tj454wr5bqwr4esn"
Content-Disposition: inline
In-Reply-To: <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5060-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DA58D10A629
X-Rspamd-Action: no action


--tj454wr5bqwr4esn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <aYkHSQthFKL9TBxV@devuan>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
 <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
MIME-Version: 1.0
In-Reply-To: <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>

Hi Carlos,

On 2025-06-27T01:14:47+0200, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Thu, Jun 26, 2025 at 07:01:24PM -0400, Carlos O'Donell wrote:
> > > Well, we got express permission for a third of the copyright holders =
in
> > > the last few months.  Also, we got no express notices in the contrary,
> > > so around two thirds have remained silent.
> >=20
> > You should track down the copyright holders and get written approval,
> > or restore the copyright notices.
> >=20
> > This is exactly the difficulty in maintaining such written notices.
> >=20
> > And why they are no longer recommended.
> >=20
> > > We could restore those that haven't expressely granted permission...
> >=20
> > Yes please.
> >=20
> > May I suggest doing a new release with the copyrights restored?
> >=20
> > > The thing is, as someone else mentioned, removals happen also implici=
tly
> > > by moving text from one page to another and not copying copyright
> > > notices, so how much does it matter an intentional rewrite of the
> > > copyright notices into a different form (but which keeps their
> > > copyright, as part of the AUTHORS file), compared to an unintentional
> > > removal of copyright by moving the text (these do actually remove
> > > copyright, so these are the problematic ones).
> >=20
> > Both are legally mistakes.
> >=20
> > The common utterance is "As compliance approaches 100% cost approaches
> > infinity" :-)
> >=20
> > However, you should not deny anyone the right to have their copyright
> > directly noted in the file, but you can encourage the generic use of
> > "Copyright the Foo Authors." You can deny the contribution entirely if
> > you wish on grounds that maintaining copyright statements is too much
> > work.
>=20
> Sure, if anyone explicitly wants to retain a copyright notice, I'll do
> so (if it was old), or refuse to accept the patch (if it is new).
>=20
> > > By rewriting the copyright notices, we'd actually be honoring the
> > > copyright, even when text is moved from page to page.  I think that is
> > > more important.  And since all explicit notices have granted us
> > > permission, even if some have remained silent (in some cases, their
> > > email probably isn't monitored anymore), I think we should go forward.
> >=20
> > I agree, but you need permission from the authors.
> >=20
> > I disagree that man-pages should go forward with the current changes.
> >=20
> > May you please restore the copyright notices and cut a new release?
>=20
> Hmmm, it'll take some time.  I need to stop and compare the both lists,
> which are rather long.  I don't promise it will happen soon, but I'll
> keep it in a TODO list.  I'll also try to do it at least after
> September, when I'll be meeting Michael in person, where I'll ask him
> about his copyright notices (which represent a huge percentage of the
> copyright notice lines).  That will reduce the work significantly.
> So, it might happen around the end of this year.

I have finished working on this.  I've restored old copyright notices
=66rom contributors (individuals and otherwise) who have not expressed
content with the unified notices.

I've pushed to a branch for now:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dlicen=
se>

I'll work on the new release for the next few days, and will include
that commit in the release.


Have a lovely night!
Alex

>=20
> Once I start doing that, I'll do another round of asking the remaining
> people about their copyright notices.  Hopefully, there'l l be few of
> them.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es>

--tj454wr5bqwr4esn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmJCFoACgkQ64mZXMKQ
wqnq0xAAtTKzocqdU3XXlV8FbwHo/zEBazBQgZ/sTqGiPYA2hrCkVLvU0Wlqfp08
D6SDEBFHWUIo0RGbbmsOmJ+KDYw0nJ82VhpeVwiKh12YOPS2Pb5ryKdJzDzXXa1C
F/L/um4vwcA2w++3DOVW3FBwXnpEvfbIJEf8gnP30coAGRqJvARbg5yCiFuRNal3
Ry6aTW50gYm0YyXcspY5RNXtyesPUsh1uf3fKJboZk6sCxpTvmgdwbzEMLpJqt9a
8VGv7rLSXPeHf/AcEo3XnaPiPUVUAr0TV6waEeze7IXw5/X8LNdAut8HLV5uEDQQ
Rd3wGpjD80fCxrVnPdp5vNl6clRbz5jxx/2kRbtSpa0xLX+ZC3hInwzC+VgsxKmk
wFTyFFwaj1POGG5C6rAr+UaJqVN5ywdoKJSnjrQzFeMc3a3Jm24X3b0xQWMS/kAX
Ugdq9Oe+D3+dgYFZNSkNpq1ol/GBraga/R+Y8mze5A5F9CgPmaIKIIj/Ys4hWKGW
+4otuo2tFfeVqsEpECi0toj93vd1SwI16ErjCLvN2vTDwVs7ouWZo0umcaww5h1R
glM9sHOEU9kO3SdrbwzkM0tE1CgKsqZt4DkjNFHPvpFcjAOWJ9Zg8xvGNGiN5MDX
0zIsWkMAUqnEqfrbNOmMLWhvONQHuXAyS3Ke2NFwJeMW9CUUc0I=
=p/EB
-----END PGP SIGNATURE-----

--tj454wr5bqwr4esn--

