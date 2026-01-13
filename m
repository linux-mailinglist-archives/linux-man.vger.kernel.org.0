Return-Path: <linux-man+bounces-4804-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 95610D1B692
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 22:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7184D3035053
	for <lists+linux-man@lfdr.de>; Tue, 13 Jan 2026 21:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 809622D838C;
	Tue, 13 Jan 2026 21:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYu+s7eG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441152DA755
	for <linux-man@vger.kernel.org>; Tue, 13 Jan 2026 21:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768340055; cv=none; b=QXwxoOabaFpaimWHX2nSOc6upqWbErLGYk8Ae2ozTd2lDzhTGgMRn6qZfuHq5+iOQX9eVnaADfrqb55aZSdPV7uEPbR/dcvWnkmkujBJ96PUfVIVtWTQ3c/ZI9wQhikfEczLyzN+zgklGIAwWGs2PMzHG+CpvoiitzHLhcC4xkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768340055; c=relaxed/simple;
	bh=EcFNrKOMIneXuienn1+nmu7H17LBdP7GWoXxYz9q7zI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oLMUxbBrKgyMhiPbIYCE1u9TiAfIvUaN4ahCB+lFPfvINUlPP1vPbDL+QheGRL+aSQwglM26Ohlxjq+7RO00klDKg3cXlClMweJgjcEV7YYlAnXH9r7RkYL22Tpp6kaeDSTiEEU6btzpEdpWUILcYejhOPmduE/mvjpXSuwhbrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYu+s7eG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18C52C116C6;
	Tue, 13 Jan 2026 21:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768340054;
	bh=EcFNrKOMIneXuienn1+nmu7H17LBdP7GWoXxYz9q7zI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jYu+s7eGL6GzNv2kr4jKr+oxWXAoCQdUyfaHzPCwxugSL4cG/bASkuQdDgI0paiqh
	 dAeK5MB+F4YfRvR1wAKZoz49g1Ej33iZfK12tj5qFaX+EbZVjY8v0qXzdcDsNgNCEy
	 MB2W2MPzEzBLi+2QSIQWIptH7vZJnZZQil0dumCTt6RT8f+eAE3fhgBrcgveOXuvov
	 lCBQXdX59apnMxvk5dewdV+yl+wsSyEkA3che6+RPlhvD5yu6VBiRdROjOE90eU6Wj
	 GUijvA7QvtihGY00daIk9a4KqUFYVny9k00ClXzHLeJVZuIXjORpG/1XfkrJTuVL82
	 E0m/0KHXnkq/w==
Date: Tue, 13 Jan 2026 22:34:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <aWa1ljYArMmY5W9o@devuan>
References: <20260112194520.5854-2-gnoack3000@gmail.com>
 <aWWJ5VhPwvKCVwRk@devuan>
 <20260113.44fa9e91ef9a@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ywqmkrhzt5g5llhf"
Content-Disposition: inline
In-Reply-To: <20260113.44fa9e91ef9a@gnoack.org>


--ywqmkrhzt5g5llhf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH man] landlock.7: Re-group description of IOCTL access
 right
Message-ID: <aWa1ljYArMmY5W9o@devuan>
References: <20260112194520.5854-2-gnoack3000@gmail.com>
 <aWWJ5VhPwvKCVwRk@devuan>
 <20260113.44fa9e91ef9a@gnoack.org>
MIME-Version: 1.0
In-Reply-To: <20260113.44fa9e91ef9a@gnoack.org>

On Tue, Jan 13, 2026 at 08:18:59PM +0100, G=C3=BCnther Noack wrote:
> Hi Alejandro!

Hi G=C3=BCnther!

[...]
> > >=20
> > > The same change was also done in kernel documentation, linked below.
> > >=20
> >=20
> > Could you please add a Fixes: tag?
>=20
> Done. Thanks for sharing the handy git alias as well - this is very
> neat, I added that to my toolbox :)

Nice!  :)

BTW, I should explain the rationale for the format.  I based it on two
things: the format used in the kernel, which is

	12-char-hash ("commit-subject")

and 'git log --pretty=3Dreference', which is

	short-hash (commit-subject, author-date)

