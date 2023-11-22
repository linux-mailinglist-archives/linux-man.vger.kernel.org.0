Return-Path: <linux-man+bounces-147-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B5F7F4FEC
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 19:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 761FFB20D55
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 18:51:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D52955760;
	Wed, 22 Nov 2023 18:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KaHAabfo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA621A4
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 10:51:02 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6cd0963c61cso76107a34.0
        for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 10:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700679062; x=1701283862; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rcY0o973B8Q02nicaJse52fKZgYsN4ewr60Z9QKpgQM=;
        b=KaHAabfoLyhhdmTIVAo280PKECszzyNdf3ErCUWy2MwvPtqQCoTsDXz1tjkdjl6lvU
         gTfNLSCj40TQEKO1YAre0p3VH2OVA91z/P7TAhVCUP0XhJnFqbS+0ilKxin+fKL+UqqJ
         fx1/HRiHePo6Aqp+IYLgbHhYiy2TFdwbBEWyqd0CmPabErUeQdi9D0i+TRKzBErIPkyr
         7S5o7scHtLphfC3nMAr8mS2iqOEhNDGbxYcdK+bn3KG/5FlnY3uTz8oqP3LSi3qXppy9
         G6bo+KZ2HkruCgPKncM0W0mvLIXzEro26kW9oLoxQfdJSqUpf0kCr9htcG9bvKaVnAT/
         ruOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700679062; x=1701283862;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rcY0o973B8Q02nicaJse52fKZgYsN4ewr60Z9QKpgQM=;
        b=tflU3mCJd81gUH6pup4GMRXi7jUg8DRNtGawqq+yZzxnU3EviwPMaFLwtxFmo4sRnx
         rl0fxkTChojBUlsHa+YU4Phj5tQ+qHMtUjQ+nRO1I+zzOrm8CywZ6ajyhptUlBMTQI5S
         e+aZLXHu/fCoJl70l7LUFpK4KFReB6dK5ZFPx4xqeuwcJXeRjenUfCuZ+IWHaFp9WW3x
         HJOMhbtZ3pk8KjRSD+Pj7MClCeq34bEB4hk7ArQtTbWixpraHy+8VdqIkj1/BO1X27q4
         pLJwWbqs3PTQLNdJnYrj5HMEOANfxp3P+wnT9raniSgjxNwc9Zm3yv+ATaqWNZb08WKX
         HNKw==
X-Gm-Message-State: AOJu0YyjTpbKuh6YUT7F3ysN4fCfDlsuUa56nr9fnnnqt7/S4XMojik+
	LrQhO5eBdavz9UAUGe4u+1I=
X-Google-Smtp-Source: AGHT+IGAnUqZaZBni9izHGNupGJkec4rKubCmAVBkspDyr324G/sZJWk5PwqVlh0PeJYdyarWkM/ow==
X-Received: by 2002:a05:6830:12c5:b0:6d7:e99f:899a with SMTP id a5-20020a05683012c500b006d7e99f899amr3619946otq.1.1700679062086;
        Wed, 22 Nov 2023 10:51:02 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q14-20020a056830440e00b006d33de23e15sm33276otv.40.2023.11.22.10.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 10:51:01 -0800 (PST)
Date: Wed, 22 Nov 2023 12:50:59 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Matthew House <mattlloydhouse@gmail.com>
Subject: Re: [PATCH v2] CONTRIBUTING: Please sign your emails with PGP
Message-ID: <20231122185059.nfujjs6lqt5bxqit@illithid>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
 <ZV4506eXcQhZj91V@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oe7lhatlmdgyb4r7"
Content-Disposition: inline
In-Reply-To: <ZV4506eXcQhZj91V@debian>


