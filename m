Return-Path: <linux-man+bounces-1336-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B03928DE3
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 21:41:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48F971C20D36
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 19:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5458E176228;
	Fri,  5 Jul 2024 19:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPkWgjCX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A5A176220
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 19:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720208512; cv=none; b=OupyFTg8Pwm1qxDd3Teud1MfIVGSUYQNNmXRYEhhNa3HYDo8ZbhYhCgHd9IqavzSquamcWVqWWfHu7iR10dAeJkNAeliHDWMEr+GtMeTELrd87N5INAxSSFXL2qzY8laT6TqIaZuOBlHciLZy5edNvYNV+q1sdMufAd0nRgo4CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720208512; c=relaxed/simple;
	bh=YsUgMpivR/qUw7lwyH9YXSKmuMtzGtgBDffLuGCHqxg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=IkL8hNXqCTNRHfrvuuPx+irObjamSNJFtY+MtAIqjx1gChP8FHweOFXZuCRDKuHCqz6bXK5QcfhCFKy+JVLHhASC6aAO8AWjcKSMaI/NQYCxVYRcf8JBpY1kfbXefdajI0XmrRPoNj3Z1H59rvVUVlm1pqo6PkxvVoCrk5BMzkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPkWgjCX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80698C32786;
	Fri,  5 Jul 2024 19:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720208511;
	bh=YsUgMpivR/qUw7lwyH9YXSKmuMtzGtgBDffLuGCHqxg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=iPkWgjCXOM41npnDZcCgf8dp90+D+HFVqQnAfaSXMxl+7f/adsWYZAwEBDMEjwJIx
	 /OUJPWmN+dRxOAlOxEqzNJVZgVv8Dl03vicM/6nP47MaMdjBUIjol81LumUaIe0fba
	 P6fKPf4KhjOIwo6UqZV713sNWgL4lq2Iqf87iMdAQDr9LRhjgKdU8VHpBF2ChKhlez
	 12St7Q8ZVflPXKHf3IWtRbfJ1aePaGA6GzFc+h1uklQkShmeB0wCK9mL4EE6li4dTg
	 FvbpI3CfVYZ+z7x5KxVzuxITqcLfVILhiQKl4SxBIc2Ooyere3rP2G8SaR54F1SB5p
	 3dlKVALUfQ2Hg==
Date: Fri, 5 Jul 2024 21:41:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dplakosh@cert.org
Cc: Martin Uecker <muecker@gwdg.de>, 
	Jonathan Wakely <jwakely.gcc@gmail.com>, Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: [WG14] Request for document number; strtol restrictness
Message-ID: <as2a3sc6di56zlbroi35lmpodwyyshyueqao2qa2c7cxoz5pes@brotew6b3534>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6qqtjt7cqttz5bnv"
Content-Disposition: inline
In-Reply-To: <20240705130249.14116-2-alx@kernel.org>


--6qqtjt7cqttz5bnv
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="gjm7cxdj6mg3xxyi"
Content-Disposition: inline
From: Alejandro Colomar <alx@kernel.org>
To: dplakosh@cert.org
Cc: Martin Uecker <muecker@gwdg.de>, 
	Jonathan Wakely <jwakely.gcc@gmail.com>, Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Subject: [WG14] Request for document number; strtol restrictness
MIME-Version: 1.0
In-Reply-To: <20240705130249.14116-2-alx@kernel.org>


--gjm7cxdj6mg3xxyi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I have a paper for removing restrict from the first parameter of
strtol(3) et al.  The title is

	strtol(3) et al. should=E2=80=99t have a restricted first parameter.

If it helps, I already have a draft of the paper, which I attach (both
the PDF, and the man(7) source).

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--gjm7cxdj6mg3xxyi
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
br=0A.MT linux-man@vger.kernel.org=0ALinux man-pages=0A.ME=0A.br=0A.MT egge=
rt@cs.ucla.edu=0APaul Eggert=0A.ME=0A.br=0A.MT xry111@xry111.site=0AXi Ruoy=
ao=0A.ME=0A.br=0A.MT jakub@redhat.com=0AJakub Jelinek=0A.ME=0A.br=0A.MT uec=
ker@tugraz.at=0AMartin Uecker=0A.ME=0A.br=0A.MT lh_mouse@126.com=0ALIU Hao=
=0A.ME=0A.br=0A.MT jwakely.gcc@gmail.com=0AJonathan Wakely=0A.ME=0A.br=0A.M=
T Richard.Earnshaw@arm.com=0ARichard Earnshaw=0A.ME=0A.br=0A.MT sam@gentoo.=
org=0ASam James=0A.ME=0A.=0A.=0A.SH Description=0A.=0A.SS restrict=0A.=0ATh=
e=0A.I restrict=0Aqualifier is used in parameters by APIs to inform the cal=
lers that=0A.IP \[bu] 3=0AThe API=0A.I may=0Acopy from one of the objects t=
o another one,=0Aor perform other operations that would cause similar probl=
ems.=0ATo avoid violations of for example C11::6.5.16.1p3,=0Acallers=0A.I m=
ust not=0Apass other references to the same object.=0A.IP \[bu]=0AThe API=
=0A.I may=0Aoptimize=0Abased on the assumption that=0Awriting to such a par=
ameter=0Awill not affect any of the other objects it received.=0AThis is ac=
tually just another way to express the previous point.=0A.P=0AThe definitio=
n of the=0A.I restrict=0Aqualifier is in terms of accesses.=0AAs long as an=
 object is only accessed via one restricted pointer,=0Aother restricted poi=
nters are allowed to point to the same object.=0AThis is less strict than I=
 think it should be,=0Abut this proposal doesn't attempt to change that def=
inition.=0A.P=0AA consequence of the definition is that the following progr=
am is correct:=0A.IP=0A.EX=0Aint f(const char *restrict ca, char *restrict =
a);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=0A	char  *xp =3D &x;=0A\&=
=0A	f(xp, xp);=0A}=0A\&=0Aint=0Af(const char *restrict ca, char *restrict a=
)=0A{=0A	/*=0A	 * We're not allowed to use '>' on pointers to distinct (arr=
ay)=0A	 * objects, but since we don't access the objects, they might=0A	 * =
point to the same object.  In fact, they _must_ point to the=0A	 * same one=
 to avoid UB here.=0A	 */=0A	return ca > a;=0A}=0A.EE=0A.=0A.SS Diagnostics=
