Return-Path: <linux-man+bounces-1334-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 830B4928DC4
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:28:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D334FB2301B
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0156416F0C9;
	Fri,  5 Jul 2024 19:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODbKLw71"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62B816EC07
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 19:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720207726; cv=none; b=m7/VrSRTEMXGVRxnXpwwGkfUMNqWd57oNLZKRtRoq8GeX4SUPZPyzLDP6iX9j8RHX9kfycBefx+FQVknc1E145CeCuuyRfNAE5/NKk6mGdzaxfk/Cu4QESK1jfKNoiQyrFbhf6SM1Ft/xf8I+bABO5jLkknLlTX+MyafrrmVYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720207726; c=relaxed/simple;
	bh=bRVWorz7jOXo5gZOq4uw31JCL3JUnmqzj6DkKwq187U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UAY4XvojHh1tEQA/h8D6COfPdktJ6qmuT6O710Or3GE5Zvol0hiQuGtZZU5dT4kcLWGuLYpi2cnkRlSrGYG50CtZ4gHqaM4hk3Vu9K1PvsFSDSxRMUJNAhJ9dQNnHDIS4ZZ9PlkZXF/vEvS9xCSBAzsd8esBvDm+zALxsxLrucw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODbKLw71; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D1F8C32786;
	Fri,  5 Jul 2024 19:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720207726;
	bh=bRVWorz7jOXo5gZOq4uw31JCL3JUnmqzj6DkKwq187U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODbKLw711hf8OL9YwrNZlmYXoCU5ShzYu7auY6tzL7E74XLT4JWlyFJ/PLc6E8Mwa
	 nO4cyzTvXweElpVk81dbQJWCN5SRPwPwOJSXYQZw9Oq9JwVxGhMe53zOERkDvFY3hx
	 ZcymxcGRQNR5cajNMFTwMXmGgfe5S65DocUfww07AuI1r2crjbi5jBM07HvQRmvkdJ
	 qrb/bhhGvuR7NY8kR+oRKrPMnHKJcY0W+REtfrPT2zidAMcv0Z4f+ehAXOskgxXZUk
	 IOO+S8NdMlW32tdIdZDqcORtpv/ZDXZ8H3tIdpBd7UArGyUeaD2xT/DxnibwdlVEdR
	 2nrubavBHBr1A==
Date: Fri, 5 Jul 2024 21:28:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
Message-ID: <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="25gxbdz3r6brjxsl"
Content-Disposition: inline
In-Reply-To: <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>


--25gxbdz3r6brjxsl
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="rohmhlozz6q46nwg"
Content-Disposition: inline
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>


--rohmhlozz6q46nwg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jul 05, 2024 at 06:30:50PM GMT, Martin Uecker wrote:
> Am Freitag, dem 05.07.2024 um 17:24 +0100 schrieb Jonathan Wakely:
> > On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
> > >=20
> > > On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > > > At least, I hope there's consensus that while current GCC doesn't w=
arn
> > > > about this, ideally it should, which means it should warn for valid=
 uses
> > > > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > > > POSIX, and glibc.
> > >=20
> > > It **shouldn't**.  strtol will only violate restrict if it's wrongly
> > > implemented, or something dumb is done like "strtol((const char*) &p,
> > > &p, 0)".
> > >=20
> > > See my previous reply.

That's not right.  See my reply to yours, Xi.  The restrict in

	char **endptr

already prevents calls such as strtol(x, x, 0).

The restrict in

	const char *nptr

provides nothing.

> >=20
> > Right, is there a valid use of strtol where a warning would be justifie=
d?

Is there any valid reason to have restrict in the _first_ parameter of
strtol(3)?  Other than "ISO C says so"?  I'll take my beef with ISO C to
WG14, and hopefully get that fixed.  Can we please discuss this
technically, ignoring the existence of ISO C, for the time being?

> > Showing that you can contrive a case where a const char* restrict and
> > char** restrict can alias doesn't mean there's a problem with strtol.
>=20
> I think his point is that a const char* restrict and something which
> is stored in a char* whose address is then passed can alias and there
> a warning would make sense in other situations.  =20

Indeed.

> But I am also not convinced removing restrict would be an improvement.
> It would make more sense to have an annotation that indicates that
> endptr is only used as output.

What is the benefit of keeping restrict there?  It doesn't provide any
benefits, AFAICS.

I've prepared a paper for wg14.  I'll ask for a number, but will attach
it here already.  I also attach the man(7) source code for it.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--rohmhlozz6q46nwg
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="strtol.man"
Content-Transfer-Encoding: quoted-printable

=2E=0A.=0A.TH Nxxxx\~ WG14 2024-07-05 "Proposal for C2y"=0A.=0A.=0A.SH Syno=
psis=0A.=0A.SS Title=0A.=0A.MR strtol 3=0Aet al.\&=0Ashould't have a restri=
cted first parameter.=0A.=0A.SS Author=0A.=0A.MT alx@kernel.org=0AAlejandro=
 Colomar Andres=0A.ME ;=0Amaintainer of the=0A.UR https://www.kernel.org/do=
