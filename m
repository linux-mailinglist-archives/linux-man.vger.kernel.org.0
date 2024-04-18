Return-Path: <linux-man+bounces-782-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 498448A9021
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 02:45:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F4162282AE2
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 00:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8BAECC;
	Thu, 18 Apr 2024 00:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvCNLRYH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89657817
	for <linux-man@vger.kernel.org>; Thu, 18 Apr 2024 00:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713401120; cv=none; b=QFB5Iffk++KN6wg8ffD+BZgPSLqCvBtYtiEXlzZub5z3f1CRdRqxPcaIMqbmus1eGj3knrZDX3DWR41K4umrQ7GMWSNyL9ON+nMS6xRq/5CGnTynghXV0WHF21268/Zz1/SaqgM97cf354POv6NF47fc0WxhlHhcofyU/hC3A9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713401120; c=relaxed/simple;
	bh=KQHEFHB2tbNGNApBD9aBeqX04bheMGDIgk0hMO/J0tg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sx8xV67J7LOgHwgvW8v3KQqY5T2EYVEPjLPWZTT2HovC02RggyGiv1a/4Qm9huHIZ0+ilvw8j62liGiTTLf+AzzFvJ4BkEtf0Ml3kHKgJP0F1wVNtYwloZCPpbPh54IDaSkJmPcVgB7aVFb3vQ1TMyLfO9oIVv5aeKeRAfx/KXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvCNLRYH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BC48C072AA;
	Thu, 18 Apr 2024 00:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713401120;
	bh=KQHEFHB2tbNGNApBD9aBeqX04bheMGDIgk0hMO/J0tg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dvCNLRYHjHU+1OdYUWfuTZr4rOr9HOWWhbGJYqlrG0vpo9LCOBTDvNaXEO4meRe6V
	 9pThiKxAjPpzPPVUj+muSrROFJgY7x2aQse0K5VbjcEpsPz2ovROitEqoUckhXdJEg
	 UeSkp9od9VHN72/YdBDsO1Yx9TVDdxcrTUMHtOii1JQwZWlgeD5sNbE1VTVJ6Cl8Xz
	 5Rp0l5sywyoR5SxWz3lhPtBDhtwu25chjFM0mlndbgcVnKMs0OSzf/MdqCxFbyHhQe
	 7KCYFuew6bygCihmAd0WKQj7jSHlTaV3wgFxXe2DX/y2Q+s5ryjJzi2YXh+91dSPGn
	 lCAk9G62jys0w==
Date: Thu, 18 Apr 2024 02:44:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZiBtHeVlZmlGe0kP@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
 <ZhvLPvqHzpw2Jl3o@debian>
 <3935722.768hzMJKAL@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DcbEIhTrQLBwPOOD"
Content-Disposition: inline
In-Reply-To: <3935722.768hzMJKAL@pip>


--DcbEIhTrQLBwPOOD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Apr 2024 02:44:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Deri,

