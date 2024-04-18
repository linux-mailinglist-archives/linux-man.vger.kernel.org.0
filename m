Return-Path: <linux-man+bounces-783-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB788A905C
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 03:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 799901F21B33
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 01:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9784E6AD6;
	Thu, 18 Apr 2024 01:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeRgW5AR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5838C53AC
	for <linux-man@vger.kernel.org>; Thu, 18 Apr 2024 01:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713402497; cv=none; b=Z75fvnLWe9mt9sucNNZfZ5HDtwA6xfqLPCy54KWGGhRJD0YQmK3l75HOXVlOeDzsQCYEOSkB5dFf74fM0IRCPaV6ZfGCSvtG5xIF1wzO7MPPyJGhds56rD8rP3B+dkbwto6VAFLl29ntf3Zkggg7u3uirUKg086j/MkeKIvlKwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713402497; c=relaxed/simple;
	bh=wfnhxtjRgOkglc9QOTEY9B57aCuvQr8Xpa1vcpbz8IQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PLsD1L8nRGkczywdZlrQZWAc5NyJts2VNcV//PHZ5nk3l1LZZfKL+nejH+luE4+YRKpep67OEa4ClX603TxlxUbTNKzPuyIhyeFlNE466AKc2z3RGWVPWDdvTWBPKo4TFLK5i7svVDhhsSVnLxfJ7NzPdMIfdv9/54lVLvkx1YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeRgW5AR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EA16C072AA;
	Thu, 18 Apr 2024 01:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713402497;
	bh=wfnhxtjRgOkglc9QOTEY9B57aCuvQr8Xpa1vcpbz8IQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KeRgW5AR0xOTdYBRLXiU2wXuSrw25iYJPHhHw/e94BE+qrFpZcqTsJGKHu/fFg95f
	 vPW/eTLJ6vPswK64HPjIvJsZpt4z9mE8gK0e6rf1EREPk10JB41ewC9F2M3KdB5aYM
	 T1OHG85TuwNM36xxa95x6cFLlxdeH1sID1bvzpS6dMzCOeXhutZ8ZEyZv5byw9e3Wa
	 rsCIpgNzm44KeG8XavdcTqTmdEmI54ont4u/vCmetYVT2CR10/AJ+o6Oam/6Qs8j4H
	 wgSrMX7Xm0c9JGfwJcYQFez9tZemxmlTAGRcenntVr+EOdtvy8zU3jx+taj1Q7Nt8g
	 c4kKjiDo0aLUg==
Date: Thu, 18 Apr 2024 03:08:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZiByfbP0XUA0RR7_@debian>
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
	protocol="application/pgp-signature"; boundary="R7uhYHyjt6uaifhs"
Content-Disposition: inline
In-Reply-To: <3935722.768hzMJKAL@pip>


--R7uhYHyjt6uaifhs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Apr 2024 03:08:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

Hi Branden,

After applying Deri's patches, I can see the turtle.

real	2m20.018s
user	2m34.825s
sys	0m0.571s

Before that patch, it's

real	0m14.576s
user	0m18.171s
sys	0m0.464s


That means groff(1) is being ~9x slower.

Have a lovely night!
Alex

On Tue, Apr 16, 2024 at 01:14:12AM +0100, Deri wrote:
> diff --git a/tmac/an.tmac b/tmac/an.tmac
> index d9e8232f8..46934fd62 100644
> --- a/tmac/an.tmac
> +++ b/tmac/an.tmac
> @@ -212,7 +212,7 @@
>  .
>  .\" Customize this at the command line to, for example, group multiple
>  .\" man pages within a collection or containing document.
> -.nr an*bookmark-base-level 0
> +.nr an*bookmark-base-level \n[an*bookmark-base-level]+0
>  .
>  .\" Write a bookmark/anchor/link target $2 at hierarchical depth $1.
>  .de an*bookmark
> @@ -230,7 +230,8 @@
>  .ds an*bookmark*utf8 \" empty
>  .
>  .de an*bookmark*pdf
> -.  ie (\\$1 =3D 1) \
> +.nr an:lev \\n[an*bookmark-base-level]+1
> +.  ie (\\$1 =3D \\n[an:lev]) \
>  .    pdfbookmark -T "\\$2" \\$1 \\$2
>  .  el \
>  .    pdfbookmark \\$1 \\$2

