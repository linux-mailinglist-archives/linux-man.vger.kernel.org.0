Return-Path: <linux-man+bounces-4202-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8663C14C67
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 14:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1B2564F6693
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 13:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DF8F3314AB;
	Tue, 28 Oct 2025 13:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyaQkh3z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC23C308F11
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 13:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761656956; cv=none; b=K+KZVvOAjJbLpNAOEoeFrDK+/XTb+2sZBY7UZGQFYc/ZfgzdIYORPGtmx/dtvN014YSZL6dSWaU2QjDdzqKlVhDtg8IxBTX/1feKju/5oGAQLay6ehgRLiAR7Fj4RXrXFmvHgd79ARDVtMCqg1NZckOm0+LUkhJdqnMo/sJ+65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761656956; c=relaxed/simple;
	bh=seup9dETNAtOFEotfLxqGCE7lmrFx/fdb5ium7A3ck4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wjl+XatUBo7zZBJdfWlzNo4FNhkVL+03W+Ymr/UypWt3madg36hONxhmTBqMncBYBGulZt3zXkIXBawpmVnXerSE81/spQeofocRIDvNALIRfVqVs9ZOxwIZwZ/Jde5lUxij4eWrKOwarURvBmOWxfreQcB9Ov7tiDbhhEHnkqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyaQkh3z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21BBFC4CEE7;
	Tue, 28 Oct 2025 13:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761656956;
	bh=seup9dETNAtOFEotfLxqGCE7lmrFx/fdb5ium7A3ck4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MyaQkh3zLKAjsh14Rqn+SdKfi3Ju/Op5RhN5AkgGflJdsu2DEiXTAp2SKbWviRbww
	 4BdhHPngXaonIJnth5Uvrmvsu89sGhfdqJM+AjbsY8jsiIBt8qIttVmcEZ745iCS+K
	 vYnal86DSQyD2B4Yc/1XVpSUPKFteWJHkEd1+lM0QzUIOABhiqzv5SEJFuCoIkesLq
	 PlarH9JpUvgYAXHmsrPEJXkk7KlcMxcpdk152+t2a3lxi5PxY1V2CPBnH0qkNzdSQ1
	 XkCGYy5m2gl9psGiG9xIUBvzAdnda4zoS6TGMsA1Pp3o8zu/Wju30BBO3Z1pbGdUGU
	 u37hOgVjQR9kg==
Date: Tue, 28 Oct 2025 14:09:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>, Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v6] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <zmid4picivx2s2uivgphtuzx57yl7omvrff5cp77zgxzoqiaiv@kp5ze5d27mq5>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
 <bfc8e849-c0a2-4ae3-a2f4-df14c34987f3@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qx2lt65nk3dyives"
Content-Disposition: inline
In-Reply-To: <bfc8e849-c0a2-4ae3-a2f4-df14c34987f3@redhat.com>


--qx2lt65nk3dyives
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>, Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v6] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <zmid4picivx2s2uivgphtuzx57yl7omvrff5cp77zgxzoqiaiv@kp5ze5d27mq5>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <07d0b354caffa459dd8a40d31fefcf5315513a40.1761586102.git.alx@kernel.org>
 <bfc8e849-c0a2-4ae3-a2f4-df14c34987f3@redhat.com>
MIME-Version: 1.0
In-Reply-To: <bfc8e849-c0a2-4ae3-a2f4-df14c34987f3@redhat.com>

Hi Carlos, Sam,