c/man-pages/=0ALinux man-pages project=0A.UE .=0A.=0A.SS Proposal category=
=0A.=0ABug fix.=0A.=0A.SS Cc=0A.=0A.MT libc-alpha@sourceware.org=0AGNU C li=
brary=0A.ME=0A.br=0A.MT gcc@gcc.gnu.org=0AGNU Compiler Collection=0A.ME=0A.=
br=0A.MT eggert@cs.ucla.edu=0APaul Eggert=0A.ME=0A.br=0A.MT xry111@xry111.s=
ite=0AXi Ruoyao=0A.ME=0A.br=0A.MT jakub@redhat.com=0AJakub Jelinek=0A.ME=0A=
=2Ebr=0A.MT uecker@tugraz.at=0AMartin Uecker=0A.ME=0A.br=0A.MT lh_mouse@126=
=2Ecom=0ALIU Hao=0A.ME=0A.br=0A.MT jwakely.gcc@gmail.com=0AJonathan Wakely=
=0A.ME=0A.br=0A.MT Richard.Earnshaw@arm.com=0ARichard Earnshaw=0A.ME=0A.br=
=0A.MT sam@gentoo.org=0ASam James=0A.ME=0A.=0A.=0A.SH Description=0A.=0A.SS=
 restrict=0A.=0AThe=0A.I restrict=0Aqualifier is used in parameters by APIs=
 to inform the callers that=0A.IP \[bu] 3=0AThe API=0A.I may=0Acopy from on=
e of the objects to another one,=0Aor perform other operations that would c=
ause similar problems.=0ATo avoid violations of for example C11::6.5.16.1p3=
,=0Acallers=0A.I must not=0Apass other references to the same object.=0A.IP=
 \[bu]=0AThe API=0A.I may=0Aoptimize=0Abased on the assumption that=0Awriti=
ng to such a parameter=0Awill not affect any of the other objects it receiv=
ed.=0AThis is actually just another way to express the previous point.=0A.P=
=0AThe definition of the=0A.I restrict=0Aqualifier is in terms of accesses.=
=0AAs long as an object is only accessed via one restricted pointer,=0Aothe=
r restricted pointers are allowed to point to the same object.=0AThis is le=
ss strict than I think it should be,=0Abut this proposal doesn't attempt to=
 change that definition.=0A.P=0AA consequence of the definition is that the=
 following program is correct:=0A.IP=0A.EX=0Aint f(const char *restrict ca,=
 char *restrict a);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=0A	char  =
*xp =3D &x;=0A\&=0A	f(xp, xp);=0A}=0A\&=0Aint=0Af(const char *restrict ca, =
char *restrict a)=0A{=0A	/*=0A	 * We're not allowed to use '>' on pointers =
to distinct (array)=0A	 * objects, but since we don't access the objects, t=
hey might=0A	 * point to the same object.  In fact, they _must_ point to th=
e=0A	 * same one to avoid UB here.=0A	 */=0A	return ca > a;=0A}=0A.EE=0A.=
=0A.SS Diagnostics=0A.=0AWhile the above program is correct,=0Ait's a bad u=
se of the qualifier:=0Aone can only guarantee that it's correct=0Aby inspec=
ting the source code of both the caller and the callee.=0ACompilers are far=
 more conservative=0Ain what is considered a good use of the=0A.I restrict=
=0Aqualifier.=0A.P=0ACompilers emit diagnostics so that=0Ait is only necess=
ary to inspect the source code of=0Aeither the caller or the callee to=0Ade=
tect what is likely a violation.=0AIdeally, the definition of=0A.I restrict=
=0Acould be tightened to match those diagnostics.=0A.P=0AGCC emits diagnost=
ics for the example program shown above:=0A.IP=0A.EX=0A.RB $ " gcc -Wall -W=
extra f.c" ;=0Af.c: In function =E2=80=98main=E2=80=99:=0Af.c:9:7: warning:=
 passing argument 2 to =E2=80=98restrict=E2=80=99-qualified parameter alias=
es with argument 1 [-Wrestrict]=0A    9 |       f(xp, xp);=0A      |       =
\[ha]=0A.EE=0A.=0A.SS Pointer-to-pointer=0A.=0AHere's another example progr=
am that is technically correct.=0AThe parameters in this example more close=
ly resemble=0A.MR strtol 3 ,=0Aby using a pointer-to-pointer as the second =
parameter.=0AOther than that,=0Ait's conceptually the same as the=0A.I f.c=
=0Aprogram shown above.=0A.IP=0A.EX=0Aint g(const char *restrict ca, char *=
restrict *restrict ap);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=0A	ch=
ar  *xp =3D &x;=0A\&=0A	g(xp, &xp);=0A}=0A\&=0Aint=0Ag(const char *restrict=
 ca, char *restrict *restrict ap)=0A{=0A	return ca > *ap;=0A}=0A.EE=0A.P=0A=
In this case,=0Acompilers are not smart enough to detect that=0Aboth parame=
ters alias each other.=0AHowever,=0Aone could conceive a better compiler th=
at would emit a diagnostic=0Asimilar to the one in=0A.IR f.c .=0A.=0A.SS st=
rtol(3)=0A.=0AThe standard prototype for=0A.MR strtol 3=0Ais=0A.IP=0A.EX=0A=
long int=0Astrtol(const char *restrict nptr, char **restrict endptr, int ba=
se);=0A.EE=0A.P=0A.MR strtol 3=0Aaccepts three pointers:=0A.IP \[bu] 3=0A.P=
D 0=0A.I nptr=0A.IP \[bu]=0A.I *endptr=0A.IP \[bu]=0A.I endptr=0A.PD=0A.P=
=0A.I endptr=0Acannot alias any other pointer;=0Ait must use=0A.IR restrict=
 .=0AHowever,=0Athe other two will often alias each other.=0AConsider for e=
