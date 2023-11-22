Return-Path: <linux-man+bounces-144-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F737F4E61
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 18:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E111C281365
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 17:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0A4E3D98D;
	Wed, 22 Nov 2023 17:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF123wNs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C0024B41
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 17:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F36EC433CB;
	Wed, 22 Nov 2023 17:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700674007;
	bh=+iVUPQUjSjYok6rTpPmBdw00WQ9xkrSAYD4hU8VoDvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AF123wNsJ1r8x53opsHjzVuF6DmkanncwOgRqrH008BqESqZooPe0p0Q1ZoAUWvJj
	 0mofHTWtGaTWYLNEQITGaZI4WyE+AClpnq/J1S+p4OWuIYCRPVSzjMEwroBHgSRLgt
	 LQ8D/Mxy/Uc4ArLyPTAGyNxpvGcHf/q1ciOqOX5HxmmvTyp9E9/dSanSOFLULar7Qx
	 Y16gAu31c3cvzalqu0TOxVAosySDIAP0QMZXfvPlaOq09qnLj/vRZ0jMSAHVJtJJ4K
	 YUuROdhDnpGmVAbl4igV+05MZEmGKedAMRKKH5pkCWn2cMpSYjn8ZU4o1wFY01s9At
	 U42AAAt6n+HLQ==
Date: Wed, 22 Nov 2023 18:26:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP
Message-ID: <ZV4506eXcQhZj91V@debian>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4Qg74ZZV5ecqZls7"
Content-Disposition: inline
In-Reply-To: <20231122162557.mdd3z6hmt3pz43bo@illithid>


--4Qg74ZZV5ecqZls7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 18:26:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP

Hi Branden,

On Wed, Nov 22, 2023 at 10:25:57AM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-11-22T14:47:58+0100, Alejandro Colomar wrote:
> > +   Sign your emails with PGP
> > +        It is strongly encouraged that you sign all of your emails sent
> > +        to the mailing list, (especially) including the ones containing
> > +        patches, with your PGP key.  This helps establish trust between
> > +        you and other contributors of this project, and prevent others
> > +        impersonating you.  If you don't have a key, it's not mandatory
> > +        to sign your email, but you're encouraged to create and start
> > +        using a PGP key.
>=20
> I think you should alter this advice to employ the active voice, not the
> passive.  When an authority is dispensing advice or direction, people
> need to know who that authority is.  In this case, it would appear to be
> the Linux man-pages project maintainers.  If there is an external
> authority whose advice you are transmitting, then that authority should
> likewise be cited by name.

Both.  I was advising, as you guessed, but gpg also does.  How about the
following?


<diff --git a/CONTRIBUTING b/CONTRIBUTING
index 7b85e7375..bde085a63 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -57,13 +57,14 @@ Description
                  help
=20
    Sign your emails with PGP
-        It is strongly encouraged that you sign all of your emails sent
-        to the mailing list, (especially) including the ones containing
+        We strongly encourage that you sign all of your emails sent to
+        the mailing list, (especially) including the ones containing
         patches, with your PGP key.  This helps establish trust between
         you and other contributors of this project, and prevent others
         impersonating you.  If you don't have a key, it's not mandatory
         to sign your email, but you're encouraged to create and start
-        using a PGP key.
+        using a PGP key.  See also:
+        <https://www.gnupg.org/faq/gnupg-faq.html#use_pgpmime>
=20
         There are many ways you can sign your patches, and it depends on
         your preferred tools.  You can use git-send-email(1) in

