Return-Path: <linux-man+bounces-5371-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGwCBWYA6Wl5SgIAu9opvQ
	(envelope-from <linux-man+bounces-5371-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:07:50 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C0E449283
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13147300CBD6
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 16:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4744F37F8A6;
	Wed, 22 Apr 2026 16:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8dTGWqg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B959377EDC
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 16:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776877145; cv=none; b=OlkbV7Q/j0eBfExF+Kh4hvemAqbgxFdSugcPtnNpz5rmtApfVfMcVfzOsW7Km+FDfGRfSkYSThfCjTQ2srIZyHkRZrmno8OfVGkVsYy5Iv/89JWDAd0Nl/niKYdJ6IfQhcvQu3eZxD4+ScVPr1J9bvzxXw8xIhSA9iPCO2LMuSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776877145; c=relaxed/simple;
	bh=8yvxazAtJn/xc6tc1TvEJaiSRh+4mER7/M4w2QLuUpQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uneX5iPIbKX3Fp0GmvKJLeQVEAHk1DSL7MLhcSzO2xLTqusPzm/nAqPZoi4U04j0DAnPnCT1GZ951DPtUOZ1c0mxB/GQAmEZlqhX/+k1YuyTd1mBssfvsAna03TvKi/eqywIM3Vze2Y4K27Tf1SKbVNrQ2T6QHm75YZSYHANfMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8dTGWqg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0269CC19425;
	Wed, 22 Apr 2026 16:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776877144;
	bh=8yvxazAtJn/xc6tc1TvEJaiSRh+4mER7/M4w2QLuUpQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L8dTGWqgn7ezgb8cXF07NsTYBvWkikw1dzbEV0mMUG3O1pBmqApV29VsA2qeoetTQ
	 xWSMeKeGdh9oOGPBEydxtH7Nzyh8lpjX81/HBq10OXA2XtvcVWQ60wbgVyegCIRR9/
	 eNfLGd2ZWdnA/u5HIq8+g28jTtf93gBcofSkqrD5xGDWO3eyU89N4Eju5kLIIzZpQi
	 uzk2WKMdwfKOt22DSjAOT0HZINDltuMVh3qVDwQJTGHQTACgfxPEv0ZVomO63ttaZQ
	 WNyM6Q/SfNUqkqmn84OHGSKE/St38kcpT74NFfugjfoaSAMoVORLYNueNJ81bmnx6n
	 rJE00IsWLQQBg==
Date: Wed, 22 Apr 2026 18:59:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aej9PG3FsVRGaR3W@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
 <20260422163603.xvgyqulnl7knxeem@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ujvdrfue5zs2mahd"
Content-Disposition: inline
In-Reply-To: <20260422163603.xvgyqulnl7knxeem@illithid>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-5371-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 68C0E449283
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ujvdrfue5zs2mahd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man7, man2: document SCHED_EXT policy
Message-ID: <aej9PG3FsVRGaR3W@devuan>
References: <20260412181743.276652-1-yphbchou0911@gmail.com>
 <aejvcpOKmAxCnJQV@devuan>
 <20260423000434.G45a2@cchengyang.duckdns.org>
 <20260422163603.xvgyqulnl7knxeem@illithid>
MIME-Version: 1.0
In-Reply-To: <20260422163603.xvgyqulnl7knxeem@illithid>

Hi Branden,

On 2026-04-22T11:36:03-0500, G. Branden Robinson wrote:
> [stripping distribution down to just the linux-man list and Alex]
>=20
> At 2026-04-23T00:13:57+0800, Cheng-Yang Chou wrote:
> > On Wed, Apr 22, 2026 at 06:02:49PM +0200, Alejandro Colomar wrote:
> > > > @@ -218,8 +223,10 @@ This field specifies the nice value to be set =
when specifying
> > > >  .I sched_policy
> > > >  as
> > > >  .B SCHED_OTHER
> > > > +,
> > >=20
> > > What's the reason for this weird formatting of the source code?  At
> > > this point I wonder if this was generated by AI.
> >=20
> > Yes, I used AI for the formatting, which I should disclose it, hence
> > the weird layout.
>=20
> I don't know, man, I stuck a comma on a line by itself in a man page
> just the other day.  ;-)

I've seen several other clues in the patch.  This was the once that
confirmed it to me.  At first I thought that maybe the contributor could
not know that BR exists, and thus try that naively (I've seen that done
in other patches).  However, 2 lines below there the patch introduced
a line using BR perfectly.  That very much read like random LLM stuff.

There was also the arbitrary combined use of .P and .PP.  I suspect no
human would use both in a document, unless the surrounding style already
uses both (which could confuse).  Since we only have .P, the .PP came
out of nowhere.

And then there's the extensive use of \f (without brackets) and \(bu, of
which we have no cases anymore.

All of this was very suspicious, so I had to ask.


Have a lovely day!
Alex

>=20
> https://lists.gnu.org/archive/html/groff-commit/2026-04/msg00282.html
>=20
> +We prefix macro names with
> +_ifstyle()dnl
> +a dot
> +.RB ( . ),
> +_endif()dnl
> +the default
> +.I roff
> +control character\c
> +_ifstyle()dnl
> +,
> +_endif()dnl
> +_ifnotstyle()dnl
> +\&
> +_endif()dnl
> +in summaries and synopses.
>=20
> (Lest anyone hyperventilate, that's not a man(7) document per se, but an
> m4(1) document that _generates_ a man(7) document.)
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>

--ujvdrfue5zs2mahd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmno/lUACgkQ64mZXMKQ
wqnqQRAAjSPTf/8AwCFpIxJ74zv3KLqot/BxkdgguCeXIRtScN8ribuqpsx6/Wfq
XQvZNK/1TSplFJjm6sh/KDEcBAkVo6FhigHZIA5C+Qt78E4aFwenybOYD7Wr/qG0
h3hJdWmoxqPuyxq6WoM7AqErErADOJGyjRWIgVyN0FYJLtJmWBCLtNGYm8NtoeMm
QDuai3iBHBB8ylZlrBIuq7DLdtMo30YbUxE03LScz6/wyb/dgYAHW01SB4tVsp4c
18jH/xJAMguIjxgRzsz+sMcVb4h7scRUe8et4iLOIYMLweO41E2unaVGT2UpJJuX
mB9bDPkLTpZYwpsh1e1jrhc0Z69jLwJZrwZyN+yXhgxcwdqNvS7MiUF0xZtpFov5
i3Mh8fYRp+B+M2bASdi3PQMycYkb3+PX66juhjHy3q9/hdFF3Vx1Az8kxf9I3sGa
ZUWTKD6cpihzk1NQbHlDV8nDLZ63+h6Bo9sWKBRhhW2rYrkApSUxBPZDSwmG2w9x
YvSGd27uReBvVUC0sLECc4Cuv8WThOd9ZJ7gNVVE/2oTFtWlekg2bu+HOrVv83dU
bgYi3FAHjHIY8X2fl4SESke0ACQjHeYgJUM3aPUBQwO4RzGOkyO5Dt8bcXCH5WI/
MSUnFSYgu7YuKFHZj+r8UJPQ5Tpjlo5RjKFTos6Q6zo0uLJHzaI=
=wbLy
-----END PGP SIGNATURE-----

--ujvdrfue5zs2mahd--