xample the case where two numbers are read from a string:=0A.IP=0A.EX=0Acha=
r  str[] =3D "1 2";=0A\&=0Ap =3D str;=0An =3D strtol(p, &p, 0);=0Am =3D str=
tol(p, &p, 0);=0A.EE=0A.P=0ATo prevent triggering diagnostics in a hypothet=
ical compiler=0Athat would be smart enough to diagnose the example function=
 g(),=0Athe prototype of=0A.MR strtol 3=0Ashould be changed to=0A.IP=0A.EX=
=0Along int=0Astrtol(const char *nptr, char **restrict endptr, int base);=
=0A.EE=0A.P=0AThis prototype would still allow diagnosing bogus calls such =
as=0A.I \%strtol((char*)&p,\~&p,\~0);=0Aor=0A.I \%strtol(p,\~(char**)p,\~0)=
;=0Aand has no downsides.=0A.P=0ASince the function does not access=0A.IR *=
endptr ,=0Athis qualifier shouldn't cause any performance pessimizations.=
=0A.=0A.=0A.SH Proposal (diff based on C23/N3047)=0A.=0A.SS 7.8.2.3p1 [The =
strtoimax and strtoumax functions]=0A.=0A.EX=0A\-intmax_t strtoimax(const c=
har * restrict nptr, char ** restrict endptr, int base);=0A+intmax_t strtoi=
max(const char *nptr, char **restrict endptr, int base);=0A.P=0A\-uintmax_t=
 strtoumax(const char * restrict nptr, char ** restrict endptr, int base);=