> diff --git a/share/mk/build/pdf/book/_.mk b/share/mk/build/pdf/book/_.mk
> index 3395e67e9..9f1cdc520 100644
> --- a/share/mk/build/pdf/book/_.mk
> +++ b/share/mk/build/pdf/book/_.mk
> @@ -33,12 +33,12 @@ _PDF_BOOK :=3D $(_PDFDIR)/$(PDF_BOOK)
>  $(_PDF_BOOK): $(_MANPAGES) $(_TINOS) $(MKBOOK) $(MK) | $$(@D)/
>  	$(info	$(INFO_)GROPDF		$@)
>  	$(MKBOOKDIR)/prepare.pl $(_MANDIR) \
> -	| $(CAT) $(MKBOOKDIR)/front.roff $(MKBOOKDIR)/an.tmac /dev/stdin \
> +	| $(CAT) $(MKBOOKDIR)/front.roff /dev/stdin \
>  	| $(PRECONV) \
>  	| $(PIC) \
>  	| $(TBL) \
>  	| $(EQN) -Tpdf \
> -	| $(TROFF) -Tpdf -F$(_FONTSDIR) -dpaper=3Da4 $(TROFFFLAGS) \
> +	| pdfmom --roff -F$(_FONTSDIR) -man -r an*bookmark-base-level=3D1 -dpap=
er=3Da4 $(TROFFFLAGS) -Z \
>  	| $(GROPDF) -F$(_FONTSDIR) -pa4 $(GROPDFFLAGS) \
>  	| $(SPONGE) $@
> =20
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

--R7uhYHyjt6uaifhs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYgcn0ACgkQnowa+77/
2zKrURAAlKli9RbJ4lCdjnjcLOKPBoR7Aeus05f1zigjrp5M17B0ctOcFA5tc7LN
JtoJTsU+nreSqgfCHKiOfNn6kc/JqIQVisADWSzbKMZ78YoJa0jfxf54PVA93QRO
mborVLdILOVvbz6RLGMk4RAZ9Ky3MpTGC3m8quUxGaoxxN/6Xqvq66dv0LvmIp8i
94yvBKkCG5yCSohmPQ+U2tXO8MIB+h4KSWOvKG9pgNxv2+QvpJeNkk7Yqfuj7uGi
9qkCw+sS/ufy3J+5Geyxf2WHf0Cz+ZPGk6N++j/CTuH3hUcOlUzDhikhrK0N7dCo
QJoXwHbUg9EcFRljpFuCE45oi5GTazJryelsuaHblwpWivmMKlnIMyfZXhMSdnT6
4ABr0FCpTAD+nD913HMTPbR8NL7CX4yM/ieFztD602QqBGp1cwNwyJKFzxrhvNmx
nQDlSLRSYRS4/5Waba02b3DKQS4YZHOrjMRbxuoZjugZqgk4nRJdKtoZQB3STG3z
0PdjUJbsqMAFTvYu4ghxCWaC6ENCPP5y8bnz2pLeblDyeNOCG3laSqJdj4rqMwmH
S3aIygMKIzOq6ZWWwPciyHNXyepN/yBDJL8Qhk190fyn4soSaGwZgy9MxUHTYleB
oemaX7TVx5AzX3CEqcE1WU35rlffU90NlFtdElc/533+lcS/XTc=
=4DL4
-----END PGP SIGNATURE-----

--R7uhYHyjt6uaifhs--

