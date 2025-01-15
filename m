Return-Path: <linux-man+bounces-2243-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FC6A12BB7
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 20:25:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66F8C164309
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 19:25:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0565F1D618E;
	Wed, 15 Jan 2025 19:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY6XVBXx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58F21991B4
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 19:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736969124; cv=none; b=Ef+PWiYw6X3C6d7WeCOhkIeS64wO1fCUDoPmkYm+xD9xkPwvA6MX9EDyUEotgICm/UiuWngQDi3CRDbj7x50WmM0i0bzfUfI8LziqiRFxR9QOOkaQiOv8uWppoj/5SzP0AUXwQo7AU3dKvLBrUgsDy7VK/K2fe+8hjK5O/nKXV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736969124; c=relaxed/simple;
	bh=PbZCECurQEfkMbnUQ0/FCsWjEG1kCXVeKhBhxVAStIQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BHKrYEZorV7KAm4ZZt9aqnYSd+IYs+Gzhk8eOLzGJHL91THj9TSLc2uVv6kfnU89R/5KcbtfM3R630rA+vuuN60+HRANRtQ06sjiP2w3AXV0ngI45NNowtyiZNvY+HKb9rC40gZElSn5MdV3zGTzL5Iq25AkPsvpEpCtL++rB+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY6XVBXx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B62BC4CED1;
	Wed, 15 Jan 2025 19:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736969124;
	bh=PbZCECurQEfkMbnUQ0/FCsWjEG1kCXVeKhBhxVAStIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HY6XVBXxecFA2+aCdCyhQ8qqJ83c6IAAF8VPX4h0pFPJ81sxlX5tB+E5kgzrq/wn8
	 FLd1RztjUxEjJwVMPdW85W/YNBTm0Y6OIGRW6rO6bN5o75VkkS6/+BqtJO/Vyjbgi+
	 fg1opN6gJAlAM5thbK9DxHwmz44bJPp53p2axND/xW1x5jAuCXwhBI5wTQnL8ySWhz
	 rP70pJxS77xeddmilS6/jLSXFw1rpSSAOnOqmOCUMCHkfWG/WC5cEZAWb7Pco+xnPT
	 EgmvIEI17oa5JbavlT6yBlhxqfgXLBrMw4BqC8p4hb/alW7bDvex46bWusD9sDL3Nd
	 Gv8yFreGhp5/w==
Date: Wed, 15 Jan 2025 20:25:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>
Subject: Re: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
Message-ID: <ayj3k2xld4s4a6tscyupsluc7hthkqoi5apssnbcz6orrrbsqu@465ke2scsxln>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
 <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
 <20250115183724.b7mhx76zdqwca4yp@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="flciih4nfocowvfy"
Content-Disposition: inline
In-Reply-To: <20250115183724.b7mhx76zdqwca4yp@illithid>


--flciih4nfocowvfy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>
Subject: Re: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
 <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
 <20250115183724.b7mhx76zdqwca4yp@illithid>
MIME-Version: 1.0
In-Reply-To: <20250115183724.b7mhx76zdqwca4yp@illithid>

Hi Branden,