(example:)

	alx@devuan:~/src/shadow/shadow/master$ git log -1 --pretty=3Dreference HEAD
	b55a55aeb (lib/string/: Use QChar_of() to simplify some macros, 2025-11-25)

The kernel format is known to not be good enough, as 12-char-hashes are
known to have collisions.  And the subject isn't enough to disambiguate,
as some commits have quite generic subjects which also have collisions
(e.g., tfix).  Thus, a date helps disambiguate.

The problem with the author dates is that they're not correlative.  You
could have commits applied today that have been authored a few years
ago (consider a slow review process).  Commit dates, instead, are always
correlative (unless you specify a different one with
GIT_COMMITTER_DATE).  When disambiguating, you could look at git-log(1),
do a binary search on the commit date, and then from the few commits of
that day, the hash should be easy to find unambiguously.

I used the quotes, for consistency with the kernel format, and because
it reads better.

About putting the date before instead of after, it has several reasons:

-  Avoid confusion.  If I left the date at the end, one could think I'm
   using --pretty=3Dreference format, and thus think it's an author date.

-  Alignment.  The dates always take the same space XXXX-XX-XX, so
   having them first results in a visually more pleasing format.  Your
   eyes can find both the date and the start of the subject easily,
   without having to parse anything.

-  It allows knowing how old the bug being fixed is, and in which
   release it was introduced (if you know the dates of each release).

And in some cases, the author date might be important, which is why
I sometimes use ref2, but it's an exception.  When I use the author
date, it goes before the commit date, for consistency with how
git-log(1) shows them.

The dates are separated with a comma between then, and then with
a semicolon from the subject.  This makes it even machine parseable.

	alx@devuan:~/src/shadow/shadow/master$ git ref HEAD
	b55a55aebc5d (2025-12-26; "lib/string/: Use QChar_of() to simplify some ma=
cros")
	alx@devuan:~/src/shadow/shadow/master$ git ref2 HEAD
	b55a55aebc5d (2025-11-25, 2025-12-26; "lib/string/: Use QChar_of() to simp=
lify some macros")

The full format would be

	12-char-hash ([author-date,] commit-date; "commit-subject")

where [] denotes an optional field.


Have a lovely night!
Alex

> Will send a v2 shortly.
>=20
> =E2=80=93G=C3=BCnther

--=20
<https://www.alejandro-colomar.es>

--ywqmkrhzt5g5llhf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlmuk0ACgkQ64mZXMKQ
wqmf6w/7Bu0Zqwd89zEZAKRuHaD6EVcTcZ1AyABlrrR2Rr9bd1zauTUMP6zHXssv
HB3ENMVtWP4H08IirIsTgVahjrEenasSpo0J1iG49/ZqaVlk7+waPEhYzTwlUw7A
1VRfBGAY/hW8MHD9OOls1u7idrszQj+xZVdr1lkOU+FiwyzWXA6MeXYEdsQ8rcq3
adGp+dKrVfijCW0LddbFKvjP9A1p+DEnFwSDblJk86mPPEC8scy+NEMqJ0GJDPVN
vmn1KAYG9+njR4caeMl/7KaZh71XsCkmUMy2FU1bmls14qoz/wQlMEYs6n00499s
SDvo58woi0uih5vg55PqL6Wl+f5Q2qR7UCjL3FbwWGlhu2hmj4IOnA6/j/QHFxLa
V3BsWEQStjhTbymBHzHzkNuaUe/Lui0PZtrAaxXHqRTuwfH7Xk5nb5DN41xFYo53
xgAQXshiFfQl9Oj2CerjVT6PkT4oNiKCewCblWP9sWnhYJ58EiRYl9sIhLwlaHS1
38W/GEg9TsBL3YU650vahTZF3rda1Vv4Rv7FQb8+C1f1Rse57/7h/pJ7KOoQA0do
rDyNQ+IcoZU9KiUoT7Joc4BFAFXlgpqYBNE3fWcmAOVekUZcuXTVxtq5CYpNaeyi
/8Lyjy9/oakpGBN3E/sarA92f3xIRbEnEwuq4/m2uDdMx2vkyOQ=
=YyZQ
-----END PGP SIGNATURE-----

--ywqmkrhzt5g5llhf--

