Return-Path: <linux-man+bounces-148-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5937F513A
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 21:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACFE01C20A9A
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 20:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269CA5D8EE;
	Wed, 22 Nov 2023 20:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V47P/nKv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB3A5D8E8
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 20:08:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E72C433C8;
	Wed, 22 Nov 2023 20:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700683706;
	bh=+E4l6W5sS8n5wmOywcofE2yU9/iKkIhtT8+onbXQxQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V47P/nKv24Z8985PHGmsVXjrIqfebOmoR30DARayjrWdhaP/amBRZM1II0N5C7O3G
	 gwx5mzefBZ1Uu5ZwLyB60GLYN4LV/TATxD/czBty2TjiU9RfU6t7UBaAVvgbIDqb4F
	 5PNk6oCxzaQHFaqBmIT3Db4qTOS7hNFfWOkIvfPcpmKkURvFLSZnlLA5sATyEulMfz
	 N9tWvvsDBiAwuAiNieGHnOXE+Yuu1JrGLkEcNn/6T7GbFJy+lUFTF5ctOWOYwCzJ0/
	 HWUcdwF9fk6e7vLB9ehsszFNVUk+66b9QLLQJyS3Zsd+5tRQEhLf2L0fOdXJZasL94
	 AHyCso4vxkI8Q==
Date: Wed, 22 Nov 2023 21:08:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP
Message-ID: <ZV5ftxBi2qUb5XaX@debian>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
 <ZV4506eXcQhZj91V@debian>
 <20231122185059.nfujjs6lqt5bxqit@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YtDfYeWt2YbyiVgB"
Content-Disposition: inline
In-Reply-To: <20231122185059.nfujjs6lqt5bxqit@illithid>


--YtDfYeWt2YbyiVgB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 21:08:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP

Hi Branden,

On Wed, Nov 22, 2023 at 12:50:59PM -0600, G. Branden Robinson wrote:
> Hi Alex,

> > <diff --git a/CONTRIBUTING b/CONTRIBUTING
> > index 7b85e7375..bde085a63 100644
> > --- a/CONTRIBUTING
> > +++ b/CONTRIBUTING
> > @@ -57,13 +57,14 @@ Description
> >                   help
> > =20
> >     Sign your emails with PGP
> > -        It is strongly encouraged that you sign all of your emails sent
> > -        to the mailing list, (especially) including the ones containing
> > +        We strongly encourage that you sign all of your emails sent to
> > +        the mailing list, (especially) including the ones containing
> >          patches, with your PGP key.  This helps establish trust between
> >          you and other contributors of this project, and prevent others
> >          impersonating you.  If you don't have a key, it's not mandatory
> >          to sign your email, but you're encouraged to create and start
> > -        using a PGP key.
> > +        using a PGP key.  See also:
> > +        <https://www.gnupg.org/faq/gnupg-faq.html#use_pgpmime>
>=20
> LGTM!

Thanks!

> Anaphora FTW!  But don't stumble and fall into a chiasmus.  ;-P

:-)

