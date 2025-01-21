Return-Path: <linux-man+bounces-2278-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D8BA17563
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 02:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E3317A3BE4
	for <lists+linux-man@lfdr.de>; Tue, 21 Jan 2025 01:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE0320DF4;
	Tue, 21 Jan 2025 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5xFZKUU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D41D7464
	for <linux-man@vger.kernel.org>; Tue, 21 Jan 2025 01:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737421493; cv=none; b=fifgPXKaM0fIfuxJl/SkvuH6vk73KhPwmBWiun+CFvjv6Sp8N1IIRgvS2Z0/Vu/N98Q+/cjTIxtYrTeCOUVQmpogRbDYmAWy07AXNVXjmBxcrqJKF1wJqdnoxLk3HVOckKwfxKd7z+w0JAMTjEqu+7LyNhLb13EB8b+9roWaTrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737421493; c=relaxed/simple;
	bh=cHE2x0NotFxETz3xT+YVa8yeaMLDCqj3Wk08rHlr0Ys=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jT7rSRVzuhNu6j2rQp2wwrWfCspbAIAUnbkrn2RozXOOqI/sRuDtgwD88DxqR7/t4DQlSorOnqQ2wrsCuhbfYYIeBb5/llZfuXTSxRPNsy86kRQrW0yElU8u3Vs8Tt0OsKASnuJV/l7vVZj5oXlgq/hw+pGPeJEYc5Zft9quiaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5xFZKUU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07F1AC4CEDD;
	Tue, 21 Jan 2025 01:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737421492;
	bh=cHE2x0NotFxETz3xT+YVa8yeaMLDCqj3Wk08rHlr0Ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N5xFZKUUY1Mi/5mhI+COPo97y3qauKNfcE+x/UhqG+tiG+YITJZxGs9+WCHXs6KAb
	 skQ+CeHy2fRYka2Dx820L+2gMmlyjrw4oXnKu2S5GMh3MBZ3BTeWwSUina0rTCJUJo
	 v7l9ognOd3il4txW19xTPiNVp42PAucv+8fSNoBEOSocERUSQrUYi69Fj0VHkfhoMW
	 7e7e22UGTaRYtlx9jwlIfNwFoCNuLi1U8/sNZPIocaTYBeheFrL7hJgOLSaILS0bf4
	 hkRNpu6pWSakNof9yhFLWsAnfyYAmWL0fiIlFd7aKA8teQ1UXd5Q0pXrSoV5aIFMuP
	 oUDYtH/9aVEQg==
Date: Tue, 21 Jan 2025 02:05:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: Re: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
Message-ID: <d5nemzxvqzwe4ob5sgozb3cnpmqazhyofijl6e2sq6cktemktm@iukubkv7rosm>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
 <20250121002606.k2vwusrmy6hwqm4y@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qv7vr3pcljxxzz7w"
Content-Disposition: inline
In-Reply-To: <20250121002606.k2vwusrmy6hwqm4y@illithid>


--qv7vr3pcljxxzz7w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org
Subject: Re: C code style for Linux man-pages examples (was: [PATCH v9]
 man/man7/pathname.7: Add file documenting format of pathnames)
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250120190632.127206-1-jason@jasonyundt.email>
 <ut6qefo7rakabqpov6ukc32eq527cfiaybbtcb5mpccvwusfp3@gqvy4xllcuc5>
 <20250121002606.k2vwusrmy6hwqm4y@illithid>
MIME-Version: 1.0
In-Reply-To: <20250121002606.k2vwusrmy6hwqm4y@illithid>

Hi Branden,

On Mon, Jan 20, 2025 at 06:26:06PM -0600, G. Branden Robinson wrote:
> [even earlier]
> > Please group declarations of the same type in consecutive lines.
> > Shorter type names up and longer type names below.  For same length,
> > please use alphabetic order.
>=20
> This style of feedback is producing a lot of churn.  Jason's going to be
> well into the v-teens before this patch is accepted, at this rate.
>=20
> It appears to me that what is happening here is that you are iteratively
> developing a C code style guide under the banner of a man page review.