=0A.=0AWhile the above program is correct,=0Ait's a bad use of the qualifie=
r:=0Aone can only guarantee that it's correct=0Aby inspecting the source co=
de of both the caller and the callee.=0ACompilers are far more conservative=
=0Ain what is considered a good use of the=0A.I restrict=0Aqualifier.=0A.P=
=0ACompilers emit diagnostics so that=0Ait is only necessary to inspect the=
 source code of=0Aeither the caller or the callee to=0Adetect what is likel=
y a violation.=0AIdeally, the definition of=0A.I restrict=0Acould be tighte=
ned to match those diagnostics.=0A.P=0AGCC emits diagnostics for the exampl=
e program shown above:=0A.IP=0A.EX=0A.RB $ " gcc -Wall -Wextra f.c" ;=0Af.c=
: In function =E2=80=98main=E2=80=99:=0Af.c:9:7: warning: passing argument =
2 to =E2=80=98restrict=E2=80=99-qualified parameter aliases with argument 1=
 [-Wrestrict]=0A    9 |       f(xp, xp);=0A      |       \[ha]=0A.EE=0A.=0A=
=2ESS Pointer-to-pointer=0A.=0AHere's another example program that is techn=
ically correct.=0AThe parameters in this example more closely resemble=0A.M=
R strtol 3 ,=0Aby using a pointer-to-pointer as the second parameter.=0AOth=
er than that,=0Ait's conceptually the same as the=0A.I f.c=0Aprogram shown =
above.=0A.IP=0A.EX=0Aint g(const char *restrict ca, char *restrict *restric=
t ap);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=0A	char  *xp =3D &x;=
=0A\&=0A	g(xp, &xp);=0A}=0A\&=0Aint=0Ag(const char *restrict ca, char *rest=
rict *restrict ap)=0A{=0A	return ca > *ap;=0A}=0A.EE=0A.P=0AIn this case,=
=0Acompilers are not smart enough to detect that=0Aboth parameters alias ea=
ch other.=0AHowever,=0Aone could conceive a better compiler that would emit=
 a diagnostic=0Asimilar to the one in=0A.IR f.c .=0A.=0A.SS strtol(3)=0A.=
=0AThe standard prototype for=0A.MR strtol 3=0Ais=0A.IP=0A.EX=0Along int=0A=
strtol(const char *restrict nptr, char **restrict endptr, int base);=0A.EE=
=0A.P=0A.MR strtol 3=0Aaccepts three pointers:=0A.IP \[bu] 3=0A.PD 0=0A.I n=
ptr=0A.IP \[bu]=0A.I *endptr=0A.IP \[bu]=0A.I endptr=0A.PD=0A.P=0A.I endptr=
=0Acannot alias any other pointer;=0Ait must use=0A.IR restrict .=0AHowever=
,=0Athe other two will often alias each other.=0AConsider for example the c=
ase where two numbers are read from a string:=0A.IP=0A.EX=0Achar  str[] =3D=
 "1 2";=0A\&=0Ap =3D str;=0An =3D strtol(p, &p, 0);=0Am =3D strtol(p, &p, 0=
);=0A.EE=0A.P=0ATo prevent triggering diagnostics in a hypothetical compile=
r=0Athat would be smart enough to diagnose the example function g(),=0Athe =
prototype of=0A.MR strtol 3=0Ashould be changed to=0A.IP=0A.EX=0Along int=
=0Astrtol(const char *nptr, char **restrict endptr, int base);=0A.EE=0A.P=
=0AThis prototype would still allow diagnosing bogus calls such as=0A.I \%s=
trtol((char*)&p,\~&p,\~0);=0Aor=0A.I \%strtol(p,\~(char**)p,\~0);=0Aand has=
 no downsides.=0A.P=0ASince the function does not access=0A.IR *endptr ,=0A=