> [...]
> > I won't concede this.  I strongly encourage everybody to sign mail and
> > patches, and to encrypt whenever possible.  And also strongly
> > encourage everybody to press the powers that be (i.e., maintainers of
> > MUAs) to make it easier.  That present-day technology sucks doesn't
> > lower the strength of my encouragement.
> >=20
> > > I "manually" sign my messages to this list (that is, via
> > > keyboard-driven
> >=20
> > I find it really awkward that you need to do it manually.  I suggest
> > you to try and patch mutt(1), if you can.
>=20
> I'm sure I _can_, with sufficient effort.  A bear of very little brain
> should be able to manage.  But as a rule, I maintain local forks only of
> projects that I frequently work on.  Experience has taught me that when
> I don't, and my upstream upgrades, it's too often a hard slog to
> re-fork.  I forget things and have to relearn them, and/or upstream has
> refactored so much that I no longer recognize what I _need_ to patch.

Makes sense.

> MUA development is not an area I have yet found seductive.
>=20
> I petition you to soften the language because I don't think you want to
> give the impression that you'd prefer a patch go unsubmitted rather than
> show up un-GPG-signed.  (Am I mistaken?)

Nope; you're right.  But doesn't the "... it's not mandatory ..."
clarify that in you opinion?

> In fact, you might explicitly state how your handling process differs

I can do that in a mail, but if I try to write that in CONTRIBUTING, it
could take a huge part of the file, and I don't want to hide other info
with that.

> for unsigned vs. signed patches.

If I see a small patch that is obvious, I'll review it visually, and
decide upon that.  There's no difference between signed and unsigned
patches in those cases, which hopefully should be most of them.

However, from time to time, there are patches that I'm unable to review,
usually because I don't understand them.  A case you know is MR.sed.
There's no way I'll understand that script, and I don't even want to.
In other cases, people with deep specific knowledge, like kernel
maintainers, or for example, Paul Eggert for certain libc functions,
send patches about their stuff.

There are details in those patches that I give up trying to understand
and just trust that the sender knows better, and that if any issues come
up later, the sender will fix them.  Trusted contributors have certain
privileges with their patches.

In your case, all of your patches are signed, so I can verify that
you're consistently the same I talked to in every mail thread.  In the
case of Paul, for example, he doesn't sign any email, so I can't trust
with 100% certainty that every mail is actually sent from him.  I'm not
scared enough to send him a private email every time he sends a patch
asking him to sign it, because that is unlikely, and would hopefully get
caught by Paul himself if he reads the list, but there's always a small
chance.

Konstantin Ryabitsev wrote about this[1], and developed b4(1) and
patatt(1).  However, I think those programs are more complex than
patching mutt(1), and also offer less versatility (encryption is
problematic, so for patches fixing vulnerabilities, you need a different
method; I don't like that) than mutt(1).

IIRC (but can't find it), Greg KH also talked about why signing patches
is recommended.

[1]:  <https://people.kernel.org/monsieuricon/end-to-end-patch-attestation-=
with-patatt-and-b4>

I didn't recommend using b4(1), because I haven't yet learnt to use it
myself, so can't say it's easy.  With mutt(1), I can say it's easy:
2-line config + 1 line patch.  Ok, that's not the easiest it can be, but
it's the easiest I know of.

>  If there _is_ no difference--if there
> is no queue penalty, or additional follow-up to authenticate the sender
> that you undertake--then I suggest that what you're doing is turning
> this aspect of the Linux man-pages contribution process into a platform
> for editorializing about your preferences.

There's a difference.  In untrusted patches, I am paranoic about
malicious contributors trying to misdocument features with the intention
of provoking vulnerabilities.  I don't do that for trusted patches.

> Now, far be it from me to rebuke anyone for expressing opinions:
> practically every email I write is loaded with 'em.  And in fact I
> largely share your preference here, and have long (for 20+ years)
> wondered why MUAs don't read your keyring and offer opportunistic
> encryption of mails sent exclusively (To+Cc) to accounts in the keyring.

mutt(1) (and neomutt(1)) do:

	$ cat .config/mutt/gpg.muttrc=20
	set crypt_autosign =3D yes
	set crypt_opportunistic_encrypt =3D yes
	set crypt_protected_headers_write =3D yes

	set pgp_self_encrypt =3D yes
	set pgp_default_key =3D A9348594CE31283A826FBDD8D57633D441E25BB5


	$ grep gpg.muttrc .config/mutt/muttrc=20
	source ~/.config/mutt/gpg.muttrc

I never have to press any key for signing mail (nor for encrypting mail
to recipients whose keys I've signed).  Or do you mean in batch and
mailx modes?  (Regarding encryption, I think there should be a way to
tell mutt(1) to accept unsigned keys without asking --and maybe there is
and I don't know it--.)

> _But_ when you're employing the resources of a project X to pursue an
> agenda with respect to projects W, Y, and Z (MUAs), I think it wise to
> be forthright.
>=20
> You might therefore articulate a concrete policy wherein you impose a
> tax on unsigned patch submissions--or disclose the added costs that you
> accrue when dealing with them.  If you're not willing to do so, for
> whatever reasons you can think of that make either one a bad idea, then

My only reticence to do that is that I don't want that file to grow too
much.  And the only pages I know of that I could link to, are those of
b4(1) and patatt(1), but I don't want to suggest those tools.

> I repeat my advice to soften the language in the CONTRIBUTING.md file.
> Or to redirect it: instead of inviting the patch submitter to infer that
> the burden is on them to use tools that haven't yet been adequately
> developed, you can express your grievance with MUAs in a paragraph or
> two as an aside.

Yeah, I'll try adding a paragraph saying that MUAs don't help.

> There's nothing inherently wrong with doing this.  MUAs are obviously
> relevant to a cooperative development process that is reliant on email.
> You don't want to try the patience of your reader, but you do want to
> alert them to a problem that has gone unsolved for a long time.
>=20
> And I think that--as long as you don't make your editorial aside an
> Invariant Section under the GNU FDL ;-)--people won't mind its presence.
>=20
> > If you're unlucky, you'll be locked in some neomutt(1) features, in
> > which case you're out of luck, as my suggested trick doesn't seem to
> > work (but if it works, please let me know).
>=20
> My continued use of neomutt is pure inertia.  I gather that in the wake
> of some contretemps in Debian regarding the naming of the mutt and
> neomutt packages, mutt's upstream awakened and undertook active
> development again.  This is a good thing.

And neomutt(1)'s Debian package has been dying for the last years.  It's
not getting the new versions from upstream.  So much that when I tried
neomutt(1) with a config suggested in <neomutt.org>, it didn't
understand some configurations.  There's a neomutt(1) contributor that
also contributes often to the Linux man-pages who maintains a Debian
package repository, and provides a more up-to-date package.
=20
> > I just found an erratum in K&R C v2 =C2=A75.5:  In page 97, in the pict=
ure,
> > 'amessage' and 'pmessage' are switched (IMO); pmessage should be the
> > one with the two boxes and an arrow, since it's the pointer one.  Is
> > there a published errata for K&R C v2 so I can check this and report?
>=20
> Yes...
>=20
> https://s3-us-west-2.amazonaws.com/belllabs-microsite-dritchie/cbook/2edi=
ffs.html
>=20
> ..via...
>=20
> https://www.cs.princeton.edu/~bwk/cbook.html
>=20
> ...but the errata claim not to have been updated since October 2006.
>=20
> Nevertheless your proposed erratum does not appear in that document, so
> you might have a legit catch here.  Time to email BWK and report it? ;-)

Nice!  :)

> > And even the wording in the book shows that they didn't know that
> > these functions are ill-designed (they are still useful in niche use
> > cases, but I doubt they were designed with those cases in mind).
> > Here's the quote.
>=20
> I've seen the _original_ set of C string-handling functions attributed
> to Nils-Peter Nelson (who was also in charge of DWB troff for a while).
>=20
> Here they are, in the earliest form known to me:
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3Dpdp11v/usr/include/string=
=2Eh
>=20
> (note the SCCS ident[1])
>=20
> ...but Nils-Peter probably cannot be blamed for directions this family
> of functions took subsequently.
>=20
> > < Write versions of the library functions strncpy, strncat, and
> > < strncmp, which operate on at most the first n characters of their
> > < argument strings
> >=20
> > To which of the args does 'n' apply?  One (which?) or both?
> > strncat(3) is not limited to 'n' characters in dst, so this 'n'
> > applies to some random argument depending on the function: 1st for
> > strncpy(3) (but kind of both), 2nd for strncat(3), both for
> > strncmp(3).
>=20
> If you want to have some fun reviewing code, let me point you here.
>=20
> https://minnie.tuhs.org/cgi-bin/utree.pl?file=3Dpdp11v/usr/src/lib/libc/p=
ort/gen

Interesting; I only see 2 uses of strncat(3) in v7:

	$ grep -rn '\sstrncat *('
	usr/src/cmd/dumpdir.c:153:			strncat(prefix, dir.d_name, sizeof(dir.d_name=
));
	usr/src/cmd/login.c:107:	strncat(homedir, pwd->pw_dir, sizeof(homedir)-6);

Of these, the second is an abuse of this function, and a function that
gets the size of the dst buffer instead of the src buffer should have
been written.  strlcat(3) would have been more appropriate (although as
Paul said, it has DoS problems, so something like strtcat() could be
written that would return -1 on truncation).

strncpy(3) is similarly abused to open-code an strlcpy(3) (or strtcpy())
in several places.

>=20
> Regards,
> Branden
>=20
> [1] ...likely a misnomer, but calling it the "SCCS 'what'" doesn't get
>     the idea across clearly.  Incidentally the story behind SCCS vs.
>     RCS is an intriguingly ugly one.  (AT&T being stereotypically dumb
>     about software licensing is not part of it.)  We enlightened Git
>     users have nothing whatsoever to learn from it, do we?



--=20
<https://www.alejandro-colomar.es/>

--YtDfYeWt2YbyiVgB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeX7AACgkQnowa+77/
2zIsEA/6AraKTTJjOOE4IjDL/Yj8I88Y9H23EGDviVpdYJbOKuFSsueL/+5ruFfP
g+5MtEFnTmwnP7lz6nzyCZ7Xp6sVQxpv7mri2zn4QTpZFxPIhnbdnlhuNEZg5IOg
Bv5vloulXynNPBaDv/Oa5jUtn0DQcK5KDMaMkPiV4qYM5YIGnjUq312i9+TD7UjH
OdejiCCGk9OCHrEHqcSfwpbD3O0QqDQYHpaIlqxmmTIk+g1dJQtOPUPJ0kXK7t0Z
eHDyHrrmTEgyYH5MDvRyF6Dz31+iVhyhc2ThoBYbZ1tsoQS4LmvvSXo7T2BZCdsu
C/TD6XObjreEWIcwkkanBUmErvOlIBZzkIb7yxTKMWTEy02sagMbC3kiusCLA+6O
JlkMsKUBedoYqVSlKzeiIcQ7q0RBiSFrUg4foL9ulqNdv4W5IodCZcEJyG/zyEg8
jh10Mkf4pyhWi1J4duQju+vbACEUfYkqIWLacJIgNQNksSJdvjJSyM0uDrp4NkrO
fAaOFkMBxp9oE8Eh4y5IVLGVVqetaEM85bBCt4SCobhnrjZI5fuTLWcuHfTi+3/l
4O09LULyTkshO/T4id+IcAJ+uLmYd7+PEszqDNCKgB3EnGeaoiuOO5D3u22BTkIj
8PXRJ0430rl9dC2Ruaw4oU9E3i6c7qzb6wErbkyCMRjAMc0FWzQ=
=21Fx
-----END PGP SIGNATURE-----

--YtDfYeWt2YbyiVgB--