On Tue, Oct 28, 2025 at 08:31:40AM -0400, Carlos O'Donell wrote:
> On 10/27/25 1:29 PM, Alejandro Colomar wrote:
> > This policy is based on the Gentoo policy (see link below).
> > However, I've modified our text to be more restrictive.
>=20
> Looking forward to a v7.
>=20
> > Cc: Carlos O'Donell <carlos@redhat.com>
> > Cc: Collin Funk <collin.funk1@gmail.com>
> > Cc: Sam James <sam@gentoo.org>
> > Cc: "G. Branden Robinson" <branden@debian.org>
> > Link: <https://wiki.gentoo.org/wiki/Project:Council/AI_policy>
> > Signed-off-by: Alejandro Colomar <alx@kernel.org>
> > ---
> >   CONTRIBUTING.d/ai | 68 +++++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 68 insertions(+)
> >   create mode 100644 CONTRIBUTING.d/ai
> >=20
> > diff --git a/CONTRIBUTING.d/ai b/CONTRIBUTING.d/ai
> > new file mode 100644
> > index 000000000..63cf3d548
> > --- /dev/null
> > +++ b/CONTRIBUTING.d/ai
> > @@ -0,0 +1,68 @@
> > +Name
> > +	AI - artificial intelligence policy
> > +
> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of AI tools.
> > +
> > +	This also includes AI assistive tools used in the contributing
> > +	process, even if such tools do not generate the contributed
> > +	code.  For example, AI linters and AI static analyzers are
> > +	forbidden.
>=20
> In an attempt to simplify the policy I suggest dropping the second
> paragraph.
>=20
> Leaving just:
> ~~~
> Description
> 	It is expressly forbidden to contribute to this project any
> 	content that has been created with the assistance of AI tools.
> ~~~
>=20
> If someone uses a linter or static analyzer *and* includes suggestions
> directly then that is content that is AI generated and not permitted
> (covered by the first paragraph).
>=20
> The second paragraph admits odd interpretations including questions
> like:
>=20
>  * If I used AI to summarize a page for my own understanding, am I
>    forever tainted by that use and unable to contribute?

I wouldn't say forever, but I certainly don't want you to use that
information in your contributions.  As I discussed in an LWN thread,
you may be spammed by AI tools (e.g., your browser or IDE or whatever
may show you suggestions), but as long as you actively discard that
information in your brain, I'm okay with that.

If you say something like "I accidentally saw something from AI, but
I promise I didn't use that information", I'm okay with your
contributions.

Similarly, if you've ever contributed to GCC, are you able to contribute
to Clang?  How much is our brain tainted by GPL?  As long as you
actively discard the knowledge of GCC internals that would result in
copying copyrighted code, I think it's fine to contribute to both.

>  * If I used AI to translate a page to my native language and then
>    used that knowledge to support my changes in the future, am I
>    forever tainted by that use and unable to contribute?

Same here.  I would like you to try to forget such information, and
regain it without AI.

> The understanding of "contributing process" can be understood to span
> years, decades even, and as such complicates the policy.
>=20
> In conclusion, I suggest a simplified policy that doesn't impose such
> language on the contributor.