On Tue, Apr 16, 2024 at 01:14:12AM +0100, Deri wrote:
> diff --git a/share/mk/build/pdf/book/prepare.pl b/share/mk/build/pdf/book=
/prepare.pl
> index e23f149c6..bc922bd88 100755
> --- a/share/mk/build/pdf/book/prepare.pl
> +++ b/share/mk/build/pdf/book/prepare.pl
> @@ -1,4 +1,4 @@
> -#!/usr/bin/perl -w
> +#!/usr/bin/perl -wd
>  #
>  #	BuildLinuxMan.pl		: Build Linux manpages book
>  #	Deri James (& Brian Inglis)	: 15 Dec 2022
> @@ -49,16 +49,16 @@ my $dir2=3D$dir;
>  $dir2=3D~tr[.][_];
>  my %files;
>  my %aliases;
> -my %target;
> +my %revalias;
> =20
>  foreach my $al (`find "$dir"/man*/ -type f \\
>  		| grep "\\.[[:digit:]]\\([[:alpha:]][[:alnum:]]*\\)\\?\\>\$" \\
>  		| xargs grep '^\\.so' /dev/null;`)
>  {
>  	#$al=3D~tr[.][_];
> -	$al=3D~m/^$dir\/man\d[a-z]*\/(.*):\.\s*so\s*man\d[a-z]*\/(.*)/o;
> +	$al=3D~m/^$dir\/man\d[a-z]*\/(.*):\.\s*so\s*man\d[a-z]*\/(.*?)\.(.*)/o;

Your annotation said:

	-	$al=3D~m/^$dir\/man\d[a-z]*\/(.*):\.\s*so\s*man\d[a-z]*\/(.*)/o;
	+	$al=3D~m/^$dir\/man\d[a-z]*\/(.*):\.\s*so\s*man\d[a-z]*\/(.*?)\.(.*)/o;
	Example:-
	./man2/rt_sigaction.2:.so man2/sigaction.2
	=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
	=3D=3D=3D=3D=3D=3D=3D=3D=3D =3D
	$1
	$2
	$3
	Capture the file name extension in $3.

But the regex is wrong, I think.  Consider this part of the regex:

	(.*?)\.(.*)

For a page like gai.conf.5, the section would be 'conf.5'.  The '?' is
spurious, I think.

> =20
> -	$aliases{$1}=3D$2;
> +	$aliases{$1}=3D"$2($3)";
>  }
> =20
>  while (my ($k,$v)=3Deach %aliases)
> @@ -68,13 +68,18 @@ while (my ($k,$v)=3Deach %aliases)
>  	}
>  }
> =20
> +while (my ($k,$v)=3Deach %aliases)
> +{
> +	push(@{$revalias{$v}},$k);
> +}
> +
>  foreach my $fn (`find "$dir"/man*/ -type f \\
>  		| grep "\\.[[:digit:]]\\([[:alpha:]][[:alnum:]]*\\)\\?\\>\$";`)
>  {
>  	$fn=3D~s/\n//;
> =20
>  	my ($nm,$sec)=3DGetNmSec($fn,qr/\.\d[a-z]*/);
> -	$files{"${nm}.$sec"}=3D[$fn,(exists($aliases{"${nm}.$sec"}))?$aliases{"=
${nm}.$sec"}:"${nm}.$sec"];
> +	$files{"${nm}.$sec"}=3D[$fn,(exists($aliases{"${nm}.$sec"}))?$aliases{"=
${nm}.$sec"}:"${nm}($sec)"];
>  }
> =20
>  my $Section=3D'';
> @@ -97,7 +102,7 @@ sub BuildPage
>  	my $fn=3D$files{$bkmark}->[0];
>  	my ($nm,$sec,$srt)=3DGetNmSec($bkmark,qr/\.[\da-z]+/);
> =20
> -	my $title=3D "$nm\\($sec\\)";
> +	my $title=3D "$nm($sec)";
> =20
>  	print ".\\\" >>>>>> $nm($sec) <<<<<<\n.lf 0 $bkmark\n";
> =20
> @@ -112,8 +117,10 @@ sub BuildPage
>  		$Section=3D$sec;
>  	}
> =20
> -	if (exists($aliases{$bkmark})) {
> +	if (exists($aliases{$bkmark}))
> +	{
>  		print ".eo\n.device ps:exec [/Dest /$aliases{$bkmark} /Title ($title) =
/Level 2 /OUT pdfmark\n.ec\n.fl\n";
> +# 		print ".pdfbookmark 2 $nm($sec)";
>  		return;
>  	}
> =20
> @@ -137,7 +144,7 @@ sub BuildPage
> =20
>  			s/\\-/-/g if /^\.[BM]R\s+/;
> =20
> -			if (m/^\.BR\s+([-\w\\.]+)\s+\((.+?)\)(.*)/ or m/^\.MR\s+([-\w\\.]+)\s=
+(\w+)\s+(.*)/ or m/^\\fB([-\w\\.]+)\\fR\((.+?)\)(.*)$/) {
> +			if (m/^\.BR\s+([-\w\\.]+)\s+\(([\d\w]+?)\)(.*)/ or m/^\.MR\s+([-\w\\.=
]+)\s+(\w+)\s+(.*)/ or m/^\\fB([-\w\\.]+)\\fR\((.+?)\)(.*)$/) {

This regex might have similar issues (although they aren't being
introduced now).  And there might be others too.

BTW, your annotation was:

	Not completely sure if this change is necessary, just nervous
	about (.+?) as a pattern.

Agree; but there are more (.+?) in the same regex.


Have a lovely night!
Alex

>  				my $bkmark=3D"$1";
>  				my $sec=3D$2;
>  				my $after=3D$3;
> @@ -145,12 +152,7 @@ sub BuildPage
>  				my $dest=3D$bkmark;
>  				$dest=3D~s/\\-/-/g;
> =20
> -				if (exists($files{"${bkmark}.$sec"})) {
> -					my $dest=3D$files{"${bkmark}.$sec"}->[1];
> -					$_=3D".pdfhref L -D \"$dest\" -A \"$after\" -- \\fI$bkmark\\fP($sec=
)";
> -				} else {
> -					$_=3D".IR $bkmark ($sec)\\c\n$after";
> -				}
> +				$_=3D".MR \"$bkmark\" $sec $after";
>  			}
> =20
>  			s/^\.BI \\fB/.BI /;
> @@ -175,16 +177,20 @@ sub BuildPage
>  				s/\n\n/\n/g;
>  			}
> =20
> -			s/\\&\././ if m/^.TH /;
> -
> -			if (m/^\.TH\s+"?([-\w\\.]+)"?\s+"?(\w+)"?/) {
> -
> -				print "$_\n";
> -
> -				# Add a level two bookmark. We don't set it in the TH macro since th=
e name passed
> -				# may be different from the filename, i.e. file =3D unimplemented.2,=
 TH =3D UNIMPLEMENTED 2
> -
> -				print ".pdfbookmark -T $bkmark 2 $nm($sec)\n";
> +# 			s/\\&\././ if m/^.TH /;
> +#
> + 			if (m/^\.TH\s+"?([-\w\\.]+)"?\s+"?(\w+)"?(.*)/)
> + 			{
> +				print ".TH \"$nm\" \"$2\" $3\n";
> +
> +				if (exists($revalias{"$nm($sec)"}))
> +				{
> +					foreach my $dest (@{$revalias{"$nm($sec)"}})
> +					{
> +						my ($nm,$sec,$srt)=3DGetNmSec($dest,qr/\.[\da-z]+/);
> +						print ".pdfhref M -D $nm($sec)\n";
> +					}
> +				}
> =20
>  				next;
>  			}
> @@ -199,11 +205,8 @@ sub doMR
>  	my $nm=3Dshift;
>  	my $sec=3Dshift;
> =20
> -	if (exists($files{"${nm}.$sec"})) {
> -		return("\n.pdfhref L -D \"$files{\"${nm}.$sec\"}->[1]\" -A \"\\c\" -- =
\\fI$nm\\fP($sec)\n");
> -	} else {
> -		return("\\fI$nm\\fP($sec)");
> -	}
> +	return "\n.MR $nm $sec";
> +
>  }
> =20
>  sub GetNmSec


--=20
<https://www.alejandro-colomar.es/>

--DcbEIhTrQLBwPOOD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYgbQsACgkQnowa+77/
2zKs8Q//QwiNcT3jr6KY1fiihSZ1jM5yDmNmlYA5bgE/fPz+HTuvbG8FuIpzyHtE
TEdCXA6HdUISuMTmYzsnrc0HBxNL8Tz7QwsM2EcEeNqnqditi437gn7qWufJBUFd
c375Tv+Js1sNw8UrOJjpGnvx2/6qnhmDroKEVpb+LfkGHBXm34OJ6etv94mFZ4FO
zmDFUqCDaWsJ2ZjFhC5DdFO89GDJLvyOjm6d6hp/UHDnx9QPJyQj/+6kd/K6LJ8K
4WyxLj/cWd4FYIuARG2zEwu3bZ4cTBlO8NflkIBHxUJcJIpK26F79puPUE22BNcV
zkvdQaKvZUXf2FaiO3Ie4PBJmIYh8cZFXTBfC07qN67F7z2IEJXrwJnzfxoZhURo
DEXHq6JPVD2LEZ1n61YTmdb2Ohsym+n2bVwG7NyQh2HuD94m0pAaVEC2wDUQ5ZD6
YrrqWkyYmA81QeR4WFkHUmJuk2mQIYrqVPGtcd7AICS1JGRWXLXptwnamZ97221u
PVQpaYt3AdCjEnUyp5b2EcUAxbWPFTEAe4On+9dW1NWRJwrPzdmC4hzeN48AdF+Y
DT4bRA6flV/ylhh/9nNCGzccNdpbggS42sPVLtAzqat2P+0i2dfUM8Xp4jRhTwvI
2B+PDtXpV12FPEQt3wNylFJ710FidQio0K5jwfbtkT06JyIKKYY=
=n1A1
-----END PGP SIGNATURE-----

--DcbEIhTrQLBwPOOD--

