Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 626B06E83D0
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 23:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232771AbjDSVco (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 17:32:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232592AbjDSVcg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 17:32:36 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A0AB4B2
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 14:32:20 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 906FB6822;
        Wed, 19 Apr 2023 23:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681939232;
        bh=bAuxOSlBpUrK8YS0Pl8ohtafrfzSFf/N6D4ziU6cuqk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oAUGLDYNqkn16Co2Qqs30DTIMgaYxWX2BOmdteQG0447e3+KEXE25RNk6kcI7Tpqx
         rGZrnZUrgFLE8yW5n3LWJrZhgD+Jmdl/uZyjJozgG3rOa4IXvXsAE+FgQiB9BVdt5l
         bJSRI8cUTqipqQDBWOaByZNFPJJlQWR3SGFMB9ingWI4RLXY0ZxWV7afdqMHjH/6jP
         eJElQAvLOqBJZbFKBcGgyzN1W8DH2TgqLf2v0wxDKuiNXIKVYbO8mj6UGRmcZirXPD
         05lEbB80RpXeo0YXSUFHm8G+WDITiL1TE2ss/tisLlUjDRrIeily98HF+R93i1Htmu
         WIW0+qgJGUJeA==
Date:   Wed, 19 Apr 2023 23:20:31 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] regex.3: improve REG_STARTEND
Message-ID: <747kzwqbq2dqlrf7znp4eextcl5p2dlickflwicxstnk6fpinv@ntnnei6ianmk>
References: <15d73d2add2adf0fbc33fd6697a6b29d126c11b9.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <52a12177427a5e781b16b4efc85f8b90360a4e8a.1681926298.git.nabijaczleweli@nabijaczleweli.xyz>
 <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="m7vgkybxm5ncctyv"
Content-Disposition: inline
In-Reply-To: <4139e0ad-c25f-59f2-1ebf-83779a5c507f@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--m7vgkybxm5ncctyv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Wed, Apr 19, 2023 at 10:23:29PM +0200, Alejandro Colomar wrote:
> On 4/19/23 19:48, =D0=BD=D0=B0=D0=B1 wrote:
> > diff --git a/man3/regex.3 b/man3/regex.3
> > index d54d6024c..2c8b87aca 100644
> > --- a/man3/regex.3
> > +++ b/man3/regex.3
> > @@ -141,23 +141,20 @@ compilation flag
> >  above).
> >  .TP
> >  .B REG_STARTEND
> > -Use
> > -.I pmatch[0]
> > -on the input string, starting at byte
> > -.I pmatch[0].rm_so
> > -and ending before byte
> > -.IR pmatch[0].rm_eo .
> > +Match
> > +.RI [ string " + " pmatch->rm_so ", " string " + " pmatch->rm_eo )
> > +instead of
> > +.RI [ string ", " string " + \fBstrlen\fP(" string )).
> Hmmm, I like this!
>=20
> Let's see if I understand it.  pmatch[] is normally
> [[gnu::access(write_only, 4, 3)]]
> but if ((.eflags & REG_STARTEND) !=3D 0) it's [1] and
> [[gnu::access(read_write, 4)]]?
I fucked the ternary in my previous mail I think, soz;
I don't know if it's gnu::anything, but you could model it as
{
	if(eflags & REG_STARTEND)
		read(pmatch, 1);

	if(!(preg->flags & REG_NOSUB))  // as "set" in regcomp()
		write(pmatch, nmatch);
}

I.e. pmatch[nmatch] must be a writable array, unless REG_NOSUB,
and also, additively, *pmatch must be readable if REG_STARTEND.

> >  This allows matching embedded NUL bytes
> >  and avoids a
> >  .BR strlen (3)
> > -on large strings.
> > -It does not use
> > +on known-length strings.
> >  .I nmatch
> > -on input, and does not change
> > -.B REG_NOTBOL
> > -or
> > -.B REG_NEWLINE
> > -processing.
> > +is not consulted for this purpose.
> > +If any matches are returned, they're relative to
> > +.IR string ,
> > +not
> > +.IR string " + " pmatch->rm_so .
> How are such matches returned?  In pmatch[>0]?  Or how?
In the usual way in pmatch[0..nmatch].

I guess the "nmatch isn't taken into account" thing is confusing,
because REG_STARTEND just adds a read. regexec() can be modelled as
{
	const char * start, * end;
	if(eflags & REG_STARTEND) {
		start =3D string + pmatch->rm_so;
		end   =3D string + pmatch->rm_eo;
	} else {
		start =3D string;
		end   =3D string + strlen(string);
	}
=09
	// match stuff in [start, end)
}

And that's the /only/ effect REG_STARTEND has
(+ matches are returned relative to string, not to start,
   but that's consistent, and they just got decoupled;
   it bears noting it there since it's not what I expected to happen).

I'll sleep on this and post something I hate less tomorrow.

Best,

--m7vgkybxm5ncctyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRAWxwACgkQvP0LAY0m
WPFp6RAAob08n1fyLtES9XmKnwImYxFsHYyAklbj3GL68rVyLbpMTrBbeahTjLo2
j6x/Ji5wTg8BE9VD9zjVfK8GqlBtHboG2XIsQUM+3L5SCQdU1WyVKfu7MhGd9417
W/9wk8iGqoCIUya0KRg3BfkwA5zeaqJQJWeqsQVa6KWlAPVxXjMdYU2dXYFxLQAt
C1ZxjKI4tEcvQlUNRlOVKMhAzquyv3u1imqv+Zxkgf5VgUjWRGAhzhBbb2PPKFyJ
WhdOLsE3yifIJUyyjQwQ3Jnde+SbaM6YzdDZTxsDmpimTic6LEpVwxjN2fQmHCtw
dXAEFrSCz8b9WmIvv6feh7K5ZWluBqsF6TK4sl6fIKZkJ0Q1UT2btC2Y3+ESklQ9
k2F6BBf513xhYWGysLseyS/eYjuwUrC9U4TBY3exwAnLf4LZzMu8D5vj/aSZz4Qu
/TdvTKK2aY4ReAAapAcOpBsBbuXYcA1Y4XKgqNrHLdrm+IdRICZT7IMUk6UYDps9
HsHXr2K5f3eVIoUtmqWtmvf5h3uaI96Gt26bpZpwMrNS2PIDu3dSO3tDuMPHxako
sLnZ6YxGM2+ECUSR4OPcjV4jLCZAzHegd1CLfpqbNePPw+H+K8Ix7+MnBD74NlAl
lWad/z0fUKhVw7vyptihGqHtPI8d8TJJjI81JWsoJtmyjF5hPjI=
=dOSL
-----END PGP SIGNATURE-----

--m7vgkybxm5ncctyv--