I'm not sure about that, as then it could be interpreted as not
prohibiting using linters (it would essentially be the same wording as
Gentoo's policy, which some interpret to allow AI linters), which I want
to prohibit.

Maybe we could add something clarifying that as long as you don't use
the information at all (maybe because you're spammed by your web
browser, or your IDE, but you're able to ignore it), that's okay-ish.

> > +
> > +    Exceptions
> > +	As an exception to the above, AI assistive tools which don't
> > +	have any influence on the contribution other than enabling the
> > +	contributor to work with its computer (e.g., screen reader,
>=20
> s/its/their/g
>=20
> > +	text to speech) --where the contributor verifies the output to
> > +	the best of its ability-- are allowed, and the contributor need
>=20
> s/its/their/g

Thanks!  I thought it was a valid gender-neutral singular pronoun, but
I now see in a web search that it has some less-than-human implication.
I'll change it to their.

> Do we have policy on a neutral term e.g. their?

We don't.

> > +	not disclose their use.
>=20
> +1 from me here, the exceptions paragraph meets my notion of inclusive
> use of the technology.
>=20
> > +    Concerns
> > +	Copyright concerns.
> > +		At this point, the regulations concerning copyright of
> > +		generated contents are still emerging worldwide.  Using
> > +		such material could pose a danger of copyright
> > +		violations, but it could also weaken claims to copyright
> > +		and void the guarantees given by copyleft licensing.
> > +
> > +	Quality concerns.
> > +		Popular LLMs are really great at generating plausibly
> > +		looking, but meaningless content.  They pose both the
> > +		risk of lowering the quality of a project, and of
> > +		requiring an unfair human effort from contributors and
> > +		maintainers to review contributions and detect the
> > +		mistakes resulting from the use of AI.
> > +
> > +		AI tools should be considered adversarial, as if they
> > +		were a black box with Jia Tan inside them.
>=20
> Suggest dropping the second paragraph.
>=20
> The policy should stand clearly without oblique references to issues of
> the times.
>=20
> The paragraph detracts from the clearly written concern causing the
> reader to have to go read the reference material and determine how it
> relates to the policy.

Okay.

> > +
> > +	Ethical concerns.
> > +		The business side of AI boom is creating serious ethical
> > +		concerns.  Among them:
> > +
> > +		-  Commercial AI projects are frequently indulging in
> > +		   blatant copyright violations to train their models.
> > +		-  Their operations are causing concerns about the huge
> > +		   use of energy, water, and other natural resources.
> > +		-  The advertising and use of AI models has caused
> > +		   a significant harm to employees and reduction of
> > +		   service quality.
> > +		-  LLMs have been empowering all kinds of spam and scam
> > +		   efforts.
> > +
> > +Caveats
> > +	This policy can be revisited, should a case been made over such
> > +	a tool that does not pose copyright, ethical, and quality
> > +	concerns.
>=20
> Suggest "copyright, quality, or ethical concerns" to match order in the
> text above.

Yup, I noticed that.  I wanted to reduce divergence from Gentoo's
policy, but I agree it's better to be consistent here.

Sam, I suggest that Gentoo revises the order there too.

> > +
> > +Copyright
> > +	Text derived from (and more restrictive than) the Gentoo project
>=20
> Drop "(and more restrictive than)" since you have the same license as
> the original text.
>=20
> If you want to keep something here I suggest:
>=20
> "Text is derived from, but different than, the Gentoo Project AI Policy"
>=20
> The notion of more or less restrictive is relative.

Okay.


Have a lovely day!
Alex

>=20
> > +	AI policy
> > +	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.
> > +
> > +	SPDX-License-Identifier: CC-BY-SA-4.0
> > +
> > +See also
> > +	<https://tukaani.org/xz-backdoor/>
> > +	<https://xcancel.com/spendergrsec/status/1958264076162998771>
> >=20
> > base-commit: cef39ff51bfd016d7079baefbf2a39f0fed7549b
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--qx2lt65nk3dyives
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkAwHIACgkQ64mZXMKQ
wqnS4g//aM60hl0OtHMqgE4gh8aYgtcc99/q0QgHYUA3TWWZvyY7NQqu3q+lcjdk
6ZrlzLWC5zltyFbggcXrrLTDEmgGyKhaZsBI1JIIvXfscLczczI4zqL5XpTw1eMQ
xdi7Lw/STt96xd/ZXF5ZI/Myu81AaCU9PuXFYOAj5o0nPSOGsvSMumFFcJUD7/S5
JUyY+sORQyTmEfT5okXINLjkOZJg7KOGQg0n6KaTsBw3etI4JF3EBpo1HwT8qZ2l
yJATxVf8fELTlmetmZM1mEzWG37XDsS6nVfmW7j0OrLctdz63Z3Bwiw9DMnJ1nsm
0RQtGhIjf4Af8TbBENinhVDzCrMOmiPfWgLbvYcszr9yQ6QwQZ/PAkM9gD/ObYEF
AY2ywryjpcbd33fRwF9Ifbrxs/aYopzmt0FfkT9XpI0X3JZcYXpntLyXViE5sFUR
8s+X0SXuQ2aLBDVIoQYNgQv2/m7xOHwXnCqeeIO5W5hOCuyY3y1EmyVc8Uf6WwUy
nqx8aGj8YvEPDhDOIK+8L8G1M+GSVVFwq5E5oRloGdUoa8sAT2OeNjHer8GcoDMj
9HtpVBaN39DfJJFpD6bZYSNPLyJux6IdIeDsvlSS8IexEoWYik82wEmQ66f2FHZe
ztaSqk7Z0fauTDrG+ZxhnZfgJhvvha/KVMiRZyxppnHgo1n+1Yc=
=YggQ
-----END PGP SIGNATURE-----

--qx2lt65nk3dyives--

