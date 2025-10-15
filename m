Return-Path: <linux-man+bounces-4150-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BDBE02AF
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 20:26:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 37A7D5083E6
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 18:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5F932548B;
	Wed, 15 Oct 2025 18:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaGnO+xq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10C3325486
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760552525; cv=none; b=KUjHnGtANfDVdFL/hVWUwso8GLifUAFYaJbF9nxn3gLietWj3Mg0WJXMyu6I3wB7X20IoPhsCKJ3EaNAgfdZGYkh5/n3iMK60i4m1Aw0xL2bFV9l/bD5JFufp6uQzSkotLGXvC0tVGtejFAsfHT3zkIj/QEXQKD3qePyU1z6gME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760552525; c=relaxed/simple;
	bh=K4qJS90uihd7Kyzjs3byfcw+MBTDOX6p4YZDFwW1yDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YFeWac7Q7cD9jUOxHqLND+4KJ7iiDgtUtedGjwhwp2MK9gaxs+du18dmlCxCe3t7Ug1cAtQpvQ1ihRVNf5LSS2wd+AHITkta1lEdHXaV5ffjlGfPho6sK7JkK/N2ECNQ0II1KO0bOGdM1+Wwqznxd14ElizNgSuoZEEIHqbKCh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaGnO+xq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 531EBC4AF54;
	Wed, 15 Oct 2025 18:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760552523;
	bh=K4qJS90uihd7Kyzjs3byfcw+MBTDOX6p4YZDFwW1yDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aaGnO+xqUs1FjEdTKECASv+F5tHaETotsadmMlhKrrzi1Rk8ostXNngQReiKjv8jV
	 uIHYoY6U3OBTMAnpgATgBHX/SuettEDsvAo52URsuL9j+KHctEoNe0SRusNZ7mIhse
	 nYsw8+MW7g/YKLNngqdjjblkxHY6p6bkE0W+FuCjl/1kU464iA/Jnw5o1MTCWZbQ/T
	 9PtVAtnoearFxVi/bWlQK9WOj0ka21DZ+tmz9GYJKC/jJKSV5oHIRt737LoUx2cC+k
	 I4DGPw385tuYpyxiFxHvaDfjA7LqyGmZFU0RsHC99VsKVfZBJKaSwIm/FnYKPM2P6C
	 Wzr6PYcN7ro0g==
Date: Wed, 15 Oct 2025 20:22:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jskc6iyd6psiwqgz"
Content-Disposition: inline
In-Reply-To: <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>


--jskc6iyd6psiwqgz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v4] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <7n2g7ccnlfcjm2pgptwwuq3pn6dpnrwvqfxa4exa2hnjikajwk@men5xbekuoop>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <4599445186b3e659166f5c73f682467703396e9e.1760543375.git.alx@kernel.org>
 <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1924e1ed-bb96-4a08-a47e-8e77857fa431@redhat.com>

Hi Carlos,

On Wed, Oct 15, 2025 at 12:03:07PM -0400, Carlos O'Donell wrote:
> > In v4, I've added a paragraph clarifying that AI assistive tools are
> > also included in the bad.
>=20
> Isn't this the *opposite* of Gentoo's policy and QEMU's policy?

It is the opposite of what Gentoo claims their policy says.  But it's
what my read of their policy says (and I'm not alone there, as the same
interpretation was mentioned in libc-alpha@).  They should clarify their
policy if they don't mean what it says.

> We should base the contribution policy on things we can objectively
> measure and claim.
>=20
> Rejecting AI content in contributions is objective and measurable
> since you can't attest the DCO clearly with this content.

Rejecting AI content would follow the first concern, but the second and
third concerns would be entirely ignored by a policy that permits AI
static analyzers.

> > diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> > new file mode 100644
> > index 000000000..faab2df1b
> > --- /dev/null
> > +++ b/CONTRIBUTING.d/ai
> > @@ -0,0 +1,57 @@
> > +Name
> > +	AI - artificial intelligence policy
> > +
> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of AI tools.
>=20
> This is OK, the forbiddance is on the created content.

	"created *with the assistance* of AI tools"

If I write some code, and iterate over it by passing it through static
analyzers and editing as appropriate, I'd say the code has been created
with the assistance of those tools.

Let's consider this example from The Lord of the Rings.  Did Celebrimbor
create the three Elven rings with assistance of Sauron?  Sauron did not
produce the rings, but it influenced the author enough to introduce
vulnerabilities in the rings.

> > +
> > +	This also includes AI assistive tools used in the contributing
> > +	process, even if such tools do not generate the contributed
> > +	code.
>=20
> I object strongly to this paragraph.
>=20
> It is the *opposite* of what Gentoo's policy intended.
>=20
> This is policy over-reach into the lives of contributors.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--jskc6iyd6psiwqgz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjv5jwACgkQ64mZXMKQ
wqmZqhAArTa/AEgvRQenlG0lfqZH/X+TcVKDW37iaNxyr1pTVZlFjxcjUYbTYoK6
fZeLA4w679W2+QolKcPC4XLn6TLFa7SLHVBr19y4Rig2m1XoJOgnGmMvVSTalTFs
/31CwJINgBvZRQKRiFVpKKm5odfjNYWW/pM6KqwcJTozyiDRKCpZWYxAaXI5UZ/t
VRVaSR9fj8r2ot46EDqh2LTN+3jelZfBU66so1txc6r/1chfmNmknkjy5YilFDvf
u2bqSPdyJ0HoRhAeBFwKrcq48V0AgIxIVz3FM/WHLizLyfNpNzciWK55g9NIfOku
1no/5uEVCl5W6zhpq28wuWnGhmql/6UzcS+NF6+O/1JeRYbLCXrNH8FxFtkynC6+
8JCy6ItLP5bgqZgEGOq71QTs5Zcr3mnrkoI5Kbfe1e8+R81RrW/DDqDDKLMavVee
+OwKxJN/k56q5DaXLXjRPfqO+5xX0h89kZOPQVOk+M5YAMz4p/Z0DjKgQX3dE2kd
bEGH5KaaWfFvK7NOqi94eZcZoz23IyWZYKb3IzeAiR2cTmyyM86bwtjp555j2GSB
jCok97GE2HYPCfIOGufhZrlePLPjlyasxi1EWfNnOF8PoZdSOrrJctXSOTr+sRIg
v95Auv5KIn+Bysu3zA0J0ihsUGRv+weusCqtmNC6kHngBlPBRR4=
=09cy
-----END PGP SIGNATURE-----

--jskc6iyd6psiwqgz--