--oe7lhatlmdgyb4r7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-11-22T18:26:38+0100, Alejandro Colomar wrote:
> On Wed, Nov 22, 2023 at 10:25:57AM -0600, G. Branden Robinson wrote:
> > I think you should alter this advice to employ the active voice, not
> > the passive.  When an authority is dispensing advice or direction,
> > people need to know who that authority is.  In this case, it would
> > appear to be the Linux man-pages project maintainers.  If there is
> > an external authority whose advice you are transmitting, then that
> > authority should likewise be cited by name.
>=20
> Both.  I was advising, as you guessed, but gpg also does.  How about
> the following?
>=20
>=20
> <diff --git a/CONTRIBUTING b/CONTRIBUTING
> index 7b85e7375..bde085a63 100644
> --- a/CONTRIBUTING
> +++ b/CONTRIBUTING
> @@ -57,13 +57,14 @@ Description
>                   help
> =20
>     Sign your emails with PGP
> -        It is strongly encouraged that you sign all of your emails sent
> -        to the mailing list, (especially) including the ones containing
> +        We strongly encourage that you sign all of your emails sent to
> +        the mailing list, (especially) including the ones containing
>          patches, with your PGP key.  This helps establish trust between
>          you and other contributors of this project, and prevent others
>          impersonating you.  If you don't have a key, it's not mandatory
>          to sign your email, but you're encouraged to create and start
> -        using a PGP key.
> +        using a PGP key.  See also:
> +        <https://www.gnupg.org/faq/gnupg-faq.html#use_pgpmime>

LGTM!

> > I find it awkward to "strongly recommend" a best practice that isn't
> > easily facilitated by _any_ readily available tool without further
> > hacking.
>=20
> I find it awkward that mutt(1) disables crypto operations in
[...]
> I also find it awkward that when patatt(1) (and b4(1) wrapping it)
[...]
> I also find it awkward that MUAs (or actually anybody) don't seem to

Anaphora FTW!  But don't stumble and fall into a chiasmus.  ;-P

[...]
> I won't concede this.  I strongly encourage everybody to sign mail and
> patches, and to encrypt whenever possible.  And also strongly
> encourage everybody to press the powers that be (i.e., maintainers of
> MUAs) to make it easier.  That present-day technology sucks doesn't
> lower the strength of my encouragement.
>=20
> > I "manually" sign my messages to this list (that is, via
> > keyboard-driven
>=20
> I find it really awkward that you need to do it manually.  I suggest
> you to try and patch mutt(1), if you can.

I'm sure I _can_, with sufficient effort.  A bear of very little brain
should be able to manage.  But as a rule, I maintain local forks only of
projects that I frequently work on.  Experience has taught me that when
I don't, and my upstream upgrades, it's too often a hard slog to
re-fork.  I forget things and have to relearn them, and/or upstream has
refactored so much that I no longer recognize what I _need_ to patch.

MUA development is not an area I have yet found seductive.

I petition you to soften the language because I don't think you want to
give the impression that you'd prefer a patch go unsubmitted rather than
show up un-GPG-signed.  (Am I mistaken?)

In fact, you might explicitly state how your handling process differs
for unsigned vs. signed patches.  If there _is_ no difference--if there
is no queue penalty, or additional follow-up to authenticate the sender
that you undertake--then I suggest that what you're doing is turning
this aspect of the Linux man-pages contribution process into a platform
for editorializing about your preferences.

Now, far be it from me to rebuke anyone for expressing opinions:
practically every email I write is loaded with 'em.  And in fact I
largely share your preference here, and have long (for 20+ years)
wondered why MUAs don't read your keyring and offer opportunistic
encryption of mails sent exclusively (To+Cc) to accounts in the keyring.

_But_ when you're employing the resources of a project X to pursue an
agenda with respect to projects W, Y, and Z (MUAs), I think it wise to
be forthright.

You might therefore articulate a concrete policy wherein you impose a
tax on unsigned patch submissions--or disclose the added costs that you
accrue when dealing with them.  If you're not willing to do so, for
whatever reasons you can think of that make either one a bad idea, then
I repeat my advice to soften the language in the CONTRIBUTING.md file.
Or to redirect it: instead of inviting the patch submitter to infer that
the burden is on them to use tools that haven't yet been adequately
developed, you can express your grievance with MUAs in a paragraph or
two as an aside.

There's nothing inherently wrong with doing this.  MUAs are obviously
relevant to a cooperative development process that is reliant on email.
You don't want to try the patience of your reader, but you do want to
alert them to a problem that has gone unsolved for a long time.

And I think that--as long as you don't make your editorial aside an
Invariant Section under the GNU FDL ;-)--people won't mind its presence.

> If you're unlucky, you'll be locked in some neomutt(1) features, in
> which case you're out of luck, as my suggested trick doesn't seem to
> work (but if it works, please let me know).