On Wed, Jan 15, 2025 at 12:37:24PM -0600, G. Branden Robinson wrote:
> > <https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap03.ht=
ml#tag_03_254>
>=20
> One way we've stepped on a rake in Unix terminology, and for no good
> reason I've been able to discover, is that we cling to the practice of
> referring to two different things as "paths".[1]
>=20
> * file names, possibly qualified with location information that may be
>   absolute or relative to the current working directory ("pathname",
>   "absolute path(name)", "relative path(name)"

POSIX consistently calls these "pathname", I think.

>=20
> * a list of the foregoing used to search for command file names or other
>   loadable resources that an application thinks likely to exist ("PATH",
>   "LD_LIBRARY_PATH", "MANPATH", "PYTHONPATH", "CLASSPATH", etc.)

You could say the *PATH variables contain one or more path(name)s.
Maybe I would have put an *S in those variable names, because a plural
amount may be one, but a singular amount may not be more than 1, but
history.  :/

> To state it differently, we are passionately committed to using the term
> "path" to refer to objects of significantly distinguishable types, such
> as:
>=20
>   char *
> and
>   char **.

I would actually use path and paths for such variable names.

> And since this application doesn't admit general recursion--we don't
> ever refer to a single character as a "path", nor to a list of lists of
> file names as "path", the usage is corrosive to coherent thought.

In my programming, I tend to use plural for lists.  (*checks to make
sure can't be called a liar*)

> I don't have any real hope of reforming this abhorrent practice--
> I fear the cement had set good and hard before even POSIX Issue _1_
> came out.  (Can I blame "/usr/group"?)
>=20
> But...in the event the donkey I'm riding has borrowed some of its
> genetic material from a vigorous young warhorse (let's call him
> "JeanHeyd"), I would:
>=20
> 1.  Reserve the term "path" solely for discussion search paths, such as
>     those implemented by "PATH".

The issue I have is: I hate long function parameter names.  I think I
prefer having path and pathname be synonyms.  I still would be
consistent in manual pages to use only one of them, but would make them
synonyms.

I think I would use pathname when speaking, but path for variable names
(which are usually shorter; e.g., string and s).

> 2.  Adopt the term "filespec", or "file specification", or even just
>     "file name", to refer to a character sequence that locates a file.
>     POSIX interfaces and utilities tend strongly to be general in this
>     respect, in the sense that anywhere a "basename" (the "final
>     component" of a "pathname") is accepted, one that is qualified is
>     also accepted, as in an "absolute pathname" or "relative pathname".

A good example of what you're talking about is exec(3):

     int execl(const char *pathname, const char *arg, ...
                     /*, (char *) NULL */);
     int execlp(const char *file, const char *arg, ...
                     /*, (char *) NULL */);
     int execle(const char *pathname, const char *arg, ...
                     /*, (char *) NULL, char *const envp[] */);
     int execv(const char *pathname, char *const argv[]);
     int execvp(const char *file, char *const argv[]);
     int execvpe(const char *file, char *const argv[], char *const envp[]);

The p functions *require* a filename, while the non-p functions accept a
pathname.  I would change that manual page for consistency into either
pathname and filename, or path and file, but the current mix is bad.

>     The occasions upon which you want to refuse to traverse outside of a
>     directory is rare enough, and specialized enough, that it merits
>     case-specific discussion.  These are replete with complication.  Is
>     traversing only into a subdirectory of the current working directory
>     acceptable?  Should symlinks be followed?  If so, should they be
>     permitted to escape the part of the tree descended from the current
>     working directory?  Back in the day, about a thousand security
>     advisories were issued against FTP servers arising from confused or
>     unstated policy here, and the terminology of "pathname" did
>     _nothing_ to help resolve them.  (Did that term help create the
>     problems by fogging the minds of the application developers?  Who
>     knows?)

That is, filename is rare, and pathname is usually what tools use.
Agree.

> and
>=20
> 3.  Throw away the term "pathname" entirely.  Banish it.

Nah, it's standard.  I like that one can go to POSIX and consult what it
means.  I'll try to use POSIXly correct terms.  Actually, it's the term
I'd use more often.

> And yes, I know, POSIXly correct people

I tend to be.  :-)

> can claim to "eliminate" this
> confusion by interrupting conversations with a raised finger:
>=20
> "No, no--you don't mean 'path', but 'path_name_'."
>=20
> In my life I have found that I have sufficient talent for being
> simultaneously right and annoying.  I don't need that kind of help.
>=20
> So--will you ride with me, Sancho?  I mean, Alex?  ;-)

Hmmm, not this time, I think.  :-)

>=20
> > > +.IP \[bu]
> > > +If you want to store a file on a vfat filesystem,
> > > +then its filename can=E2=80=99t contain a 0x3A byte (: in ASCII)
> >=20
> > Is that the only one?  I expect there are several characters that are
> > not allowed in vfat.
>=20
> You also can't _end_ a file name with "." (0x2E).  I think there are
> other restrictions.  Putting my own music collection on a file system
> that I needed to be able to share with Windows boxes, many years ago,
> was a tedious exercise in discovering VFAT's irritating limitations.

<https://unix.stackexchange.com/questions/92426/why-doesnt-the-linux-vfat-d=
river-allow-certain-characters>
seems to say there's a list of forbidden characters:

	?<>\:*|"

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--flciih4nfocowvfy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeIC6YACgkQnowa+77/
2zIdKA//eVZhtQq/8xjXdlv9ZX7Th6kOHOnbj0Jbu3MM5ShWGrl5V7U23DwPDEmV
+b57Z6r/vkQqVYcQTxjHBomekB4xyYVjnbS9WUOU0jDhZM9XGQOU7PS1M2pm3J14
GDAAopOwVHebbwB99j5zWH/q7/eGYfoz7XQBCNoTV2eTbjulX1tkTBapwylHElXQ
K9FxhSoZvN8gzXC95pRUmagvO6RgKnRYK608MEyqvmminGB22l7qzIqi0vkpaR5a
jMcjczGUs1bNTjBZJdasAlU+650o/eYv0gQ4a7AV1ZE7XRtxUpVGx7iRJpT7Uiyc
tcD4BqG3GsYtFogOno4+54SmGQJ5yF08tJ54I2cZKFLmo+IkcbGn4A1ZaadSiRs/
XdDDrR8SbF0ItiUXylEBGIO7SgpPEplKWBYLgoIB3GjGkcauaP4TLBt3qWDeI4M6
Ooj6hXUu7qZVC+j40mZ4XyVvpVZUT9jxSh2/QItwTJH4ow1yCRbXCnbjBKZDhanz
bQjd6gxxS4zFyYZxJghmAB2jhZd49rqXyrHM2RujOV0ugkI8zbqTfSdFlnxgqdi+
ntgy7T9YUwZeD/WCtd3UbHNwIwfRjBd2677etmvbL+ka/zIGuvNnSHDe0NuPnfvY
IjXmRLFFMtO3RL7gW38c7hMmp6YPp4hyZplz0x2AcB2Q6lXvgcQ=
=Jxsg
-----END PGP SIGNATURE-----

--flciih4nfocowvfy--