this qualifier shouldn't cause any performance pessimizations.=0A.=0A.=0A.S=
H Proposal (diff based on C23/N3047)=0A.=0A.SS 7.8.2.3p1 [The strtoimax and=
 strtoumax functions]=0A.=0A.EX=0A\-intmax_t strtoimax(const char * restric=
t nptr, char ** restrict endptr, int base);=0A+intmax_t strtoimax(const cha=
r *nptr, char **restrict endptr, int base);=0A.P=0A\-uintmax_t strtoumax(co=
nst char * restrict nptr, char ** restrict endptr, int base);=0A+uintmax_t =
strtoumax(const char *nptr, char **restrict endptr, int base);=0A.EE=0A.=0A=
=2ESS 7.8.2.4p1 [The wcstoimax and wcstoumax functions]=0A.=0A.EX=0A\-intma=
x_t wcstoimax(const wchar_t *restrict nptr, wchar_t **restrict endptr, int =
base);=0A+intmax_t wcstoimax(const wchar_t *nptr, wchar_t **restrict endptr=
, int base);=0A.P=0A\-uintmax_t wcstoumax(const wchar_t *restrict nptr, wch=
ar_t **restrict endptr, int base);=0A+uintmax_t wcstoumax(const wchar_t *np=
tr, wchar_t **restrict endptr, int base);=0A.EE=0A.=0A.SS 7.24.1.5p1 [The s=
trtod, strtof, and strtold functions]=0A.=0A.EX=0A\-double strtod(const cha=
r *restrict nptr, char **restrict endptr);=0A+double strtod(const char *npt=
r, char **restrict endptr);=0A.P=0A\-float strtof(const char *restrict nptr=
, char **restrict endptr);=0A+float strtof(const char *nptr, char **restric=
t endptr);=0A.P=0A\-long double strtold(const char *restrict nptr, char **r=
estrict endptr);=0A+long double strtold(const char *nptr, char **restrict e=
ndptr);=0A.EE=0A.=0A.SS 7.24.1.6p1 [The strtodN functions]=0A.=0A.EX=0A\-_D=
ecimal32 strtod32(const char * restrict nptr, char ** restrict endptr);=0A+=
_Decimal32 strtod32(const char *nptr, char **restrict endptr);=0A.P=0A\-_De=
cimal64 strtod64(const char * restrict nptr,char ** restrict endptr);=0A+_D=
ecimal64 strtod64(const char *nptr, char **restrict endptr);=0A.P=0A\-_Deci=
mal128 strtod128(const char * restrict nptr,char ** restrict endptr);=0A+_D=
ecimal128 strtod128(const char *nptr, char **restrict endptr);=0A.EE=0A.=0A=
=2ESS 7.24.1.7p1 [The strtol, strtoll, strtoul, and strtoull functions]=0A.=
=0A.EX=0A\-long int strtol(const char *restrict nptr, char **restrict endpt=
r, int base);=0A+long int strtol(const char *nptr, char **restrict endptr, =
int base);=0A.P=0A\-long long int strtoll(const char *restrict nptr, char *=
*restrict endptr, int base);=0A+long long int strtoll(const char *nptr, cha=
r **restrict endptr, int base);=0A.P=0A\-unsigned long int strtoul(const ch=
ar *restrict nptr, char **restrict endptr, int base);=0A+unsigned long int =
strtoul(const char *nptr, char **restrict endptr, int base);=0A.P=0A\-unsig=
ned long long int strtoull(const char *restrict nptr, char **restrict endpt=
r, int base);=0A+unsigned long long int strtoull(const char *nptr, char **r=
estrict endptr, int base);=0A.EE=0A.=0A.SS 7.31.4.1.2p1 [The wcstod, wcstof=
, and wcstold functions]=0A.=0A.EX=0A\-double wcstod(const wchar_t * restri=
ct nptr, wchar_t ** restrict endptr);=0A+double wcstod(const wchar_t *nptr,=
 wchar_t **restrict endptr);=0A.P=0A\-float wcstof(const wchar_t * restrict=
 nptr, wchar_t ** restrict endptr);=0A+float wcstof(const wchar_t *nptr, wc=
har_t **restrict endptr);=0A.P=0A\-long double wcstold(const wchar_t * rest=
rict nptr, wchar_t ** restrict endptr);=0A+long double wcstold(const wchar_=
t *nptr, wchar_t **restrict endptr);=0A.EE=0A.=0A.SS 7.31.4.1.3p1 [The wcst=
odN functions]=0A.=0A.EX=0A\-_Decimal32 wcstod32(const wchar_t * restrict n=
ptr, char ** restrict endptr);=0A+_Decimal32 wcstod32(const wchar_t *nptr, =
char **restrict endptr);=0A.P=0A\-_Decimal64 wcstod64(const wchar_t * restr=
ict nptr,char ** restrict endptr);=0A+_Decimal64 wcstod64(const wchar_t *np=
tr, char **restrict endptr);=0A.P=0A\-_Decimal128 wcstod128(const wchar_t *=
 restrict nptr,char ** restrict endptr);=0A+_Decimal128 wcstod128(const wch=
ar_t *nptr, char **restrict endptr);=0A.EE=0A.=0A.SS 7.31.4.1.4p1 [The wcst=
ol, wcstoll, wcstoul, and wcstoull functions]=0A.=0A.EX=0A\-long int wcstol=
(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);=0A+l=
ong int wcstol(const wchar_t *nptr, wchar_t **restrict endptr, int base);=
=0A.P=0A\-long long int wcstoll(const wchar_t * restrict nptr, wchar_t ** r=
estrict endptr, int base);=0A+long long int wcstoll(const wchar_t *nptr, wc=
har_t **restrict endptr, int base);=0A.P=0A\-unsigned long int wcstoul(cons=
t wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);=0A+unsign=
ed long int wcstoul(const wchar_t *nptr, wchar_t **restrict endptr, int bas=
e);=0A.P=0A\-unsigned long long int wcstoull(const wchar_t * restrict nptr,=
 wchar_t ** restrict endptr, int base);=0A+unsigned long long int wcstoull(=
const wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.EE=0A.=0A.SS =
B.7 [Format conversion of integer types <inttypes.h>]=0A.=0A.EX=0A\-intmax_=
t strtoimax(const char * restrict nptr, char ** restrict endptr, int base);=
=0A+intmax_t strtoimax(const char *nptr, char **restrict endptr, int base);=
=0A.P=0A\-uintmax_t strtoumax(const char * restrict nptr, char ** restrict =
endptr, int base);=0A+uintmax_t strtoumax(const char *nptr, char **restrict=
 endptr, int base);=0A.P=0A\-intmax_t wcstoimax(const wchar_t *restrict npt=
r, wchar_t **restrict endptr, int base);=0A+intmax_t wcstoimax(const wchar_=
t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-uintmax_t wcstoumax=
(const wchar_t *restrict nptr, wchar_t **restrict endptr, int base);=0A+uin=
tmax_t wcstoumax(const wchar_t *nptr, wchar_t **restrict endptr, int base);=
=0A.EE=0A.=0A.SS B.22 [General utilities <stdlib.h>]=0A.=0A.EX=0A\-double s=
trtod(const char *restrict nptr, char **restrict endptr);=0A+double strtod(=
const char *nptr, char **restrict endptr);=0A.P=0A\-float strtof(const char=
 *restrict nptr, char **restrict endptr);=0A+float strtof(const char *nptr,=
 char **restrict endptr);=0A.P=0A\-long double strtold(const char *restrict=
 nptr, char **restrict endptr);=0A+long double strtold(const char *nptr, ch=
ar **restrict endptr);=0A.P=0A\-long int strtol(const char *restrict nptr, =
char **restrict endptr, int base);=0A+long int strtol(const char *nptr, cha=
r **restrict endptr, int base);=0A.P=0A\-long long int strtoll(const char *=
restrict nptr, char **restrict endptr, int base);=0A+long long int strtoll(=
const char *nptr, char **restrict endptr, int base);=0A.P=0A\-unsigned long=
 int strtoul(const char *restrict nptr, char **restrict endptr, int base);=
=0A+unsigned long int strtoul(const char *nptr, char **restrict endptr, int=
 base);=0A.P=0A\-unsigned long long int strtoull(const char *restrict nptr,=
 char **restrict endptr, int base);=0A+unsigned long long int strtoull(cons=
t char *nptr, char **restrict endptr, int base);=0A.EE=0A.=0A.SS B.30 [Exte=
nded multibyte/wide character utilities <wchar.h>]=0A.=0A.EX=0A\-long int w=
cstol(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);=
=0A+long int wcstol(const wchar_t *nptr, wchar_t **restrict endptr, int bas=
e);=0A.P=0A\-long long int wcstoll(const wchar_t * restrict nptr, wchar_t *=
* restrict endptr, int base);=0A+long long int wcstoll(const wchar_t *nptr,=
 wchar_t **restrict endptr, int base);=0A.P=0A\-unsigned long int wcstoul(c=
onst wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);=0A+uns=
igned long int wcstoul(const wchar_t *nptr, wchar_t **restrict endptr, int =
base);=0A.P=0A\-unsigned long long int wcstoull(const wchar_t * restrict np=
tr, wchar_t ** restrict endptr, int base);=0A+unsigned long long int wcstou=
ll(const wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.EE=0A.=0A.=
SS H.12.2p1 [String to floating]=0A.=0A.EX=0A\-_FloatN strtofN(const char *=
 restrict nptr, char ** restrict endptr);=0A+_FloatN strtofN(const char *np=
tr, char **restrict endptr);=0A.P=0A\-_FloatNx strtofNx(const char * restri=
ct nptr, char ** restrict endptr);=0A+_FloatNx strtofNx(const char *nptr, c=
har **restrict endptr);=0A.P=0A\-_DecimalN strtodN(const char * restrict np=
tr, char ** restrict endptr);=0A+_DecimalN strtodN(const char *nptr, char *=
*restrict endptr);=0A.P=0A\-_DecimalNx strtodNx(const char * restrict nptr,=
 char ** restrict endptr);=0A+_DecimalNx strtodNx(const char *nptr, char **=
restrict endptr);=0A.EE=0A.=0A.SS H.12.4.1p1 [The strtoencfN functions]=0A.=
=0A.EX=0A\-void strtoencfN(unsigned char encptr[restrict static N/8], const=
 char * restrict nptr, char ** restrict endptr);=0A+void strtoencfN(unsigne=
d char encptr[restrict static N/8], const char *nptr, char **restrict endpt=
r);=0A.EE=0A.=0A.SS H.12.4.2p1 [The strtoencdecdN and strtoencbindN functio=
ns]=0A.=0A.EX=0A\-void strtoencdecdN(unsigned char encptr[restrict static N=
/8], const char * restrict nptr, char ** restrict endptr);=0A+void strtoenc=
decdN(unsigned char encptr[restrict static N/8], const char *nptr, char **r=
estrict endptr);=0A.P=0A\-void strtoencbindN(unsigned char encptr[restrict =
static N/8], const char * restrict nptr, char ** restrict endptr);=0A+void =
strtoencbindN(unsigned char encptr[restrict static N/8], const char *nptr, =
char **restrict endptr);=0A.EE=0A.=0A
--gjm7cxdj6mg3xxyi
Content-Type: application/pdf
Content-Disposition: attachment; filename="strtol.pdf"
Content-Transfer-Encoding: base64

JVBERi0xLjcKJeLjz9MKMyAwIG9iaiA8PCAvQW5ub3RzIFs3IDAgUiAgOCAwIFIgIDkgMCBS
ICAxMCAwIFIgIDExIDAgUiAgMTIgMCBSICAxMyAwIFIgIDE0IDAgUiAgMTUgMCBSICAxNiAw
IFIgIDE3IDAgUiAgMTggMCBSICAxOSAwIFIgIDIwIDAgUiAgXQovQ29udGVudHMgWzQgMCBS
ICBdCi9Hcm91cCA8PCAvQ1MgL0RldmljZVJHQgovUyAvVHJhbnNwYXJlbmN5Cj4+Ci9QYXJl
bnQgMiAwIFIKL1R5cGUgL1BhZ2UKPj4KZW5kb2JqCjQgMCBvYmogPDwgL0ZpbHRlciAvRmxh
dGVEZWNvZGUKL0xlbmd0aCAyMjYwCj4+CnN0cmVhbQp4nJVabY/buBH+vr+Cn7rexUoR9a4c
WiBJ01wW7SF3dZAC3eLAtWlbiSw5kpxd36FA+s87fJMpipJ1CbJrUo9mhvPGmXG+Iow8+Ct+
rvZXGN3Dv89Xnhuip6uv6PXyqkO4nuehJPP57+X+Cn6srhLfTTwGWK47pNxLwqwH9dD26u0S
/Qwf3vFFj/zISy/+FqQIw8fNlRBg+YT+jRY/PcOfm/+g5T0gIgsAPSw+vcPhw40C2cg4QRin
Yv2HKTqe9eBcRzjtH5yv5iBBzBhYu1mkuGPJ/Z+nsjo0eYME9zBwIxz3aWIc8U2TqOOnQ3Ca
CAG8+JKoI0gpqqEltFjeIMl/kbcFlfL6vhv4BmHsZXzTpOxgCzgTUsRZeEneaaQbROxnDJ/r
7bhbiAM0bd1WxYRTOBEWyIdFoBwjCNw4MI8KmziwCAVRoPsYbREpXNTsqmOxvj5rskU7coN8
6arf4EEkPlJEUE1BznzV0jX6XjctOpCa7GlL6xsUSZgrfTaMuRg2+8ZJ4vqzPMFEjnnCK+Av
JT62u6pGnX4wNvUDR2ObJmnHt4CVgePoksDTSNMVbEH/qqCfSbmuK/SmKqo9qdErWNFGHAV7
qZsmBlPfi/jmgKth6x/QnuRlC/9ojaoNancqWBKwknkUP8VuZqNqO4vO5u95eXwGVqVzIFva
oENdfaarVnDKMjdLDU4B4xRdll/5lA8+zfBWVwlTN5znVAbS7lSLD/U5KKpD1ZACrUhLt1V9
UsrLXN+UBscx3zSZOLEFrJwmiA2BbP7x+rhF35+VKvDE+XDGrTNDEwZyRBNvVvLAOHRxPEit
mG+atBwLVp3XSy4JOI2cE07vfvqI3qAif6xJfRLiR+CCmSl+FPNNk5NjA0upoiyaKb8dqQlY
7Q95AUEJIV9AqORVqcI9HmYj3xMpyqTqWNFKhDSYK6wVaQ1tISS4dDJIr+D/bNMk5tjAinGC
54poRcpL4MP5riLHAr3dbmktkw9cRsnA8lDYsE2TpmMDK/7RxdCaRApl/itHvxyrGyRjeHEi
lVZqDcT0+KZJ0LGBFfNwboDZkULMe/Ll+IjuaQHXxhcZQbYEEIkEYJJybGDFNpgdQVakEPAf
pG7zEn2kqy9nZUItIkSF/DsM9ohvmkQdG1gJ4M+OHytSxs/7j+hHZWbgng4q1MDnmyYRxwZW
DPHsuLEipZmrkrQ7UqJPN0h1KERXaCHTZ5zarruIb5oMHBtYChNmc4PIjhRi/5KvdqReo7ek
LhtWsqrYf5KXc+CGoSlt4vFNk65jAysZ0rmxZEfKnors0T2UyjJzhqGbDDwgxHzTJMMzpwmW
TV0IB0qnhRtDou1EC/hX2qzq/MDuI3n1wzWZJpEhsZ/yTZO2AycZgGXJEUKoXZB4BDlW+2tl
muxOztV/aKv+2aZJnFX/A7CyK1wIfUFs9cZyR6f6/wUCOYOkJ+ew24vTDv71SIr8O+usHF/1
Nnmjr44NXfeelvqqa8167zye9NWrD+97T9uqT29T1fveczijtlwRKFr69CGRyGNNxEngzWys
7UihoP/JQikavo2xP5fRODROw7NlEWhqYF3ox2OFgdLoZJqT9evd81V10C58UFmARYOw2NTV
Xl9XJe0tN/pKWOD88JE1WE0PUekrUlbwSm3Qv+ute08PtJZWPwMGFABEWG7oM2amF+tA5OHu
vGzEoD9aEfDdUTfpbDKYbaVhIvXZ5Pu8gBYZWszHgu4bF+leuDzfZBXqTzPUxypfo295VYhz
sKYYjo3o+Rp5JvtDQdEbjF++jN0IShkXH4I7pJx+6A2+n3becGy4LoKQZ44FWGHoHdEZfyBN
o+M7lauNmm7YhpLeuaw867RNjn7KFXTnbcXnAA1kCST8qOstLTElIzJIs5mTEDtyduzOYDQO
DbzkQuyy+E4mYhee+93zCi7Cff4bz32pmMUuHonMvmqjKvWVzJSpaFIXYN7jnl+n+q6MmG79
VOdQz257kEpfNcfVrkdWX2izOI1kXhT6mjmiTgCSiy8dfsNGNfqz8hwMJ/0Bz0jaIS5HcmAd
+AntcleXDtigvEU1XdH8LJY+gVy7CC13OcAaRFYt3JDFCX2GWEMyzyEt6ZATc3E9og81bRru
9PBJ45BXxwYdqrycFQGxZ86Z4kjztjX9Xua8cBKDNltR0L0wqyhIwshaFEBW8s5FgVqV+gq8
Yd97LGynVmQFiaChInvi1JdVQe+NohIe2b3Te0p67IQVrcIJzymLk76W/Nf63rec9F+h+rKm
46lPGWgwCMRxrK4NNb3m1mZ6DKW33CHhQNqEW2LA1WqKwNWqs8s8wWNwLo6wJVJ+G4WZm/Hb
SHpswbxPVqi84XoPv/Lyy8UDGeNBPXogXsQEHz3SO/R4viGOjEfOZ7BidrmuaFP25vykbSkk
JSY/tFLlljKp2rMDuxcFsw4a5TQbKp6yoV+P7LJRM+dzbOSNYMZ2N1Vft5ACmdhbSGcMt6pq
SAntS1nUx5Y0A5U+l8fzjULdNs1kJts8LJh4LTt4jW6V0eFyvzO3yMPND+MJTnL2s4t9WAdN
bA1QJ9plVnE8+j6b8j8svkFto74hmiIUhaOEfp9Qdiy+NfXDvrJj7XWuwmeIAfAOYdQ/64tg
QqGKeuBNU799PozS/9OzZOBMeYuP+4aYPKw3rnTwpefDHXo+dI4yyRZn42r/70WjsSQ909Gw
dTYw39GwtVPvzvwH4ucyq3BcvTNcEQfjKn1xK4dXltcTkXGwb9OpeP0WfaLXkP6hvOBXgEz8
0L6g679cI8hk3S0B2+u8gQIODv2wIHVNTlNHV8zxuJVuVVkEmR3yeZOzVPoEabQqr0Ecfnny
DNrBYHFC+3y7mzCvZJyNW/d24mJD70u0gdpL8vqVdTq/9vAXOafjxr6VzErKiBGWydDH1wgu
Zjp+Gym6ybgX3L7ovjYLhgTkiCww/9eBbczzQd2nrF1847NyBoe++hbf9/zQ8RLHi1gB4EWx
rO2wbHgkwyhUX2TpDPl/WPn56v/ErecHZW5kc3RyZWFtCmVuZG9iagoyMSAwIG9iaiA8PCAv
QW5ub3RzIFsyMyAwIFIgIDI0IDAgUiAgMjUgMCBSICBdCi9Db250ZW50cyBbMjIgMCBSICBd
Ci9Hcm91cCA8PCAvQ1MgL0RldmljZVJHQgovUyAvVHJhbnNwYXJlbmN5Cj4+Ci9QYXJlbnQg
MiAwIFIKL1R5cGUgL1BhZ2UKPj4KZW5kb2JqCjIyIDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRl
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
3bW8x7w4Vr3nY2WbVP3wLN/8ja+3TM7kanhIGpT0pcioK5eaoC9pKrtgpvvBKd/vezs3kpVT
5k20DFTfMJ+fh2jPlDZLaDXR7CaTEfBgvhbRvX58Q1R/QVAxOOGZ+NjVCspjsWrQq2B0DRvB
CwRsyg3l9orr4ZQMsEnTXEdDILJ8/2FyDPyKdJ+8r+bHeHXZ1y1HERnTxp6ZCHv9xl4KfhT8
wCu612Z88FQWIOpvmqDneoHjxo4bKj+6YWQC1jMFxBxo+dIaD/zPI/y0+GnxB/TNQ21lbmRz
dHJlYW0KZW5kb2JqCjI2IDAgb2JqIDw8IC9Bbm5vdHMgWzI4IDAgUiAgXQovQ29udGVudHMg
WzI3IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+
PgovUGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagoyNyAwIG9iaiA8PCAvRmls
dGVyIC9GbGF0ZURlY29kZQovTGVuZ3RoIDE0MzAKPj4Kc3RyZWFtCnicvVlLb9tGEL7rT3hO
qWSbDPfBJYmil6ZtgByCBBXQQxQENElJLChS4aO2c+pP7/AlieQuRVVxbEherkYz33z7zeyS
/goEDPyt373djMA7fP09M3QOjzMD3s6+wq/LWWtlckM3DBxX78sdWmzwtfRmGheWzsqPYOkf
7C2qWzhncef4BTR+/QezgeBwPWs8PcInmL9/wp/FZ1i+QwtTYgCr+V9vCV8tWiOZG41xYdfX
F3sUxjAHwlj1BYvYvSSExOEefoEsT3+u/TVsSd0ZouPu1ElcO8mTaDXf38MrfBmrxXmfwuFK
n7sxnxoTQ6+OVTu1LJ128j4lUtTuYb5cQMt6Avs0WAA168t/FkCaYRDnkKfhZhOkYbwBP3Q3
cZLloZdBGIML2wU0ls/7JN8G+IkbgZfs9mEUpJBv3Rwe0V0bqIh8eAgg27lpDkGcFJst5Enr
N8AvBBAcwz+5O01JYpuuMDvpdhY3CmBdxF4eJjFsVvPV4r4KsU+TPMmf9wEka6gDlEtiOr0Q
lBnVpDwGas8s3wWO041a3XUu9VqOaFszSW25mrNW3whKsD4oIXSLSkCVpX2SfLZt6fa2brwJ
fGS6UU+ZbOlCLkpu6/xs3UQJ6iGM8/MaR6lyxfq0+vaSOMtLmCncxvs8vW/Gt2mAJqFXasWv
5jEiPLhZMK0SiFMtzrASTN0StAGx3IbZiSL6ckW1RxG4UZQcK+SxVWxZFA/JpsgAdR9lkBXe
Ftxs0O7KeKRtYW3WmPdR6pjv7WrxalDpXcwHH0l6ti4Mq5e8tIeftJgBHgSkwNJpyW7sw9bN
IMZCPiUpzkI/yPRzQLHAdFshkD/D2Ku7wqGM/SQoQ+Xgel6QDak+rSiC+1mF5bbWz1gaC9Cs
WrHzskmgJr4WbhT+i22srqT4J2Sn3lLmKFa3wH7lxkfGnmEfpOsk3bkl5j1iC3fhN7cE3ZKg
Ndz099yKBku2F0yxxOTLCtUds82plcmHFOFZumMxFPM+ybA3r+Z+uF5XNeQD0vmGstfvmcGt
1aLthMLWRb85UDxIlJP92Box2dDablZW0HMpKSyblPprZOm2TnW2J/BpiZqotBvu3KdKgtVV
UV61Wsk+NylRInSH90Izg1WT/dgaNSTWrVhNowdUhvMG2xQC+ZIfIXabHBwaW6fdwfl+N1JH
zJawXQO6Owfowq47goKojzQ3RRdG8WN4MWQqbHg5i+jS7YioRc5t6SliguVoOfC2HB697KQc
qitFOVA+3P4ZIdVkP7ZGicS64ZZjy+wCHS+HA8SW5MeSWfzgtrfwh/mrxMgFUZ4N7yaA+q5Y
mKXEclIYh2X7QQxR9en5bgqqy8GMlohhSw6LUyyVJYJaJ7rZ2TL8+/rv+rh53x+3EDzzSSoG
fZDBBmJXk30oWDES64Zw5ogJp+sbPykeohZutyPJW2SP9wlLz2yuPJjfjcS/Nizes6vC3qyj
xG1a8fqFsuYyhTVZq8NfG5Wqub6pbqVOCY9easUJVed+FsWk4GPFTR2zc0cy3XK8uEW3uN8P
y5fgoot+QVJmVpP9YHh3LLFuKKQ26yGTlu+X3wIPd5SI0QYUo//roDNhUalFJKw2i3oWx5WK
otxSBj+QIHgTXPBREq7ggMmU1eNACeNaDoh6AQ4cEGo30XH0QiwQxznPwgiQqwuc2FRyJz/F
crzArU6BR83uHbWDIjrZvYsokmzfJnoaHHg5ryb7WLRS1APrlmPL6AGX1n/7dOzwrOfidn7R
KY6YtvIRyt0olu8HgXElhJqOHo6XJ4XK1HhKyjii7wbEUS/OTRFn4SYO/B6W4sXZsYWanImg
Lr01Hnn4xbr/W5E/ofuQNs+w1kkKb+jzAjTCaft8nRqUa4alGSbOU8MUdZ5z1hwBQPkfMQz4
+xI+zj7O/gPR+yj6ZW5kc3RyZWFtCmVuZG9iagoyOSAwIG9iaiA8PCAvQ29udGVudHMgWzMw
IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+Pgov
UGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagozMCAwIG9iaiA8PCAvRmlsdGVy
IC9GbGF0ZURlY29kZQovTGVuZ3RoIDEwNTUKPj4Kc3RyZWFtCnicvVnfc5s4EH7nn/A+2r1A
kRAC5m760GubmT50rjOeuYekk3EMTrjBkPLjkv73XYNwQJEAx46TsYPFmv307e6nlfITCNj4
27yvtwaBr/j6z7AtBo+GDZfGT/i4NForl9mWbeN1/b7cosUdvpZrw2Tcs5zdLViGe3uPWh6O
eSx4/gIav//i+EDwcmOIJz3CFcy/PeHP4gcsv6KFqzCA6/m/l4RdL1oj1WNMh3G/+XzwEyl7
OYfAq+094ktz4Irnzaq0iO/SKIQkS++atzgtoSjzMquS5Hq+ztKihPX9Kod3eYTj8bqE9KHM
L8Tg82iUhvX47gG3qyK6XvzZwBRBUKG0eQ9lF9sfB2E7EJJJFKD8BhT3A4u+ADXFEiOsYhkz
jVjMIhZ9IHC1vI/gcV2UWXjR/N0sgLhNAlzAKg2b0SSETZWuyxgn+QPaeNsWJksfi0O9elAG
Y1JHYS2I554nIVemR5hVt0kLtyX8ccfyTQnvQEqI/Y3OnSYCE1KBc1fBukiFYRyy91c4Z0Tr
fLZJslUpQvXGHFBV5gkOBmGcgAJbz/+sLr5uEJI3zgY3cPRMTEEzlZAhIXA9brFJQiBbjgmB
0xeCby9LnXCFN8rU7kziDlDJmYRNWeo3n6J1vF0lDhWgHDoaYiG3r4mvSxXUivhOgTKk91P8
U1/rf08FZ8I/Z2NUHMEEUSWZxMQQkiOZYIE+EnsmCPUFALx6Oy4YNkKjXAxjmcTGUNEz7lh8
UtHLlmNFz3pFn4jVP2kvqqSz+mN/o1j+kR76YvnHRnY3KKMxqaewbol2iQRdqQn7nqtBeoTk
H9QVMidQhKAr/gOYRoT/MCDYl+mAzPpdqYjl2SiyVVnapWgU2SmJcjx9xKQ9xh5SdTaydiWi
JWs6upMSxvTx023KWmE4G20OmUrbOMbDyRsSaYcwy58k0rKlRqQ/Wh5cfVkAFRuxLN9is41z
WIA4Q5j/j9s0cRnlBeoyZJsd6uguyqH89RAV8Bd+rK+s+w970cae3gtk0cZFfzcoozMpUVi3
8bCpNBWlaCOG7erpRmyUccV86u+UJzZxB6UKDWxFPESqjAE62WkC5VyLYlb1YVTn4cVV5Wlb
QmOITkeMow/Pc77UtdsNz75atfpyFCjiT8gZPahTYiGBPk6dzGnU7WwMEZ9OyR49qtOKLuGq
w7opllrRpRSuLqM0ylcJVGWcxGW8k9GiDJP49ll6O3JKGLMC2S3FlSpQ+DWJo7Bu2cXanHBC
Ks4Z6hINX3EeOiXOjOpPQQf8H+tWOiJWHHrVXjdvNOuhs1+9+yO9+nqqe6dctevkqICbopno
wfCoaEml3FOd9v+TZw9ZgaWxyXL4m/5agImp4jRpO6c2ZabtmbaL49R2eTPBOROFAtr/gaDD
z0v4bnw3fgNdletoZW5kc3RyZWFtCmVuZG9iagozMSAwIG9iaiA8PCAvQ29udGVudHMgWzMy
IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+Pgov
UGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagozMiAwIG9iaiA8PCAvRmlsdGVy
IC9GbGF0ZURlY29kZQovTGVuZ3RoIDkzNAo+PgpzdHJlYW0KeJzNmF1v2jAUhu/zJ3ouoW1S
27GdRJt20X2qF2jVkHZRqoomoc1Ekw7MoHf76TsNCS2unaYDqoJAwTn4PH7P4Y3Jb6BA8Ll8
j28cCif4+uUQj8PcIfDV+Q3HfaeOEpx4hOBx+d6/wYgrfPVjx+Uy8Pz7U9BPVvEB8wIcC3j0
8AUMPvrih0DxcORUM83hDDq9BT6659A/wQhhCIBB5+dXygfdOsg0jetzGS4/v3hGxp+uIQrK
+ICG2hqkYb6DcZFfQVLMLscpTNVEFeNk0ImLfKogvh5OYD+/VZPD6nh/kmJMFitI8wTHB913
S45KZQOGjPgaxuPke2XyLFdV5vXEq1xNBIfl1y+H07QNS8isLAeNLNtDEOEzcmgcuxeFy2dE
aSbaHgizV2dvlk+zqzxNNJjZ7uWhxC5PS6qtwYjQXitNIp1o50KJwP5DP3gR2wuRXGqACiso
EXjsCVSbSPRqk18eo9/C2eeFQhxczs1srLLLO5UezbMkLZmHsUonMFPZOFNZOoX38/vRLs5V
ebx3/eEcKvuWvkelBuQLUg7qRC4ThuhafS40fBP9g+HO4+kjkysRLxTsg9YXqxOPzvxPb/i+
oQy68VqYdJKNQEhkBdHsd0nzahLxyNSpRhu2kW1TKB7YK2Yw4xJp9npiSWoXqz3dVgXz7fWz
WXPF9XqyMdFWtucZXy5ek1FzEnq8lVHrkRaj/uZR5rFbCmc/EAsXowr4WwwVHtbuS3HDwXwt
C7t3CP9pGpdSQ3QlrB9JjcnovhdfxkjQW172Rr31q55e8+r6pxe8RZn9kBu0rMrcyLDhXt+X
xJq4XvyizrzY2fK5qZXWl2+j2FQAZld+7+JTGmc3w3GlfbK7+mOn2gVopthQABbatX8QYFHn
3lkPsEC2kMDG0UqEJjdjIvJkKzfTI5vcjHv03s/619U/9TSPRz0YzfJYZUi/sjXcVEo9HcNN
pTTkc6kwRNcq8kCDM9ranyJLHhENOqtLSSkhDqJuZysdpwpdOIbeUXiOIu+m/L4w6F+Vf1u4
m3cJDb2wXZdokc1dwvQuSdI46cEwf1j2ZZYnhtZhknlCZ/B5VA7qEPh/xBBdV4BIjfj51ikx
30D30Igb6mLqns2IN/RaGhAr5rqwZbXfgrDC1PAmYTcjbvfLxM3wE9CAVRsZ7dap6Vbs90lx
W0yHYxgVE/jI7rrgUs785V2QDiOMuyRwicBxRoRcStARlUmD9QY1Jvzch1Pn1PkHO9VaQmVu
ZHN0cmVhbQplbmRvYmoKNjAgMCBvYmogPDwgL0NyZWF0aW9uRGF0ZSAoRDoyMDI0MDcwNTIx
MzcwOCswMicwMCcpCi9DcmVhdG9yIChncm9mZiB2ZXJzaW9uIDEuMjMuMC4xMzM4LWRhY2Mp
Ci9Nb2REYXRlIChEOjIwMjQwNzA1MjEzNzA4KzAyJzAwJykKL1Byb2R1Y2VyIChncm9wZGYg
dmVyc2lvbiAxLjIzLjAuMTMzOC1kYWNjKQo+PgplbmRvYmoKMSAwIG9iaiA8PCAvRGVzdHMg
NSAwIFIgCi9PdXRsaW5lcyAzMyAwIFIgCi9QYWdlTW9kZSAvVXNlT3V0bGluZXMKL1BhZ2Vz
IDIgMCBSIAovVHlwZSAvQ2F0YWxvZwo+PgplbmRvYmoKMiAwIG9iaiA8PCAvQ291bnQgNQov
S2lkcyBbMyAwIFIgIDIxIDAgUiAgMjYgMCBSICAyOSAwIFIgIDMxIDAgUiAgXQovTWVkaWFC
b3ggWzAgMCA2MTIgNzkyIF0KL1Jlc291cmNlcyA8PCAvRm9udCA8PCAvRjM2IDYxIDAgUiAK
L0YzOCA2NCAwIFIgCi9GNSA2NyAwIFIgCi9GNiA3MCAwIFIgCi9GOCA3MyAwIFIgCj4+Ci9Q
cm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQyAvSW1hZ2VJIF0KPj4KL1JvdGF0
ZSAwCi9UeXBlIC9QYWdlcwo+PgplbmRvYmoKNiAwIG9iaiA8PCAvRmlsdGVyIC9GbGF0ZURl
Y29kZQovTGVuZ3RoIDIyMQo+PgpzdHJlYW0KeJxdkM9qwzAMxu9+Ch27Q3GTcwiMlkIO+8PS
PYBjy8HQyEZxDnn7KV6bwQS2+fj0E5+lz92lo5BBf3K0PWbwgRzjHBe2CAOOgVRVgws2P1S5
7WSS0gL365xx6shH1TSgv8ScM69weHVxwBelP9ghBxrh8H3uRfdLSneckDKcVNuCQy+D3kx6
NxOCLtixc+KHvB6F+eu4rQmhLrr6DWOjwzkZi2xoRNWcpFporlKtQnL//Ac1+L298tK+P7Ur
1NPfBmz/3NPZhVmClWWURFuWQLjvK8W0UeX8AFe7cfplbmRzdHJlYW0KZW5kb2JqCjc2IDAg
b2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9GaXJzdCA0ODMKL0xlbmd0aCAzMzAxCi9O
IDYxCi9UeXBlIC9PYmpTdG0KPj4Kc3RyZWFtCnicxVppb9vGFv3uXzFAv7hAzSFn4ZBBUDh2
sxWpG9jJSwGneKAoWmJMkQpJecmvf2eGpDSktTiygVfVFEfDuffMXc7cK0USlygSeAEJSOgL
EhLP8yTxXOKxwMeAeEIEGBDPd/EhJ57yMRDECz1F8ChzlZ4kjDGsU4RxhecDwiTH4pAwP8DF
JSyQuHDCXdcjTBDuCf0Q4SyEkIBwITzCMS8DPSDcNwPCldADwgOJeUW41svxSBjqCxFu6OJC
hCc5LkQwpXAhggsfFyIEx0AQIRnGEv+HWIRbxfWFiMBciAixDxES6bmMAKpk2DRUSg65Erci
kETfylBhQKSCUomPAh+LfCLDAGNFfA/GkAHxGcPikGAbAh8SX2ARTAdzSHxIFAM4WFz5MLYv
iQoh3/dJwFwsgk8ADA+TIARYqAg57KZceEnhYZjW1RvWtnd9mEFx7Tn4Q8E1ngAAPIZxIF6+
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
26wvNvNm4MvFsju6B6d+A7+2XP3esjn49qSNypZNdSC09KnZtCXn7w/6tF6PBtPallwGfUPG
JidM4KKBNGytj5Sm/XtDz3okLcIlSfMhSYvQJF/gDorJJbE+Cz8PvzZS3XeNW+tIZf+s2pK0
+7g6ckh7QwrcNr/va73MTdS6ftU6et75lY58QFotV1hdlOd6q+Rvc77tmfQ/1qZ11zH9dMIK
O2EnSNA2vL+YWiZBvunuqeuUfjowPW9tYO75dcL/AFiSuV1lbmRzdHJlYW0KZW5kb2JqCjc3
IDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9JbmZvIDYwIDAgUiAKL0xlbmd0aCAx
OTEKL1Jvb3QgMSAwIFIKL1NpemUgNzgKL1R5cGUgL1hSZWYKL1cgWzEgNCAxIF0KPj4Kc3Ry
ZWFtCnicJdDHEcIwEIVhmYzJmGQyxoDJGZNKoADaoAYq4EgHUARVUAxXpF86fLOzb+bNjoRQ
zxCi6+FDKTL4EwHpRc3uU88GBjCIIQxjBKMYwziamMAkpjAtm01L9Zsv3Z/BLObkPv9VqXXV
aV7Otq829lvZzOFdpxYWsIglLGMFbaxiDevYwCa2sI0ddLCLLvawjwP0cIgjHOMEp/JO56bv
nOEcF7jEFa5xg1vcoY97POART3iW/b2P+o21Kf4afCJCZW5kc3RyZWFtCmVuZG9iagp0cmFp
bGVyCjw8Ci9Sb290IDEgMCBSCi9TaXplIDc4Cj4+CnN0YXJ0eHJlZgoxMzA2NgolJUVPRgo=

--gjm7cxdj6mg3xxyi--

--6qqtjt7cqttz5bnv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaITHsACgkQnowa+77/
2zI6oA//bZvpaMbga/HaNgkxMnhW0PZ8fRigEYGgbUaAvJFhqWTIO/wMApUDl0rW
y+X47NDiMn9ED2N23Gww8gQyimI32ilhhBwOiSLCM93c1NajaU5Bz9RzJaRZWqwD
GYhwvRBNMWa7DjxpNHA9ZbGuI7JWpOGDOSx5J9TKc395qPFgjzEzznQaLPt+K4Xl
QyqB/AJSG62O+MNvGPLBQKBI7pEjURd9vYQnBoVK4RUjfXL4QCJxe6T23FkPfD3Z
IE87DLYWUUu03J1AZiW1gpGcvLZtoIX249UfgRCTnmNW4pHUelfP1lZWNsy2qsnl
Z/COSt3MkTuXKKltREIlkm5Ak+UBJF8MQ7XthX0PT6jNHHHq/MTHRpiem5m5J3Me
V6lIxWUOprAR9nhB2hyrZ9+yuA3oekwqmqLT6I4CDAMr66Hyq1v1Uim/+dnf/QQO
nzJIbp19HmBVdDA4E0xXULYKKe/LcAO3EPi9ysqBRiZU7Z7677i/n3mkKkU/3lhS
WfpMUmlRnCI2cztH+N3CktjgSRNe0X+1bElYjIx/Xs2/PGfiZDTsF0wZJXQSsmcc
j6O3+bIbZzH46v4Od3IAsXyf54+CjfCYEZe7HonLxUbmHw/9TFALXRLwEOSBJCw/
9vhgCm68Anb7MFok0aBILTY4E4YS1CjhtkZUP7JUjDfBL6rah/I=
=GprQ
-----END PGP SIGNATURE-----

--6qqtjt7cqttz5bnv--