=0A+uintmax_t strtoumax(const char *nptr, char **restrict endptr, int base)=
;=0A.EE=0A.=0A.SS 7.8.2.4p1 [The wcstoimax and wcstoumax functions]=0A.=0A.=
EX=0A\-intmax_t wcstoimax(const wchar_t *restrict nptr, wchar_t **restrict =
endptr, int base);=0A+intmax_t wcstoimax(const wchar_t *nptr, wchar_t **res=
trict endptr, int base);=0A.P=0A\-uintmax_t wcstoumax(const wchar_t *restri=
ct nptr, wchar_t **restrict endptr, int base);=0A+uintmax_t wcstoumax(const=
 wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.EE=0A.=0A.SS 7.24.=
1.5p1 [The strtod, strtof, and strtold functions]=0A.=0A.EX=0A\-double strt=
od(const char *restrict nptr, char **restrict endptr);=0A+double strtod(con=
st char *nptr, char **restrict endptr);=0A.P=0A\-float strtof(const char *r=
estrict nptr, char **restrict endptr);=0A+float strtof(const char *nptr, ch=
ar **restrict endptr);=0A.P=0A\-long double strtold(const char *restrict np=
tr, char **restrict endptr);=0A+long double strtold(const char *nptr, char =
**restrict endptr);=0A.EE=0A.=0A.SS 7.24.1.6p1 [The strtodN functions]=0A.=
=0A.EX=0A\-_Decimal32 strtod32(const char * restrict nptr, char ** restrict=
 endptr);=0A+_Decimal32 strtod32(const char *nptr, char **restrict endptr);=
=0A.P=0A\-_Decimal64 strtod64(const char * restrict nptr,char ** restrict e=
ndptr);=0A+_Decimal64 strtod64(const char *nptr, char **restrict endptr);=
=0A.P=0A\-_Decimal128 strtod128(const char * restrict nptr,char ** restrict=
 endptr);=0A+_Decimal128 strtod128(const char *nptr, char **restrict endptr=
);=0A.EE=0A.=0A.SS 7.24.1.7p1 [The strtol, strtoll, strtoul, and strtoull f=
unctions]=0A.=0A.EX=0A\-long int strtol(const char *restrict nptr, char **r=
estrict endptr, int base);=0A+long int strtol(const char *nptr, char **rest=
rict endptr, int base);=0A.P=0A\-long long int strtoll(const char *restrict=
 nptr, char **restrict endptr, int base);=0A+long long int strtoll(const ch=
ar *nptr, char **restrict endptr, int base);=0A.P=0A\-unsigned long int str=
toul(const char *restrict nptr, char **restrict endptr, int base);=0A+unsig=
ned long int strtoul(const char *nptr, char **restrict endptr, int base);=
=0A.P=0A\-unsigned long long int strtoull(const char *restrict nptr, char *=
*restrict endptr, int base);=0A+unsigned long long int strtoull(const char =
*nptr, char **restrict endptr, int base);=0A.EE=0A.=0A.SS 7.31.4.1.2p1 [The=
 wcstod, wcstof, and wcstold functions]=0A.=0A.EX=0A\-double wcstod(const w=
char_t * restrict nptr, wchar_t ** restrict endptr);=0A+double wcstod(const=
 wchar_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-float wcstof(const wch=
ar_t * restrict nptr, wchar_t ** restrict endptr);=0A+float wcstof(const wc=
har_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-long double wcstold(const=
 wchar_t * restrict nptr, wchar_t ** restrict endptr);=0A+long double wcsto=
ld(const wchar_t *nptr, wchar_t **restrict endptr);=0A.EE=0A.=0A.SS 7.31.4.=
1.3p1 [The wcstodN functions]=0A.=0A.EX=0A\-_Decimal32 wcstod32(const wchar=
_t * restrict nptr, char ** restrict endptr);=0A+_Decimal32 wcstod32(const =
wchar_t *nptr, char **restrict endptr);=0A.P=0A\-_Decimal64 wcstod64(const =
wchar_t * restrict nptr,char ** restrict endptr);=0A+_Decimal64 wcstod64(co=
nst wchar_t *nptr, char **restrict endptr);=0A.P=0A\-_Decimal128 wcstod128(=
const wchar_t * restrict nptr,char ** restrict endptr);=0A+_Decimal128 wcst=
od128(const wchar_t *nptr, char **restrict endptr);=0A.EE=0A.=0A.SS 7.31.4.=
1.4p1 [The wcstol, wcstoll, wcstoul, and wcstoull functions]=0A.=0A.EX=0A\-=
long int wcstol(const wchar_t * restrict nptr, wchar_t ** restrict endptr, =
int base);=0A+long int wcstol(const wchar_t *nptr, wchar_t **restrict endpt=
r, int base);=0A.P=0A\-long long int wcstoll(const wchar_t * restrict nptr,=
 wchar_t ** restrict endptr, int base);=0A+long long int wcstoll(const wcha=
r_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-unsigned long int=
 wcstoul(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int bas=
e);=0A+unsigned long int wcstoul(const wchar_t *nptr, wchar_t **restrict en=
dptr, int base);=0A.P=0A\-unsigned long long int wcstoull(const wchar_t * r=
estrict nptr, wchar_t ** restrict endptr, int base);=0A+unsigned long long =
int wcstoull(const wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.=
EE=0A.=0A.SS B.7 [Format conversion of integer types <inttypes.h>]=0A.=0A.E=
X=0A\-intmax_t strtoimax(const char * restrict nptr, char ** restrict endpt=
r, int base);=0A+intmax_t strtoimax(const char *nptr, char **restrict endpt=
r, int base);=0A.P=0A\-uintmax_t strtoumax(const char * restrict nptr, char=
 ** restrict endptr, int base);=0A+uintmax_t strtoumax(const char *nptr, ch=
ar **restrict endptr, int base);=0A.P=0A\-intmax_t wcstoimax(const wchar_t =
*restrict nptr, wchar_t **restrict endptr, int base);=0A+intmax_t wcstoimax=
(const wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-uintma=
x_t wcstoumax(const wchar_t *restrict nptr, wchar_t **restrict endptr, int =
base);=0A+uintmax_t wcstoumax(const wchar_t *nptr, wchar_t **restrict endpt=
r, int base);=0A.EE=0A.=0A.SS B.22 [General utilities <stdlib.h>]=0A.=0A.EX=
=0A\-double strtod(const char *restrict nptr, char **restrict endptr);=0A+d=
ouble strtod(const char *nptr, char **restrict endptr);=0A.P=0A\-float strt=
of(const char *restrict nptr, char **restrict endptr);=0A+float strtof(cons=
t char *nptr, char **restrict endptr);=0A.P=0A\-long double strtold(const c=
har *restrict nptr, char **restrict endptr);=0A+long double strtold(const c=
har *nptr, char **restrict endptr);=0A.P=0A\-long int strtol(const char *re=
strict nptr, char **restrict endptr, int base);=0A+long int strtol(const ch=
ar *nptr, char **restrict endptr, int base);=0A.P=0A\-long long int strtoll=
(const char *restrict nptr, char **restrict endptr, int base);=0A+long long=
 int strtoll(const char *nptr, char **restrict endptr, int base);=0A.P=0A\-=
unsigned long int strtoul(const char *restrict nptr, char **restrict endptr=
, int base);=0A+unsigned long int strtoul(const char *nptr, char **restrict=
 endptr, int base);=0A.P=0A\-unsigned long long int strtoull(const char *re=
strict nptr, char **restrict endptr, int base);=0A+unsigned long long int s=
trtoull(const char *nptr, char **restrict endptr, int base);=0A.EE=0A.=0A.S=
S B.30 [Extended multibyte/wide character utilities <wchar.h>]=0A.=0A.EX=0A=
\-long int wcstol(const wchar_t * restrict nptr, wchar_t ** restrict endptr=
, int base);=0A+long int wcstol(const wchar_t *nptr, wchar_t **restrict end=
ptr, int base);=0A.P=0A\-long long int wcstoll(const wchar_t * restrict npt=
r, wchar_t ** restrict endptr, int base);=0A+long long int wcstoll(const wc=
har_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-unsigned long i=
nt wcstoul(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int b=
ase);=0A+unsigned long int wcstoul(const wchar_t *nptr, wchar_t **restrict =
endptr, int base);=0A.P=0A\-unsigned long long int wcstoull(const wchar_t *=
 restrict nptr, wchar_t ** restrict endptr, int base);=0A+unsigned long lon=
g int wcstoull(const wchar_t *nptr, wchar_t **restrict endptr, int base);=
=0A.EE=0A.=0A.SS H.12.2p1 [String to floating]=0A.=0A.EX=0A\-_FloatN strtof=
N(const char * restrict nptr, char ** restrict endptr);=0A+_FloatN strtofN(=
const char *nptr, char **restrict endptr);=0A.P=0A\-_FloatNx strtofNx(const=
 char * restrict nptr, char ** restrict endptr);=0A+_FloatNx strtofNx(const=
 char *nptr, char **restrict endptr);=0A.P=0A\-_DecimalN strtodN(const char=
 * restrict nptr, char ** restrict endptr);=0A+_DecimalN strtodN(const char=
 *nptr, char **restrict endptr);=0A.P=0A\-_DecimalNx strtodNx(const char * =
restrict nptr, char ** restrict endptr);=0A+_DecimalNx strtodNx(const char =
*nptr, char **restrict endptr);=0A.EE=0A.=0A.SS H.12.4.1p1 [The strtoencfN =
functions]=0A.=0A.EX=0A\-void strtoencfN(unsigned char encptr[restrict stat=
ic N/8], const char * restrict nptr, char ** restrict endptr);=0A+void strt=
oencfN(unsigned char encptr[restrict static N/8], const char *nptr, char **=
restrict endptr);=0A.EE=0A.=0A.SS H.12.4.2p1 [The strtoencdecdN and strtoen=
cbindN functions]=0A.=0A.EX=0A\-void strtoencdecdN(unsigned char encptr[res=
trict static N/8], const char * restrict nptr, char ** restrict endptr);=0A=
+void strtoencdecdN(unsigned char encptr[restrict static N/8], const char *=
nptr, char **restrict endptr);=0A.P=0A\-void strtoencbindN(unsigned char en=
cptr[restrict static N/8], const char * restrict nptr, char ** restrict end=
ptr);=0A+void strtoencbindN(unsigned char encptr[restrict static N/8], cons=
t char *nptr, char **restrict endptr);=0A.EE=0A.=0A
--rohmhlozz6q46nwg
Content-Type: application/pdf
Content-Disposition: attachment; filename="strtol.pdf"
Content-Transfer-Encoding: base64

JVBERi0xLjcKJeLjz9MKMyAwIG9iaiA8PCAvQW5ub3RzIFs3IDAgUiAgOCAwIFIgIDkgMCBS
ICAxMCAwIFIgIDExIDAgUiAgMTIgMCBSICAxMyAwIFIgIDE0IDAgUiAgMTUgMCBSICAxNiAw
IFIgIDE3IDAgUiAgMTggMCBSICAxOSAwIFIgIF0KL0NvbnRlbnRzIFs0IDAgUiAgXQovR3Jv
dXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+PgovUGFyZW50IDIgMCBS
Ci9UeXBlIC9QYWdlCj4+CmVuZG9iago0IDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2Rl
Ci9MZW5ndGggMjI1NAo+PgpzdHJlYW0KeJyVWm1v27oV/p5fcT4tThCpot7Vi10gzbquwXbR
e+eiA5bhgrFpR60suZLcxBsGdP98hyJpUzQlqy2SmNSjcw7P+2HyFQh4+F98X2wuCNzj1+cL
zw3h+eIrvJlfHBCu53mQZH73c765wG+Li8R3E48D5ssDUu4lYdaDerC+eDuHX/HDu27RIz/w
0qs/BykQ/Li6EALMn+GfMPvlBf9d/Qvm94iILAB4mH16R8KHKwWykXGCME7F+ocpOp714J2O
SNo/eLeagkQxY2TtZpHiTiT3v+/LatvkDQjuYeBGJO7TJCTqNk2ijp+egtNECODF50QdQEpR
DS3BbH4Fkv8sbwsm5fV9N/ANwsTLuk2TskMs4ExIEWfhOXnHkW4Q8e8xfq7Xw24hDtC0dVsV
I07hREQgH2aBcowgcOPAPCpuksAiFEaB7mOsBVq40DxVu2J5edRkC0/0Cnzpqt/wQSQ+MqBQ
M5QzX7RsCd/rpoUtremGtay+gkjCXOmzYdyJYbNvnCSuP8kTTOSQJ9wifynxrn2qajjohxBT
P3g0vmmSdnwLWBk4js4JPI40XcEW9LcF+0zLZV3BXVVUG1rDLa5YI45CvNRNE4Op70Xd5glX
w9Y/wYbmZYtfrIZqBe2TCpYErWQexU+Jm9mo2s6is/lrXu5ekFXpbOmaNbCtq89s0QpOWeZm
qcEp4Jyi8/Irn/LRpzne6iph6obTnMpA2p1q9qE+BkW1rRpawIK2bF3Ve6W8zPVNaUgcd5sm
Eye2gJXTBLEhkM0/3uzW8P1FqYKMnI9knXUmaMJADmjibiEPTEKXxCeplXSbJi3HglXn9ZJz
Ao4jp4TTu18+wh0U+WNN670QP0IXzEzxo7jbNDk5NrCUKsqiifLbkZqA1WabFxiUGPIFhkpe
lSrc49Ns5HsiRZlUHStaiZAGU4W1ImWG/XAsBHRXwNv1mtUysjHTJydqxa6Bb5o0HRtY8U/I
VEmtSKHWf+Tw2666Ahkgsz2ttD7mREyv2zQJOjawYh6dDa9RpBDznn7ZPcI9KzAnf5HuaYuu
SESXScqxgRXbcGp42ZFCwL/Rus1L+MgWX47KxEIvRMXkdhpJUbdpEnVsYCVAMDmSrEhZd95/
hL8oMyMuPWn/Ar/bNIk4NrBi6E+OGytSmrkqaftES/h0Bar9p7pCC5mb4tRWS6Ju02Tg2MBK
GDI5iKxIIfZv+eKJ1kt4S+uy4f2giv1nWfkCNwxNaROv2zTpOjawlCHMpsaSHSkHFrqBe+xD
ZasUhm5y4gEh6TZNMrwsn4DlxBSm6DXjwg0hYT0yX/2JNYs63/JkL+sq1qA0iQyJ/bTbNGk7
eJITsKznIZrgjMQDyKHGWuuBZOt/bK1DW2vNN03ivLU+ASu7YnboC2Ir5vMnNjZczwDlDJKe
nKejFM7fCv51R4v8Ox9bHF8NDnmjr3YNW/aelvrqMPf03nnc66vbD+97T9uqT29V1Zveczyj
tlxQ7Aj69DGRyGONxEnYvzT5UaRQ0P9kFxKdvk2IP5XRMDROw6NlATV1Yl0cdmOFwZFib5qT
D8OH54tqqxV8VFlARPc9W9XVRl9XJestV/pKWOD48JFPL00PUekrWlb4Sm3Qv+mte0+3rJZW
PwJOKCCI8tzQZ8xNL9aByMOH8/L5XX+0oOi7g25ysEngGTZJw0Tqs8k3eYHzJ85vjwXbNC7o
Xjg/VrIK+lcF6mOVL+FbXhXiHHzixGMDO5aRF7rZFgzuCHn9OnYjbGVcsg1uQDn9qTf4fnrw
hl3T6SIIu8wxQyucekd0xG9p0+j4g8rVRs1WfENJ75xXnvXWTd6rlAscfduqG7IbzBIg/Ogw
uFliSkUkjlLTrhnsyOmxe57RMDTwkjOxy+M7GYldfO4fnldYCDf5v7vcl4qLztkjldlXbVSl
vpKZMhUT4AzNu9t05VTflRFzWD/XOfaz6x6k0lfNbvHUI6svtIsujWReFPqaO6JOAJOLLx1+
xe9B9GflMRj2+oMuI2mHOB/JQZoN+kLn6tIBG8hbqNmC5Uex9Ou9pQswf8oR1gBdtFghiz18
xlgDmedASzp0z11cj+htzZqmc3r8pHHIq10D2yovp0RAgA2VcYkTR5q3Ldn3Mu8aJ3GLZWsK
Di9MagqSMLI2BZiVvGNToFalvkJv2PQeC9upFV1gImiYyJ4k9WVX0HujqIRHHt7pPaU9dsKK
VuGE55TFXl9L/kt971tO+68wfVmz4dSnDBR7hoFIHKuyoa6GO2tzPYbSW25AOJB2fSwx6Go1
A3S16ugyz/gYnatD2BJpV43CzM26aiQ9tuDeJzvUbuB6jz/y8svZA1mvDcWBMF7E9Tg8sht4
PFaIHeeRdxec4mJwWbGm7F2i07ZlmJS4/DhKlWvGpWqPDuyeFSwYHs9useMpG/Z1x4uNutA9
xkbeCGZ8d1X1dYspkIu9xnTGcYuqxpTQvpZNfWxJM9jpd/KQ0GjUbVeF3GSrhxkXr+UHr+Fa
GR2L+425RR+ufhpOcIqzd3YOU1A/sw1AB9HOsvKTdPB9foX+MPuGvY369csYoTgeJPSfEWXH
4leSftRXdqy93qnwBWMAvUMY9Y/6IhhRqKIe+uPUr1+2g/T/8CIZOGPe4gd9Q4welgwrHX3p
ZXsDL9uDo4yz9YbV/t+zRiNZONXRiPVuYLqjEeukfjjzD8TPeVbRsHonuCIJh1X66lpeXlle
T0TGIYFNp+L1a/jELjH9Y3vRlQCZ+HF8gcufLwEz2aFK4PYyb7CBw0M/zGhd0/3Y0RVzf9hK
16otwsyO+bzJeSp9xjRalZcoTlc8uwx6gOFiD5t8/TRiXsWYDJv3eqSywfsSVth8SWa/81Hn
9x7+LOts2NrXklnJODHKUxl8fANYmdlwOVJ002E3uH4lQ3PEjZJhN6hZu6tLdG/4GaiKclkF
e7TkbVtg/nWA7cbogyrNfPK883lnREJf/bbd9/zQ8RLHi3gv4UWxbBOJnJ0kwyhUv3DSGXZ/
WPLrxf8Bc8LU4GVuZHN0cmVhbQplbmRvYmoKMjAgMCBvYmogPDwgL0Fubm90cyBbMjIgMCBS
ICAyMyAwIFIgIDI0IDAgUiAgXQovQ29udGVudHMgWzIxIDAgUiAgXQovR3JvdXAgPDwgL0NT
IC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+PgovUGFyZW50IDIgMCBSCi9UeXBlIC9Q
YWdlCj4+CmVuZG9iagoyMSAwIG9iaiA8PCAvRmlsdGVyIC9GbGF0ZURlY29kZQovTGVuZ3Ro
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
OYvL5iFpWdLnMqO+XbKDvrRT0Scz/Q9OeVEMZm4FrebcmygbiLphPj+P2Z5ObQZotWj2nFkE
POivRVStn94QNV8Q1BROuCY+9ncF1bFct+yVU7KBLWclEjYZhmp3xfWw6/gjctJW10kXiDrf
vZ/tA79w+0/eF8t9fOouMbjzN6Dp7BX7Ab6RhrVFN3KnWmJPt4KDomXOJz9zdmA1KVQsHjx5
lLB1aCup53iB5cSWE0owOGGkUe/pLKQXNHxZjQt+/wi/rH5Z/R+gHUCxZW5kc3RyZWFtCmVu
ZG9iagoyNSAwIG9iaiA8PCAvQW5ub3RzIFsyNyAwIFIgIF0KL0NvbnRlbnRzIFsyNiAwIFIg
IF0KL0dyb3VwIDw8IC9DUyAvRGV2aWNlUkdCCi9TIC9UcmFuc3BhcmVuY3kKPj4KL1BhcmVu
dCAyIDAgUgovVHlwZSAvUGFnZQo+PgplbmRvYmoKMjYgMCBvYmogPDwgL0ZpbHRlciAvRmxh
dGVEZWNvZGUKL0xlbmd0aCAxNDM0Cj4+CnN0cmVhbQp4nL1ZTZObRhC9609snxxpd8HMDAxQ
qVziJK7yYcuuqCoHy+ViEZJIIZD5yO76lJ+e5kuCYQax0a7tkoxGrenXb97rGfA3IGDg3/rd
388IfMDX3zNDN+FhZsD72Tf4dTlroyzT0A0Dr6v35R4jtvha+jPN5LbOyq9guT7G21S3ccw2
3dMPMPjtH8wBgpebWTPTA3yG+d0j/ll8geUHjLAkAbCa//WemKtFGySbRmMmd+rPz56RG8Ma
CGPVD2ziCEVwyYQx/AJZnuZJtJofbuENvozV4ud6+oY86ewG783enXM/NqfG+HBW167GuOPq
tAe5ywGvp4f5cgEtYQkc0mAB1Ko//rMA0lwGcQ55Gm63QRrGW1iH3jZOsjz0Mwhj8GC3gCby
6ZDkuwC/8SLwk/0hjIIU8p2XwwNO1yYqojXcB5DtvTSHIE6K7Q7ypJ03wB8EEJzSP3p7TUli
W65t98rtcniIAtgUsZ+HSQzb1Xy1uK1SHNIkT/KnQwDJBuoE5ZJYrpCCMqMalOdA2VjlO8fr
dKsWZl1LvZYjstQsUkeu5qyVJoLiTATFuW5TCajSlZ3is11Lt7/z4m2wRqYb9ZTFllNIRcnR
D+ZZyUcJ6iGM87Ma56bTm64HsdG3n8RZXsJM4To+5Oltc32dBhgS+qVW1tU4ZoR7LwumOYGR
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
fR4o+PWGOwsnayaXI94IOAalL5Y31u78T2+4nqYMqvEamFSSnUAoNYIo9lvQvJ1ERNepWhs2
ke1TKBaYK6Yx4xxp+mZiMd81i9Wcbq+CcXP9TNZccr2dbCxoKtt2xteLV2fUjBKHNTJqNdNg
1N8dTBzyiKH3U2LJxYgM/mYDIS8r98VEZlBlFoKCPKhOY2Osya6EJUhh0rrvzflIEnSKbW/Y
2dz11JqX+59a8CZlRr5Gy7LMtQx1O2+DianPjBNXi59XM88PtXzq6Vppc/kmil0FYGblj26+
xWHyMBiV2kcHqz+lvEaAeopdBcBm7VcCzKu5D9cDCDWQwMTRSIQ6NyM+dXgjN1Mz69yMOXjh
Z937uOCO03DYgeE0DUUi6Ze2xoshN21Nfqnkmvls7GqySxWJhxU4ra39yZJojajfWm4luYQy
KHXrLXWcCOnCIXRO/Gsp8kHKT9xAo39Z/n3h7t4ljDh+sy5RMuu7hKhdEsVh1IFBulr2bZJG
mtYhnDiuykDltwZXAyF/j2iyqwpQpBBvb50c8z10D/Y1ddF1z27EO3otDpgRc1PYvNrvQFjs
6xpeJ+xuxM0+mcR9CeoVp3N08yRKfxr6Y5w9ZpPBCIbZGL6S5zbYmJHyuKhFEGE28mzkyjhB
Li8kaLmlSYPxjFhOeNaFK+vK+gdTZDbEZW5kc3RyZWFtCmVuZG9iago1OSAwIG9iaiA8PCAv
Q3JlYXRpb25EYXRlIChEOjIwMjQwNzA1MjEyODE2KzAyJzAwJykKL0NyZWF0b3IgKGdyb2Zm
IHZlcnNpb24gMS4yMy4wLjEzMzgtZGFjYykKL01vZERhdGUgKEQ6MjAyNDA3MDUyMTI4MTYr
MDInMDAnKQovUHJvZHVjZXIgKGdyb3BkZiB2ZXJzaW9uIDEuMjMuMC4xMzM4LWRhY2MpCj4+
CmVuZG9iagoxIDAgb2JqIDw8IC9EZXN0cyA1IDAgUiAKL091dGxpbmVzIDMyIDAgUiAKL1Bh
Z2VNb2RlIC9Vc2VPdXRsaW5lcwovUGFnZXMgMiAwIFIgCi9UeXBlIC9DYXRhbG9nCj4+CmVu
ZG9iagoyIDAgb2JqIDw8IC9Db3VudCA1Ci9LaWRzIFszIDAgUiAgMjAgMCBSICAyNSAwIFIg
IDI4IDAgUiAgMzAgMCBSICBdCi9NZWRpYUJveCBbMCAwIDYxMiA3OTIgXQovUmVzb3VyY2Vz
IDw8IC9Gb250IDw8IC9GMzYgNjAgMCBSIAovRjM4IDYzIDAgUiAKL0Y1IDY2IDAgUiAKL0Y2
IDY5IDAgUiAKL0Y4IDcyIDAgUiAKPj4KL1Byb2NTZXQgWy9QREYgL1RleHQgL0ltYWdlQiAv
SW1hZ2VDIC9JbWFnZUkgXQo+PgovUm90YXRlIDAKL1R5cGUgL1BhZ2VzCj4+CmVuZG9iago2
IDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9MZW5ndGggMjIxCj4+CnN0cmVhbQp4
nF2Qz2rDMAzG734KHbtDcZNzCIyWQg77w9I9gGPLwdDIRnEOefspXpvBBLb5+PQTn6XP3aWj
kEF/crQ9ZvCBHOMcF7YIA46BVFWDCzY/VLntZJLSAvfrnHHqyEfVNKC/xJwzr3B4dXHAF6U/
2CEHGuHwfe5F90tKd5yQMpxU24JDL4PeTHo3E4Iu2LFz4oe8HoX567itCaEuuvoNY6PDORmL
bGhE1ZykWmiuUq1Ccv/8BzX4vb3y0r4/tSvU098GbP/c09mFWYKVZZREW5ZAuO8rxbRR5fwA
V7tx+mVuZHN0cmVhbQplbmRvYmoKNzUgMCBvYmogPDwgL0ZpbHRlciAvRmxhdGVEZWNvZGUK
L0ZpcnN0IDQ3NAovTGVuZ3RoIDMyNjMKL04gNjAKL1R5cGUgL09ialN0bQo+PgpzdHJlYW0K
eJzFWmtv28YS/e5fsUC/pEDD5S73QQZF4dhNmhSpG+RxU8ApLmhqLTGmSIWkYju//p7lQ1rS
ejiygRtZ5C6HnJmdx9kZMZL4RJOQhSQkkRIkIowxSZhPGA8VJoQJEWJCmPJxMSBMS9AFYZG9
SRLuK1xUhHMcmCY8UGASEi65xk2EqxATTngYYBIQHoEvFyRgASaaBFxHOJBAcEVwKRCa4UAC
GeKiJIEKQQfJyg1wf2gnIQkibg/4ixgRPhFWb4EhCwURHH8aFwP8YVnC/uFhgVukxkThL8QE
l0KsA0sUkWUSEelLn9g/LBAHIgMoLTmRAspIDKUOMSFS+xoTIq3xpCIyai4S5UswCYlimmNC
FI9wZkRpLE5xov0Qk4Boa1eopkPwV5KEPpRRioQBjKXgE411KHiFYZEwaSRhfCwpsuuFiRju
1wQymB9BLQ0nMB4p8MVAcP7rr4Se3eDfT9z/iYef/mDiJx6R8wAef0foy7R+RTTk/XtEF5PL
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
tO3fS3o2AGkRrUA6GIO0iJrkC/1RMbkC1kfB5/HPRrr/rXFnHand16odSPv3qyPHsDeGwF30
Qz+beW6D1s1PbYLnvT/pyDug1WGF00Uxn62Tv8v5rmdiTNlM7zqmH05Y4SbsFAnahfenppYx
yDfbPfWd0g8HJmMbA/PAnxP+By7ujEhlbmRzdHJlYW0KZW5kb2JqCjc2IDAgb2JqIDw8IC9G
aWx0ZXIgL0ZsYXRlRGVjb2RlCi9JbmZvIDU5IDAgUiAKL0xlbmd0aCAxOTEKL1Jvb3QgMSAw
IFIKL1NpemUgNzcKL1R5cGUgL1hSZWYKL1cgWzEgNCAxIF0KPj4Kc3RyZWFtCnicJdA3DsJA
EIXhxWRjcjTBgG1yzukINDQchZKCa9BRcBckDsMV2P13i0+jedLTaIVQLyCEZ+FNKdL4E4b0
rGb/rucAGhjEEIYxglGMYRxNTKCFSdlphlWz+dTNKUxjRu5zX5XmLzrNytleqY39Vjpc6Dx0
msM8FrCIJSxjBW2sYg3r2EAHm9jCNrrooY8d7GIP+zjAIY5wLO90r/rOCU5xhnNc4BJXuMYN
bnGHezzgEU+yv/NSv7H8iD832SFtZW5kc3RyZWFtCmVuZG9iagp0cmFpbGVyCjw8Ci9Sb290
IDEgMCBSCi9TaXplIDc3Cj4+CnN0YXJ0eHJlZgoxMzAwMAolJUVPRgo=

--rohmhlozz6q46nwg--

--25gxbdz3r6brjxsl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaISWMACgkQnowa+77/
2zIDJw//XvgbMRkn8mJFkB7TH7Yg7wrQd0GhfQaf1PV4GcKu5dKolqsib0n3ovo2
Nywex+IJGCJBX5FH7xF9eMjFvyWfklwK7Cq5s92jbpHqFlQjlNLbNLdl5K+NMRv8
9S5Oi9LUb77popPCIuTpeYmZ3WOnhPky8/evSApaJSBGNxdBm2GIecm2ukKAXEUi
JnRZ5VtEdikNG6u7zpF85RJhzcjsNYWxTJo0umNpn3kE6diQjpVmINSmnQ2ExafW
TbMlIyddXOcnz/jFl8tSrzrYA5rWGKGrtRC/HN4cKXou1RN1SEef3D8W8P60ZmqD
dvRntoNc6DcOy16OcVxqqkyp2KYn+4HmfzMLU+DJoZTpnwN6m9TzZ5dYTK+jAEcn
6SACkWzWNVtZsrfKvv1oqRbdPTZE+lQR9rwEt0XQvYMWZsMY9Q4Wq8XwUvH5jZRY
trC7LipNYcgx6HkPTqXZyP/85UyfEo9yXBl0wLh+KmTfRot6rASZX2xWhbxAd72q
yEQXKS5YqSRZcBQ1G5O3+rsmKVgPBxWb9gufurcqq4D1b4MhAp43g9zJXBwI2h+0
5ppK0K0ct+6DxNDF/UMShg1tei056LM45stYHFQI57Bp4/HmdLZWTh5Tq6n/MgZW
GvabyJ5+puB2EuXK0FE7OCe8GNhNxd8Cg/xe0/8l4mshRcmQ0jg=
=4KKZ
-----END PGP SIGNATURE-----

--25gxbdz3r6brjxsl--