Not really.  I'm just not looking at all the code at once, because it
was highly unreadable.  Also, I expected that if I told all the issues I
spotted at once, some might not make much sense at the same time.

I like reviewing a small number of issues in each iteration, and don't
load the contributor too much by pointing out 100 issues in their patch
at once, which might get them the feeling of "hell, where do I start?".

That coding style I already use it, and should be mostly the same as all
other manual pages in this repository are following (except that maybe I
haven't changed a few things in some existing code because the bar is
slightly higher for additions than for existing pages (hysteresis comes
into play)).

> If Jason's okay with being the test subject for this procedure, then
> there's not exactly a problem here, but if it were me submitting a man
> page, I'd be getting frustrated by (or before) this point.  I just "git
> pulled" https://git.kernel.org/pub/scm/docs/man-pages/man-pages/ and
> checked "./man/man7/man-pages.7", and practically _none_ of the rules
> you've been stating to Jason is expressed there.

Yep, the C coding style is not stated.  But that doesn't mean the
project doesn't have one.  I haven't written in paper one of my own, and
my C coding style is an interesting mix of

	<https://git.kernel.org/pub/scm/git/git.git/tree/Documentation/CodingGuide=
lines>
	<https://www.gnu.org/prep/standards/standards.html>
	<https://google.github.io/styleguide/>
	<https://www.kernel.org/doc/html/latest/process/coding-style.html>
	<https://nginx.org/en/docs/dev/development_guide.html#code_style>
	<http://doc.cat-v.org/bell_labs/pikestyle>
	<https://www.cis.upenn.edu/~lee/06cse480/data/cstyle.ms.pdf>

(in no particular order.)  I should probably write my own somewhere, but
that takes some time.  I'll try to, at some point.

> I propose that the submissions of patches to the Linux man-pages not be
> a black-box process, with you serving as the oracle that accepts or
> rejects the input.  I admit you're offering a bit more information than
> a binary semaphore (ACCEPT/REJECT), but still, it would be better if
> Jason, and others, had a "Linux man-pages example C code style guide"
> document they could consult so that they could anticipate more of your
> objections.
>=20
> If the construction of such a document is what this precise instance of
> the process is groping toward, good.  If not, then I suggest that it's
> about time to prepare that document.
>=20
> I don't dispute that having a consistent style for code examples in the
> Linux man-page corpus is worthwhile; I do think it will, ultimately, pay
> dividends to harried hackers in a hurry.  But it is precisely to the
> extent that style guidelines are arbitrary that they need to be
> documented and easily located.
>=20
> On different, nerdier subjects...
>=20
> > Please don't use braces for a single statement.
>=20
> I think they are helpful for clarity.  Yes, modern compilers will warn
> about misleading indentation.  I still think braces around any block
> guarded by control instructions are a good idea for the human brain
> interpreting code.

In GNU code, with 2 spaces, definitely!  :)

In the civilised world, I think a blank line after the indented
statement is enough for the brain to see the structure.

On the contrary, I think that braces clutter the code, and take me more
time to read.  My brain doesn't even read indented stuff, on the premise
that it's unimportant code (usually handling error cases, whose handling
is unimportant for the main story).

>  And the presence of the braces costs nothing at
> translation time.  Does any compiler construct a new stack frame just
> because it saw an opening brace in the input (that wasn't part of an
> initializer)?

I only do it for readability reasons.  Performance should be the same.

> > Please separate declarations from code.
>=20
> I think this is considered old-fashioned in some quarters.  It has been
> valid since ISO C99 to introduce declarations anywhere, and a common
> style is to place them at, or adjacently to, the point where they're
> used.

I like C99's for-loop variables.  But mixing statements and declarations
makes the code less readable.

I like being presented the protagonists of a function, and then told the
story around those protagonists.  Usually, by looking at the
declarations, you can already guess most of the story.  If the story is
so deep that some protagonists have to be presented mid-story, the story
is complex enough to be separated into a helper function.