My continued use of neomutt is pure inertia.  I gather that in the wake
of some contretemps in Debian regarding the naming of the mutt and
neomutt packages, mutt's upstream awakened and undertook active
development again.  This is a good thing.

> I just found an erratum in K&R C v2 =A75.5:  In page 97, in the picture,
> 'amessage' and 'pmessage' are switched (IMO); pmessage should be the
> one with the two boxes and an arrow, since it's the pointer one.  Is
> there a published errata for K&R C v2 so I can check this and report?

Yes...

https://s3-us-west-2.amazonaws.com/belllabs-microsite-dritchie/cbook/2ediff=
s.html

=2E.via...

https://www.cs.princeton.edu/~bwk/cbook.html

=2E..but the errata claim not to have been updated since October 2006.

Nevertheless your proposed erratum does not appear in that document, so
you might have a legit catch here.  Time to email BWK and report it? ;-)

> And even the wording in the book shows that they didn't know that
> these functions are ill-designed (they are still useful in niche use
> cases, but I doubt they were designed with those cases in mind).
> Here's the quote.

I've seen the _original_ set of C string-handling functions attributed
to Nils-Peter Nelson (who was also in charge of DWB troff for a while).

Here they are, in the earliest form known to me:

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3Dpdp11v/usr/include/string.h

(note the SCCS ident[1])

=2E..but Nils-Peter probably cannot be blamed for directions this family
of functions took subsequently.

> < Write versions of the library functions strncpy, strncat, and
> < strncmp, which operate on at most the first n characters of their
> < argument strings
>=20
> To which of the args does 'n' apply?  One (which?) or both?
> strncat(3) is not limited to 'n' characters in dst, so this 'n'
> applies to some random argument depending on the function: 1st for
> strncpy(3) (but kind of both), 2nd for strncat(3), both for
> strncmp(3).

If you want to have some fun reviewing code, let me point you here.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3Dpdp11v/usr/src/lib/libc/por=
t/gen

Regards,
Branden

[1] ...likely a misnomer, but calling it the "SCCS 'what'" doesn't get
    the idea across clearly.  Incidentally the story behind SCCS vs.
    RCS is an intriguingly ugly one.  (AT&T being stereotypically dumb
    about software licensing is not part of it.)  We enlightened Git
    users have nothing whatsoever to learn from it, do we?

--oe7lhatlmdgyb4r7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVeTYsACgkQ0Z6cfXEm
bc6VJg//dkUik/aApjalStOaxpHn8ejdiXFG7+6ryGideyHTDcl3WPtd2gX8+Ga0
6SRLr6/EjB5MW/GJdoArVJvt6ZwUlGi7BEoFOAZUuvMC4a3IJ3YZri4tRljzOes7
jETfN+/b9BUEafypOIu33yDXbpPZ8VuLP3VP+ZfoETYAlWM97PzmbTMnmpZ+QekJ
2iy+CHBkwneT19T85Cu6dgM9H1vjTgtLGTUbBsRY8rSum1MrQRooglC23YXkuplU
/wD6pO0Qls9KDt2Tnj5eiZ4JTEINSooCwjoEQh8SexrL80hMWc6tTOx0+y8O6Sj3
6+uIqq4BHpo7QN9c/sQ7w11NLmHZN0UF+5YeFbtQRHze80dDDlSvGJzoqy006nRr
jM74c5bb3bhTQYXL6O1enzvk8AHgHO94y71AVp7Yj+Xm7rBuv44OGCq/sCHbdQpm
2D0uXbY2OZutqYLHW+OefZAciiRsQDpXK/Oln9priDDSmKOZ0k+HVQ2fiuB9WEE4
3XTZtIDDfkUm2JMG4s5QEsuE8D6gMPMb8taz4+0Ahd/4y/sBw6ZmWENVSKJhCgmj
y0NMVyUJZdqBlH+63VVVQkIakaTnEsE7t6C54XhHcEzy5qJ4OOZIE/XhughbEMwX
3onOVKWnO3Vn1+bbLQ/BtIFxfjjujHUQo6Zchrgw5brkEUS2QOU=
=52SR
-----END PGP SIGNATURE-----

--oe7lhatlmdgyb4r7--