> Such a practice is important for long-term project governance because
> that way your successors know at whose discretion the advice can/should
> be updated.  While it does sometimes happen that a project changes
> ownership into hands that are reckless and produce senseless churn such
> that careless retention of old advice is actually preferable, in my
> experience, it is at least as common for them to pass to people who are
> uncertain of the motivations behind certain decisions, or cannot tell
> which decisions were made with deliberation (as opposed to "going along
> to get along") or following a recommended best practice that has become
> invalidated by the passing decades.

+1

>=20
> The recent conversations about string copying on this list reflect just
> how complex and frustrating such matters can be in another domain.
> "Everybody" assumed for decades that copying strings in C was a
> trivial matter.[1]  Now, we look back over three decades of our brethren
> crucified upon CVE crosses along the Appian Way to a better C standard
> library, and realize that Seventh Edition Unix probably should have some
> offered something like a string_copying(7) document.
>=20
> > +        There are many ways you can sign your patches, and it depends =
on
> > +        your preferred tools.  You can use git-send-email(1) in
> > +        combination with mutt(1).  For that, do the following.
> > +
> > +        In <~/.gitconfig>, add the following section:
> > +
> > +            [sendemail]
> > +                sendmailcmd =3D mutt -H - && true
> > +
> > +        And then, patch mutt(1) to enable encryption in batch and mailx
> > +        modes, which is disabled in upstream mutt(1).  You can find a
> > +        patch here:
> > +        <https://gitlab.com/muttmua/mutt/-/merge_requests/173>.
>=20
> I find it awkward to "strongly recommend" a best practice that isn't
> easily facilitated by _any_ readily available tool without further
> hacking.

I find it awkward that mutt(1) disables crypto operations in
non-interactive mode, and that neomutt(1) even removed mailx mode[1]

[1]:  <https://github.com/neomutt/neomutt/pull/2385>

I also find it awkward that when patatt(1) (and b4(1) wrapping it)
decided to make signing patches easy, they didn't patch a MUA to support
signing emails in a header field, and instead wrote a new program that
creates something that no MUA understands, and so one can only know if a
patch has been signed with patatt(1) by using patatt(1) (or b4(1)
wrapping it).

I also find it awkward that MUAs (or actually anybody) don't seem to be
interested in fixing this situation.

> That you have to dispense this advice suggests to me that the status quo
> has not yet caught up with your ambitions.  I would soften the strength
> of your recommendation and explicitly concede that better tooling
> support is necessary to advance the state of the art.

I won't concede this.  I strongly encourage everybody to sign mail and
patches, and to encrypt whenever possible.  And also strongly encourage
everybody to press the powers that be (i.e., maintainers of MUAs) to
make it easier.  That present-day technology sucks doesn't lower the
strength of my encouragement.

> I "manually" sign my messages to this list (that is, via keyboard-driven

I find it really awkward that you need to do it manually.  I suggest you
to try and patch mutt(1), if you can.  If you're unlucky, you'll be
locked in some neomutt(1) features, in which case you're out of luck, as
my suggested trick doesn't seem to work (but if it works, please let me
know).

> menu selections in neomutt(1)).  But I don't produce patches in
> sufficient volume that this tedium rises to a serious annoyance.  So
> what you might do for the time being is to focus on advice to similarly
> situated users, and concede that, for people who are high frequency
> patch generators, technology is lacking at present.
>=20
> Regards,
> Branden
>=20
> [1] I encourage anyone with either a reverential or heretical turn of
>     mind to review =C2=A75.5 of the 2nd edition of _The C Programming
>     Language_ and consider it light of our string_copying(7)
>     discussions.  I would attend particularly to what is implied by the
>     recommendation of Exercise 5-5 to implement strncat(3), strncmp(3),
>     and strncpy(3) from scratch.

I just found an erratum in K&R C v2 =C2=A75.5:  In page 97, in the picture,
'amessage' and 'pmessage' are switched (IMO); pmessage should be the one
with the two boxes and an arrow, since it's the pointer one.  Is there a
published errata for K&R C v2 so I can check this and report?

>  (A Kernighan & Ritchie idolator might
>     claim that they perceived all of the conceivable problems in 1988,
>     and offered the exercise as an elliptical means of warning the
>     sufficiently savvy reader that the standard library had gone astray.
>     Personally, I think such an inference is inconsistent with Ritchie's
>     own expressed opinions about obscurantism.[2]  But if there's one
>     thing brogrammers are free with, it is negative assessments of
>     others' intellects.

And even the wording in the book shows that they didn't know that these
functions are ill-designed (they are still useful in niche use cases,
but I doubt they were designed with those cases in mind).  Here's the
quote.

< Write versions of the library functions strncpy, strncat, and strncmp,
< which operate on at most the first n characters of their argument
< strings

To which of the args does 'n' apply?  One (which?) or both?  strncat(3)
is not limited to 'n' characters in dst, so this 'n' applies to some
random argument depending on the function: 1st for strncpy(3) (but kind
of both), 2nd for strncat(3), both for strncmp(3).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--4Qg74ZZV5ecqZls7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeOc4ACgkQnowa+77/
2zJJuw//W7uSnj784PPQNmH/o2n1aaGekeUo7C1WMpVMqIupCqLNnHcsRL0qMkO8
E+F76QaayTGK2coqN7Iz+91Gi2aq6dz4egfVMn2H2j15NCOsUr9npXhwozcGCFP5
F2ewu19Gy4ufeqAg6i+/Px/g+99Zty4I+Nr8gGUKhm6tnKarZxmbMirA5+bBIori
Qo7EGvgegT+iFn/J6W8glmPpMuiWpA9PndUuYP0S/X9LhE476dof7l7uRjvKGjfl
ItV3+1yOsXkn5iTS6p+qXTINW9CsIr1Gh5pYbgRGp65EWBSmjUTttcNPcjtn8IR+
38H0Xexdb5gbh55iNWAND2oSW8HXxkywkwpknhbiioxtVfc/st3EdVgkUWhIAuOj
v9z1VRIL72a/7tyEoIgM9nOGKOfk8vUPYMWYQxD2FD8J8mfIEfH9n0w+ND4Toikv
pU5qnKn6gFXGaCRkfWLx7Ohye0EjTJFpmxnrKgabMwemYDD4KGDK0i543gW9sFAH
nevFzQfNmBfjTwRNgycU9HcaRnANGrxu3KBUbW+YzMScG3ikMVnVjgZJHUS2lbBR
DLr05alkXKTJSV0KUd9fkDqeEe/wwUrXFINx/3w6rWnZJBnyCibtk8DPKxtAfSh0
zdAKhQ88+KjZsgH2y2V1mgnyVIcwkw9a6OeeYXHjsdpf4R+1pUE=
=okX8
-----END PGP SIGNATURE-----

--4Qg74ZZV5ecqZls7--

