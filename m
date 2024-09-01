Return-Path: <linux-man+bounces-1760-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63E967589
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 10:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 84E5D1F21A76
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 08:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2673143C4C;
	Sun,  1 Sep 2024 08:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqVVX9vc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25E1A94B
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 08:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725178425; cv=none; b=KZMttnoeozDxmE4ZhWNv7O/S1nthxUX5U+xpnIvWcCFWCgdEWW728vbBdmNbGbN7ajZrSjENLNKB3xkR99HsBbIWlEU6/+I06qEFuGxr3sVRRnxYBPpZfNZKVVKT4tbHdI9mOfBkMBTp9/B+kvZHtClLFtrQsyCJS/BlHr8CM+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725178425; c=relaxed/simple;
	bh=fm2lsGnMneVTimgDhPv99f/WyIPvU+yKI9jFiLQz82g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dDXAlaYiO+JRHz1Ue6fMWzpOzOXaC+RK0RB8GMl8pkaYuWdHmH94b9ECPnUdgGAcLwI+IF0oZGq9Pc0dI8k2ioemkz4MDvd9hy7i6EgbWZcdLxHOcXKMY4zCf8GXpU+2ItIzmBPAsGTpYdFOc25e3NR6pXelM/ZMpB55UzdIJl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqVVX9vc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ABF0C4CEC3;
	Sun,  1 Sep 2024 08:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725178425;
	bh=fm2lsGnMneVTimgDhPv99f/WyIPvU+yKI9jFiLQz82g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dqVVX9vc3vUT2WB78lbTLMKU5UJejceFTWAg09VXOUTy55ff7RY/X1gxsoR2/EGqk
	 2UI84fPjhnyCI0CBi29MnPy1Jfdb8+Dff1LSnvigzW4MgAy271kbM+nejIx5c2ua2I
	 PXaV6eLkDZGFFHu15aedh5iCBGfbp+F1J/LLMq4ZcVFQIf+lI8DNsb9Ihsr/oaYmpk
	 ZKnxWUBKcV70XRwuTh9T3kS2/SHY9Unl0AC9iwNXS6kEOlqmMXxdAG0eFsFrQBAnbH
	 O3479ZWCYeRxXvMOK+1e0BZNk1qrIbfwewU/72vE+eV0tN7kJY2eD8M7bP4jjf1l9z
	 X5/sUQerowTIg==
Date: Sun, 1 Sep 2024 10:13:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
Message-ID: <6r7eowwv4d4oleyqkqcmqekoxd54dcaayklmqmyyuvtj7jmfjh@fdgsuqxrnpr5>
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
 <20240831221626.b2t6knmfdqc54rm2@illithid>
 <cq6ykykosgn2ytewgmx6rwmvnqm37by5bfedvk7ywkzz3ihwhr@6kwfxjqly7cv>
 <20240901025912.l6rpcee2d6gzftcn@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mvmsd5xpxltglfmm"
Content-Disposition: inline
In-Reply-To: <20240901025912.l6rpcee2d6gzftcn@illithid>


--mvmsd5xpxltglfmm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
 <20240831221626.b2t6knmfdqc54rm2@illithid>
 <cq6ykykosgn2ytewgmx6rwmvnqm37by5bfedvk7ywkzz3ihwhr@6kwfxjqly7cv>
 <20240901025912.l6rpcee2d6gzftcn@illithid>
MIME-Version: 1.0
In-Reply-To: <20240901025912.l6rpcee2d6gzftcn@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 09:59:12PM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-09-01T00:30:26+0200, Alejandro Colomar wrote:
> > Using indentation for the scripts (and cat(1) before a script starts)
> > would probably help.
>=20
> Ok, I'll do that in my next submission.
>=20
> > > > Could you split this change into some simpler smaller patches?
> > >=20
> > > That's harder.  It's a scripted change.  I don't think breaking it
> > > up by individual sed commands is going to enlighten anyone.  But it
> > > would be easy to break it up by affected file...
> >=20
> > Do the individual sed(1) commands produce good states?  Or are they
> > temporary steps that would not be good by themselves?
>=20
> How about this?  How about I improve the internal documentation of each
> sed script so that it discloses the sorts of case to which each
> substitution applies?

While that would help, I still think that each case should be handled in
a different commit.

Have a lovely day!
Alex

>=20
> $ cat fix-man-page-refs-in-tbl-tables-1.sed
> # Rewrite man page cross references inside tbl(1) text blocks to use
> # man(7) macros instead of troff(1) font selection escape sequences.
> /^\.\\"/b
> # Case: (handled in commit 9d21f97766, 2024-07-27)
> # T{
> # See \fBchown\fP(2) for
> # T}
> /T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) /\
> .BR \1 \2\\"1A\
> /
> # Case:
> # T{
> # the map that is loaded by the utility \fBmapscrn\fP(8).
> # T}
> /T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^0-9a-z]\+\)$/\
> .BR \1 \2\3\\"1B/
> # Case:
> # T{
> # by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
> # T}
> /T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\) \(.*\)/\
> .BR \1 \2\3\\"1C\
> \4/
>=20
> I'll be taking out the injected "1A", "1B", "1C" comments before
> submitting.  But they were helpful in development.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--mvmsd5xpxltglfmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbUIjYACgkQnowa+77/
2zIRIA/+PjAfFcPFzKW6eZs7u+0gJicDkgYJJvqMVZcS1A2RhoaL8mi7P+GXHRLV
MwRSislWkDlmY5RCoP7SKfqeWUz42uoLSZopeY06Ku/4KJ9ETmVA+th1XjGWV6kz
Tz9FpaOvR2iDlKGNNzPA8FaNlA/1oVoMAeCbIdFmmJSoRXkv8FFi9hBnyg0/n3fs
xeks7t4jFm29YJzJkEYxUPtNQLZjsJHZ5W7QjZAamZu83yaE8H4J+o8YGEjEpK5P
2p1kQkV1UHdpSKEhbC7EUmxGR/0m/hBpq319hgcJ5gBsbHV4eGrX3VOtZVQSamtI
DknqSQ1F2967YYuPzAZTujg0dRzLbqf/0RzmQHkHNLQOTuQXslXjQEFdHtPXgD5T
Byc5OuxH1lOz79Jvi7OMAF8CGylAsStmH6H/K9ARXMALUAI43WdqAxhUk0wRkwSk
oLo9pvOyhjepj0A37Of42lMM7uKS+x7Yt58O+DwXmKyJr5VLmTNKR6fz/ArDHlPO
wLzIrSDFUf3G6PBTt/pWr4WfI01i6lp/zHz6HmtxBP2i+5knbg3CIm0Kx0uU0kDr
5BXTV/wYXH/jtQ+n978I1QQ5vSD2C0iRpTKgdBcXrdge3YZGgg56NzeiSAihwbRk
85Y1M3j8i0XkQyYk2t9B1sciabk4hfgnzlAtdWsw9+pp2iMu/sU=
=xEam
-----END PGP SIGNATURE-----

--mvmsd5xpxltglfmm--