C89 declarations serve as a reminder that you should break your
functions if they're big enough that you lost track of the declarations.

> The traditional arrangement of placing all declarations at the top of a
> function definition arises, as I understand it, from the limitations of
> early compilers, which were often--and sometimes had to be--simple and
> small.

Don't forget that brains keep being simple and small.

>  When the compiler read the function definition, it could
> generate an assembly language preamble for setting up a stack frame that
> reserved all of the room necessary for any storage of automatic
> duration, and then start translating statements into instructions at
> once.[1]  (A test of this understanding would be whether any pre-C99
> compilers rejected "late" declaration of automatic variables, but
> happily accepted them for static or register variables, since those
> would not complicate stack memory allocation.  I'm not quite old enough
> to say; for the first <mumble> years of my programming career, GCC was
> the only C compiler I ever used.)
>=20
> Anyway, this is another of those matters of taste, so if mandatory early
> declarations are to be the rule, you probably want to say so explicitly

Yeah, there are many things I should mention there.

> so that you're not mistaken for a grognard who either isn't aware that
> ISO C99 happened, or, like Dennis Ritchie, refused to countenance its
> its existence with a 3rd edition of its central textbook, and eventually
> ran out of time to do so.  (In a 2000 interview, he said it "needs to
> quiesce for a while".)[2]

Heh!  While I wrote (literally) a couple of programs in the early 2000s
with the help of my father, I didn't program again in C until after
2011.  The first standard under which I programmed my third program
(first solo programming) was C11 already.  :-)

To me, C89 is a dead language, and C99 is already getting into the same
category.  BTW, I joined WG14 (the ISO C committee) last year.  :)

See also: <https://thephd.dev/the-big-array-size-survey-for-c>

> Finally, I'll note that asserting a dichotomy between "declarations" and
> "code" can be misleading.  Declarations can generate assembly language
> too, and not just when they are coupled with initializers.  I'd say
> "declarations" and "statements" instead,

Makes sense.

> or avoid the issue entirely and
> say something like, "group all variable declarations at the top of each
> function".


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qv7vr3pcljxxzz7w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeO8roACgkQnowa+77/
2zJPig//VvG4AFlsRtb+WLCzVO/XvDbh1Mk/GCG56SCgP56CZm8cMUyFqaI86IYc
olR04kGvGF0+7d7BQ+HPAl8am+V0Z+VBoZkkrl1YrnTzjSRboyOLC4RmOWUo5cJn
WY8TaoZB2pt8yZ/Rf7vUu0qA/4BIjXKiS8xQKIPMx1BuOEPWx0umTsyOJhls9bnH
tt6EjV0uJW7K22a9OAogmJ32ChcFWnIc3LuLTMiYo9WnmwRmHSOTJQdypaI/L4N5
NL3k/Hc0jyfztOGGWHiFaARDTIzDuzBtaiJgv0vxE6ij8Iq235VkelCgiuc5Y7tb
AbgUdiUMe2DUSzSw/2aLuNcjEhX62j+Z1iu6TgUHLHWs2gTIixto80e/9ayTQggW
Urq4xf801870fibq3U1XyiXJXkUmBzEMdxuE48jqgd0OysNlWtNl5625VgDyJPMQ
1FuZXc4cnyV5KaDQGaoLiYfWw7zc3bD6bDLseWhe0h/HYdcQ3hoKe+mmX9wSid+v
3lAb148g+RAKF0X2+hMNoU3L57lHGxnkS1Tr5eu8kf+4RkCyzrPS1TqSPk/PyTS5
4ybYtXItPIGy5uAcv5CBszmxuHvbyIdZ/ra/PY5HIPVd1BwkBgxXUJPpTvnzO7Hm
1KMdmEne26XRw4baig6qfLqWIEa8zxp2bVXbWnecqXxCvSwPo+A=
=HQjp
-----END PGP SIGNATURE-----

--qv7vr3pcljxxzz7w--

