Return-Path: <linux-man+bounces-1354-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFC5929657
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 03:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBC011C213A3
	for <lists+linux-man@lfdr.de>; Sun,  7 Jul 2024 01:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A902B17F8;
	Sun,  7 Jul 2024 01:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcPJn/hd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5447C4405
	for <linux-man@vger.kernel.org>; Sun,  7 Jul 2024 01:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720317526; cv=none; b=WwQ9gSOC1xQJLs8H/RtGhAvdZDLoppCk5UJ7aS6+E4GFYXYve7Xu+XmPvIm5hH19FxqKT7f5qYy8KL7rq4/9xC+8AA5kQRqEfBwO8ojNKmOdIlTfdNNCiceIJIHi3nrI4eRemORmJfwAlXDGHU4l/dl6uEL7GaB26yWuSZxkuL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720317526; c=relaxed/simple;
	bh=c9Vg92qvBfDMtR4sIIwqGpH38nZDK6WKAfF3Jl/MPZw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LJcwlK5kE8qdqyJkObHCPmdosQGzRHyAG4BpFS503oGWONR28R8PgQqQQ8ogy21FgV/YOZpkTzIEcodM0qFbJm9uTFr2H/hEmizuGZYPrFnXJ0G+z7cE9bJIgsqFsuUgrY7HdgtNAhdgvrHGn4yvc9zKFykjY7LxgBr4xjMLf0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcPJn/hd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3FDFC2BD10;
	Sun,  7 Jul 2024 01:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720317525;
	bh=c9Vg92qvBfDMtR4sIIwqGpH38nZDK6WKAfF3Jl/MPZw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lcPJn/hdMmW1++9uBm+yiKNOuURFwOPBQLMKD6evBkzQZi43S9zMSeEcwCsZ9bCoR
	 OEkP7HTzJuJ6x3WROiDaTVpo+R0g6N3MG9GsMaDlwOZBaJkFCh1CYjpxV38aouh/ET
	 XOceIYFFV7z+fenYg/VS6wC8bVbB72fElbpxKaqWck6kNQyHvtjPISZLKkw8hBEqal
	 aO/Su5DUjzXj+vizPwflUemt+u5oDSCjNIScSFmQVnn+4D3tlK8IwX3nr3yI5X3WQP
	 gfNf9l2SGLYXJB5MKKbTr5NEaBQL4SvOMTBFs6yau35ttQOphjx9aMndOO/Tiqmu43
	 WMNPkDJXuqUDQ==
Date: Sun, 7 Jul 2024 03:58:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
References: <20240705130249.14116-2-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2anfwxodmtgnxltu"
Content-Disposition: inline
In-Reply-To: <20240705130249.14116-2-alx@kernel.org>


--2anfwxodmtgnxltu
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="76mjfc74mjfmswrj"
Content-Disposition: inline
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org
Cc: gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240705130249.14116-2-alx@kernel.org>


--76mjfc74mjfmswrj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I've incorporated feedback, and here's a new revision, let's call it
v0.2, of the draft for a WG14 paper.  I've attached the man(7) source,
and the generated PDF.

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--76mjfc74mjfmswrj
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="strtol.man"
Content-Transfer-Encoding: quoted-printable

=2E=0A.=0A.TH Nxxxx\~ WG14 2024-07-05 "Proposal for C2y"=0A.=0A.=0A.SH Syno=
psis=0A.=0A.SS Title=0A.=0A.MR strtol 3=0Aet al.\&=0Ashouldn't have a restr=
icted first parameter.=0A.=0A.SS Author=0A.=0A.MT alx@kernel.org=0AAlejandr=
o Colomar Andres=0A.ME ;=0Amaintainer of the=0A.UR https://www.kernel.org/d=
oc/man-pages/=0ALinux man-pages project=0A.UE .=0A.=0A.SS Proposal category=
=0A.=0ABug fix.=0A.=0A.SS Cc=0A.=0A.MT libc-alpha@sourceware.org=0AGNU C li=
brary=0A.ME=0A.br=0A.MT gcc@gcc.gnu.org=0AGNU Compiler Collection=0A.ME=0A.=
br=0A.MT linux-man@vger.kernel.org=0ALinux man-pages=0A.ME=0A.br=0A.MT egge=
rt@cs.ucla.edu=0APaul Eggert=0A.ME=0A.br=0A.MT xry111@xry111.site=0AXi Ruoy=
ao=0A.ME=0A.br=0A.MT jakub@redhat.com=0AJakub Jelinek=0A.ME=0A.br=0A.MT uec=
ker@tugraz.at=0AMartin Uecker=0A.ME=0A.br=0A.MT lh_mouse@126.com=0ALIU Hao=
=0A.ME=0A.br=0A.MT jwakely.gcc@gmail.com=0AJonathan Wakely=0A.ME=0A.br=0A.M=
T Richard.Earnshaw@arm.com=0ARichard Earnshaw=0A.ME=0A.br=0A.MT sam@gentoo.=
org=0ASam James=0A.ME=0A.br=0A.MT ben.boeckel@kitware.com=0ABen Boeckel=0A.=
ME=0A.br=0A.MT heiko.eissfeldt@siemens.com=0A"Eissfeldt, Heiko"=0A.ME=0A.br=
=0A.MT dmalcolm@redhat.com=0ADavid Malcolm =0A.ME=0A.=0A.=0A.SH Description=
=0A.=0A.SS restrict=0A.=0AThe=0A.I restrict=0Aqualifier is used in paramete=
rs by APIs to inform the callers that=0A.IP \[bu] 3=0AThe API=0A.I may=0Aco=
py from one of the objects to another one,=0Aor perform other operations th=
at would cause similar problems.=0ATo avoid violations of for example C11::=
6.5.16.1p3,=0Acallers=0A.I must not=0Apass other references to the same obj=
ect.=0A.IP \[bu]=0AThe API=0A.I may=0Aoptimize=0Abased on the assumption th=
at=0Awriting to such a parameter=0Awill not affect any of the other objects=
 it received.=0AThis is actually just another way to express the previous p=
oint.=0A.P=0AThe definition of the=0A.I restrict=0Aqualifier is in terms of=
 accesses.=0AAs long as an object is only accessed via one restricted point=
er,=0Aother restricted pointers are allowed to point to the same object.=0A=
This is less strict than I think it should be,=0Abut this proposal doesn't =
attempt to change that definition.=0A.P=0AA consequence of the definition i=
s that the following program is correct:=0A.IP=0A.EX=0Aint f(const char *re=
strict ca, char *restrict a);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=
=0A	char  *xp =3D &x;=0A\&=0A	f(xp, xp);=0A}=0A\&=0Aint=0Af(const char *res=
trict ca, char *restrict a)=0A{=0A	/*=0A	 * We're not allowed to use '>' on=
 pointers to distinct (array)=0A	 * objects, but since we don't access the =
objects, they might=0A	 * point to the same object.  In fact, they _must_ p=
oint to the=0A	 * same one to avoid UB here.=0A	 */=0A	return ca > a;=0A}=
=0A.EE=0A.=0A.SS Diagnostics=0A.=0AWhile the above program is correct,=0Ait=
's a bad use of the qualifier:=0Aone can only guarantee that it's correct=
=0Aby inspecting the source code of both the caller and the callee.=0ACompi=
lers are far more conservative=0Ain what is considered a good use of the=0A=
=2EI restrict=0Aqualifier.=0A.P=0ACompilers emit diagnostics so that=0Ait i=
s only necessary to inspect the source code of=0Aeither the caller or the c=
allee to=0Adetect what is likely a violation.=0AIdeally, the definition of=
=0A.I restrict=0Acould be tightened to match those diagnostics.=0A.P=0AGCC =
emits diagnostics for the example program shown above:=0A.IP=0A.EX=0A.RB $ =
" gcc -Wall f.c" ;=0Af.c: In function =E2=80=98main=E2=80=99:=0Af.c:9:7: wa=
rning: passing argument 2 to =E2=80=98restrict=E2=80=99-qualified parameter=
 aliases with argument 1 [-Wrestrict]=0A    9 |       f(xp, xp);=0A      | =
      \[ha]=0A.EE=0A.=0A.SS Pointer-to-pointer=0A.=0AHere's another example=
 program that is technically correct.=0AThe parameters in this example more=
 closely resemble=0A.MR strtol 3 ,=0Aby using a pointer-to-pointer as the s=
econd parameter.=0AOther than that,=0Ait's conceptually the same as the=0A.=
I f.c=0Aprogram shown above.=0A.IP=0A.EX=0Aint g(const char *restrict ca, c=
har *restrict *restrict ap);=0A\&=0Aint=0Amain(void)=0A{=0A	char  x =3D 3;=
=0A	char  *xp =3D &x;=0A\&=0A	g(xp, &xp);=0A}=0A\&=0Aint=0Ag(const char *re=
strict ca, char *restrict *restrict ap)=0A{=0A	return ca > *ap;=0A}=0A.EE=
=0A.P=0AIn this case,=0Acompilers are not smart enough to detect that=0Abot=
h parameters alias each other.=0AHowever,=0Aone could conceive a better com=
piler that would emit a diagnostic=0Asimilar to the one in=0A.IR f.c .=0A.=
=0A.SS strtol(3)=0A.=0AThe standard prototype for=0A.MR strtol 3=0Ais=0A.IP=
=0A.EX=0Along int=0Astrtol(const char *restrict nptr, char **restrict endpt=
r, int base);=0A.EE=0A.P=0A.MR strtol 3=0Aaccepts 4 objects via pointer par=
ameters and global variables.=0AHere's the list,=0Atogether with the access=
 mode of each,=0Aexpressed in terms that mirror those of the GNU access fun=
ction attribute.=0A.IP=0A.TS=0AlI l.=0Anptr	access(read_only)=0Aendptr	acce=
ss(write_only)=0Aerrno	access(read_write)=0A*endptr	access(none)=0A.TE=0A.T=
P=0A.I endptr=0Acannot alias any other object;=0Ait must use=0A.IR restrict=
 .=0A.IP=0AThis qualifier helps catch obvious bugs such as=0A.I \%strtol(p,=
\~p,\~0)=0Aand=0A.IR \%strtol(&p,\~&p,\~0) .=0A.P=0AFor the other parameter=
s,=0Awe need to distinguish between the caller and the callee.=0A.TP=0ACall=
er=0A.RS=0AThe caller may be able to know the access mode of=0A.I nptr=0Avi=
a compiler-specific attributes.=0AHowever, there's no current attribute tha=
t can specify the access mode of=0A.I *endptr=0Anor=0A.IR errno ,=0Aso the =
caller must assume the worst case: read-write.=0A.P=0AThe caller knows that=
=0A.I errno=0Adoesn't alias any of the function arguments.=0A.P=0AThe calle=
r (usually) knows if=0A.I nptr=0Aand=0A.I *endptr=0Aalias each other.=0AHow=
ever, it has no way to know the access mode of the latter,=0Aand so it must=
 assume the object is written to via that alias,=0Awhich is the worst case.=
=0A.P=0AHere's a list of what the caller can assume:=0A.P=0A.TS=0AlI l l.=
=0Anptr	access(read_only)	alias *endptr=0Aendptr	access(write_only)	unique=
=0Aerrno	access(read_write)	unique=0A*endptr	access(read_write)	alias nptr=
=0A.TE=0A.RE=0A.TP=0ACallee=0A.RS=0AThe access modes of every object are kn=
own.=0A.P=0AThe callee knows that=0A.I *endptr=0Ais not accessed.=0A.P=0ATh=
is means, for the callee,=0Athere are only 3 objects to consider:=0A.P=0A.T=
S=0AlI l l.=0Anptr	access(read_only)	may alias errno if not restrict=0Aendp=
tr	access(write_only)	unique=0Aerrno	access(read_write)	may alias nptr if i=
t's not restrict=0A//*endptr	access(none)=0A.TE=0A.P=0ADepending on if=0A.I=
 nptr=0Ais a restricted pointer or not,=0Athe calle will know if it can ali=
as=0A.I errno=0Aor not.=0A.=0A.SS errno=0A.=0AIt might seem that it's a pro=
blem that the callee doesn't know if=0A.I nptr=0Acan alias=0A.I errno=0Aor =
not.=0A.P=0AHowever, the callee will not write to the latter directly=0Aunt=
il it knows it has failed;=0Aat which point it need not read=0A.I nptr=0Aan=
ymore.=0AThis means that the callee cannot apply any optimizations where=0A=
that distinction could be useful.=0A.P=0AStill, the callee can call helper =
functions which are allowed to set=0A.I errno=0Aas long as they don't repor=
t an error.=0AThis might again seem like a reason why=0Athe aliasing inform=
ation would be important.=0A.P=0ABut nothing prohibits those internal helpe=
r functions to specify=0Athat=0A.I nptr=0Ais=0A.I restrict=0Aand thus disti=
nct from=0A.IR errno .=0AThat way, those optimizations can still be perform=
ed,=0Aeven exposing an API that does not use the=0A.I restrict=0Aqualifier =
on=0A.IR nptr .=0A.=0A.SS Analyzer=0A.=0A.I nptr=0Aand=0A.I *endptr=0Awill =
often alias each other.=0AConsider for example the case where two numbers a=
re read from a string:=0A.IP=0A.EX=0Achar  str[] =3D "1 2";=0A\&=0Ap =3D st=
r;=0An =3D strtol(p, &p, 0);=0Am =3D strtol(p, &p, 0);=0A.EE=0A.P=0AAn anal=
yzer more powerful than the current ones=0Acould extend the current=0A.B \-=
Wrestrict=0Adiagnostic=0Ato also diagnose this case.=0A.P=0ATo prevent trig=
gering diagnostics in a powerful analyzer=0Athat would be smart enough to d=
iagnose the example function g(),=0Athe prototype of=0A.MR strtol 3=0Ashoul=
d be changed to=0A.IP=0A.EX=0Along int=0Astrtol(const char *nptr, char **re=
strict endptr, int base);=0A.EE=0A.=0A.=0A.SH Proposal (diff based on C23/N=
3220)=0A.=0A.SS 7.8.2.3p1 [The strtoimax and strtoumax functions]=0A.=0A.EX=
=0A\-intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr=
, int base);=0A+intmax_t strtoimax(const char *nptr, char **restrict endptr=
, int base);=0A.P=0A\-uintmax_t strtoumax(const char * restrict nptr, char =
** restrict endptr, int base);=0A+uintmax_t strtoumax(const char *nptr, cha=
r **restrict endptr, int base);=0A.EE=0A.=0A.SS 7.8.2.4p1 [The wcstoimax an=
d wcstoumax functions]=0A.=0A.EX=0A\-intmax_t wcstoimax(const wchar_t *rest=
rict nptr, wchar_t **restrict endptr, int base);=0A+intmax_t wcstoimax(cons=
t wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-uintmax_t w=
cstoumax(const wchar_t *restrict nptr, wchar_t **restrict endptr, int base)=
;=0A+uintmax_t wcstoumax(const wchar_t *nptr, wchar_t **restrict endptr, in=
t base);=0A.EE=0A.=0A.SS 7.24.1.5p1 [The strtod, strtof, and strtold functi=
ons]=0A.=0A.EX=0A\-double strtod(const char *restrict nptr, char **restrict=
 endptr);=0A+double strtod(const char *nptr, char **restrict endptr);=0A.P=
=0A\-float strtof(const char *restrict nptr, char **restrict endptr);=0A+fl=
oat strtof(const char *nptr, char **restrict endptr);=0A.P=0A\-long double =
strtold(const char *restrict nptr, char **restrict endptr);=0A+long double =
strtold(const char *nptr, char **restrict endptr);=0A.EE=0A.=0A.SS 7.24.1.6=
p1 [The strtodN functions]=0A.=0A.EX=0A\-_Decimal32 strtod32(const char * r=
estrict nptr, char ** restrict endptr);=0A+_Decimal32 strtod32(const char *=
nptr, char **restrict endptr);=0A.P=0A\-_Decimal64 strtod64(const char * re=
strict nptr,char ** restrict endptr);=0A+_Decimal64 strtod64(const char *np=
tr, char **restrict endptr);=0A.P=0A\-_Decimal128 strtod128(const char * re=
strict nptr,char ** restrict endptr);=0A+_Decimal128 strtod128(const char *=
nptr, char **restrict endptr);=0A.EE=0A.=0A.SS 7.24.1.7p1 [The strtol, strt=
oll, strtoul, and strtoull functions]=0A.=0A.EX=0A\-long int strtol(const c=
har *restrict nptr, char **restrict endptr, int base);=0A+long int strtol(c=
onst char *nptr, char **restrict endptr, int base);=0A.P=0A\-long long int =
strtoll(const char *restrict nptr, char **restrict endptr, int base);=0A+lo=
ng long int strtoll(const char *nptr, char **restrict endptr, int base);=0A=
=2EP=0A\-unsigned long int strtoul(const char *restrict nptr, char **restri=
ct endptr, int base);=0A+unsigned long int strtoul(const char *nptr, char *=
*restrict endptr, int base);=0A.P=0A\-unsigned long long int strtoull(const=
 char *restrict nptr, char **restrict endptr, int base);=0A+unsigned long l=
ong int strtoull(const char *nptr, char **restrict endptr, int base);=0A.EE=
=0A.=0A.SS 7.31.4.1.2p1 [The wcstod, wcstof, and wcstold functions]=0A.=0A.=
EX=0A\-double wcstod(const wchar_t * restrict nptr, wchar_t ** restrict end=
ptr);=0A+double wcstod(const wchar_t *nptr, wchar_t **restrict endptr);=0A.=
P=0A\-float wcstof(const wchar_t * restrict nptr, wchar_t ** restrict endpt=
r);=0A+float wcstof(const wchar_t *nptr, wchar_t **restrict endptr);=0A.P=
=0A\-long double wcstold(const wchar_t * restrict nptr, wchar_t ** restrict=
 endptr);=0A+long double wcstold(const wchar_t *nptr, wchar_t **restrict en=
dptr);=0A.EE=0A.=0A.SS 7.31.4.1.3p1 [The wcstodN functions]=0A.=0A.EX=0A\-_=
Decimal32 wcstod32(const wchar_t * restrict nptr, char ** restrict endptr);=
=0A+_Decimal32 wcstod32(const wchar_t *nptr, char **restrict endptr);=0A.P=
=0A\-_Decimal64 wcstod64(const wchar_t * restrict nptr,char ** restrict end=
ptr);=0A+_Decimal64 wcstod64(const wchar_t *nptr, char **restrict endptr);=
=0A.P=0A\-_Decimal128 wcstod128(const wchar_t * restrict nptr,char ** restr=
ict endptr);=0A+_Decimal128 wcstod128(const wchar_t *nptr, char **restrict =
endptr);=0A.EE=0A.=0A.SS 7.31.4.1.4p1 [The wcstol, wcstoll, wcstoul, and wc=
stoull functions]=0A.=0A.EX=0A\-long int wcstol(const wchar_t * restrict np=
tr, wchar_t ** restrict endptr, int base);=0A+long int wcstol(const wchar_t=
 *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-long long int wcstol=
l(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base);=0A+=
long long int wcstoll(const wchar_t *nptr, wchar_t **restrict endptr, int b=
ase);=0A.P=0A\-unsigned long int wcstoul(const wchar_t * restrict nptr, wch=
ar_t ** restrict endptr, int base);=0A+unsigned long int wcstoul(const wcha=
r_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-unsigned long lon=
g int wcstoull(const wchar_t * restrict nptr, wchar_t ** restrict endptr, i=
nt base);=0A+unsigned long long int wcstoull(const wchar_t *nptr, wchar_t *=
*restrict endptr, int base);=0A.EE=0A.=0A.SS B.7 [Format conversion of inte=
ger types <inttypes.h>]=0A.=0A.EX=0A\-intmax_t strtoimax(const char * restr=
ict nptr, char ** restrict endptr, int base);=0A+intmax_t strtoimax(const c=
har *nptr, char **restrict endptr, int base);=0A.P=0A\-uintmax_t strtoumax(=
const char * restrict nptr, char ** restrict endptr, int base);=0A+uintmax_=
t strtoumax(const char *nptr, char **restrict endptr, int base);=0A.P=0A\-i=
ntmax_t wcstoimax(const wchar_t *restrict nptr, wchar_t **restrict endptr, =
int base);=0A+intmax_t wcstoimax(const wchar_t *nptr, wchar_t **restrict en=
dptr, int base);=0A.P=0A\-uintmax_t wcstoumax(const wchar_t *restrict nptr,=
 wchar_t **restrict endptr, int base);=0A+uintmax_t wcstoumax(const wchar_t=
 *nptr, wchar_t **restrict endptr, int base);=0A.EE=0A.=0A.SS B.23 [General=
 utilities <stdlib.h>]=0A.=0A.EX=0A\-double strtod(const char *restrict npt=
r, char **restrict endptr);=0A+double strtod(const char *nptr, char **restr=
ict endptr);=0A.P=0A\-float strtof(const char *restrict nptr, char **restri=
ct endptr);=0A+float strtof(const char *nptr, char **restrict endptr);=0A.P=
=0A\-long double strtold(const char *restrict nptr, char **restrict endptr)=
;=0A+long double strtold(const char *nptr, char **restrict endptr);=0A.P=0A=
\-long int strtol(const char *restrict nptr, char **restrict endptr, int ba=
se);=0A+long int strtol(const char *nptr, char **restrict endptr, int base)=
;=0A.P=0A\-long long int strtoll(const char *restrict nptr, char **restrict=
 endptr, int base);=0A+long long int strtoll(const char *nptr, char **restr=
ict endptr, int base);=0A.P=0A\-unsigned long int strtoul(const char *restr=
ict nptr, char **restrict endptr, int base);=0A+unsigned long int strtoul(c=
onst char *nptr, char **restrict endptr, int base);=0A.P=0A\-unsigned long =
long int strtoull(const char *restrict nptr, char **restrict endptr, int ba=
se);=0A+unsigned long long int strtoull(const char *nptr, char **restrict e=
ndptr, int base);=0A.P=0A\-_Decimal32 strtod32(const char * restrict nptr, =
char ** restrict endptr);=0A+_Decimal32 strtod32(const char *nptr, char **r=
estrict endptr);=0A.P=0A\-_Decimal64 strtod64(const char * restrict nptr, c=
har ** restrict endptr);=0A+_Decimal64 strtod64(const char *nptr, char **re=
strict endptr);=0A.P=0A\-_Decimal128 strtod128(const char * restrict nptr, =
char ** restrict endptr);=0A+_Decimal128 strtod128(const char *nptr, char *=
*restrict endptr);=0A.EE=0A.=0A.SS B.30 [Extended multibyte/wide character =
utilities <wchar.h>]=0A.=0A.EX=0A\-double wcstod(const wchar_t * restrict n=
ptr, wchar_t ** restrict endptr);=0A+double wcstod(const wchar_t *nptr, wch=
ar_t **restrict endptr);=0A.P=0A\-float wcstof(const wchar_t * restrict npt=
r, wchar_t ** restrict endptr);=0A+float wcstof(const wchar_t *nptr, wchar_=
t **restrict endptr);=0A.P=0A\-long double wcstold(const wchar_t * restrict=
 nptr, wchar_t ** restrict endptr);=0A+long double wcstold(const wchar_t *n=
ptr, wchar_t **restrict endptr);=0A.P=0A\-long int wcstol(const wchar_t * r=
estrict nptr, wchar_t ** restrict endptr, int base);=0A+long int wcstol(con=
st wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-long long =
int wcstoll(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int =
base);=0A+long long int wcstoll(const wchar_t *nptr, wchar_t **restrict end=
ptr, int base);=0A.P=0A\-unsigned long int wcstoul(const wchar_t * restrict=
 nptr, wchar_t ** restrict endptr, int base);=0A+unsigned long int wcstoul(=
const wchar_t *nptr, wchar_t **restrict endptr, int base);=0A.P=0A\-unsigne=
d long long int wcstoull(const wchar_t * restrict nptr, wchar_t ** restrict=
 endptr, int base);=0A+unsigned long long int wcstoull(const wchar_t *nptr,=
 wchar_t **restrict endptr, int base);=0A.P=0A\-_Decimal32 wcstod32(const w=
char_t * restrict nptr, wchar_t ** restrict endptr);=0A+_Decimal32 wcstod32=
(const wchar_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-_Decimal64 wcsto=
d64(const wchar_t * restrict nptr, wchar_t ** restrict endptr);=0A+_Decimal=
64 wcstod64(const wchar_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-_Deci=
mal128 wcstod128(const wchar_t * restrict nptr, wchar_t ** restrict endptr)=
;=0A+_Decimal128 wcstod128(const wchar_t *nptr, wchar_t **restrict endptr);=
=0A.EE=0A.=0A.SS H.12.3p2 [String to floating]=0A.=0A.EX=0A\-_FloatN strtof=
N(const char * restrict nptr, char ** restrict endptr);=0A+_FloatN strtofN(=
const char *nptr, char **restrict endptr);=0A.P=0A\-_FloatNx strtofNx(const=
 char * restrict nptr, char ** restrict endptr);=0A+_FloatNx strtofNx(const=
 char *nptr, char **restrict endptr);=0A.P=0A\-_FloatN wcstofN(const wchar_=
t * restrict nptr, wchar_t ** restrict endptr);=0A+_FloatN wcstofN(const wc=
har_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-_FloatNx wcstofNx(const w=
char_t * restrict nptr, wchar_t ** restrict endptr);=0A+_FloatNx wcstofNx(c=
onst wchar_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-_DecimalN strtodN(=
const char * restrict nptr, char ** restrict endptr);=0A+_DecimalN strtodN(=
const char *nptr, char **restrict endptr);=0A.P=0A\-_DecimalNx strtodNx(con=
st char * restrict nptr, char ** restrict endptr);=0A+_DecimalNx strtodNx(c=
onst char *nptr, char **restrict endptr);=0A.P=0A\-_DecimalN wcstodN(const =
wchar_t * restrict nptr, wchar_t ** restrict endptr);=0A+_DecimalN wcstodN(=
const wchar_t *nptr, wchar_t **restrict endptr);=0A.P=0A\-_DecimalNx wcstod=
Nx(const wchar_t * restrict nptr, wchar_t ** restrict endptr);=0A+_DecimalN=
x wcstodNx(const wchar_t *nptr, wchar_t **restrict endptr);=0A.EE=0A.=0A.SS=
 H.12.5.2p1 [The strtoencfN functions]=0A.=0A.EX=0A\-void strtoencfN(unsign=
ed char encptr[restrict static N/8], const char * restrict nptr, char ** re=
strict endptr);=0A+void strtoencfN(unsigned char encptr[restrict static N/8=
], const char *nptr, char **restrict endptr);=0A.EE=0A.=0A.SS H.12.5.3p1 [T=
he wcstoencfN functions]=0A.=0A.EX=0A\-void wcstoencfN(unsigned char encptr=
[restrict static N/8], const wchar_t * restrict nptr, wchar_t ** restrict e=
ndptr);=0A+void wcstoencfN(unsigned char encptr[restrict static N/8], const=
 wchar_t *nptr, wchar_t **restrict endptr);=0A.EE=0A.=0A.SS H.12.5.4p1 [The=
 strtoencdecdN and strtoencbindN functions]=0A.=0A.EX=0A\-void strtoencdecd=
N(unsigned char encptr[restrict static N/8], const char * restrict nptr, ch=
ar ** restrict endptr);=0A+void strtoencdecdN(unsigned char encptr[restrict=
 static N/8], const char *nptr, char **restrict endptr);=0A.P=0A\-void strt=
oencbindN(unsigned char encptr[restrict static N/8], const char * restrict =
nptr, char ** restrict endptr);=0A+void strtoencbindN(unsigned char encptr[=
restrict static N/8], const char *nptr, char **restrict endptr);=0A.EE=0A.=
=0A.SS H.12.5.5p1 [The wcstoencdecdN and wcstoencbindN functions]=0A.=0A.EX=
=0A\-void wcstoencdecdN(unsigned char encptr[restrict static N/8], const wc=
har_t *nptr, wchar_t **restrict endptr);=0A+void wcstoencdecdN(unsigned cha=
r encptr[restrict static N/8], const wchar_t *nptr, wchar_t **restrict endp=
tr);=0A.P=0A\-void wcstoencbindN(unsigned char encptr[restrict static N/8],=
 const wchar_t *nptr, wchar_t **restrict endptr);=0A+void wcstoencbindN(uns=
igned char encptr[restrict static N/8], const wchar_t *nptr, wchar_t **rest=
rict endptr);=0A.EE=0A
--76mjfc74mjfmswrj
Content-Type: application/pdf
Content-Disposition: attachment; filename="strtol.pdf"
Content-Transfer-Encoding: base64

JVBERi0xLjcKJeLjz9MKMyAwIG9iaiA8PCAvQW5ub3RzIFs3IDAgUiAgOCAwIFIgIDkgMCBS
ICAxMCAwIFIgIDExIDAgUiAgMTIgMCBSICAxMyAwIFIgIDE0IDAgUiAgMTUgMCBSICAxNiAw
IFIgIDE3IDAgUiAgMTggMCBSICAxOSAwIFIgIDIwIDAgUiAgMjEgMCBSICAyMiAwIFIgIDIz
IDAgUiAgXQovQ29udGVudHMgWzQgMCBSICBdCi9Hcm91cCA8PCAvQ1MgL0RldmljZVJHQgov
UyAvVHJhbnNwYXJlbmN5Cj4+Ci9QYXJlbnQgMiAwIFIKL1R5cGUgL1BhZ2UKPj4KZW5kb2Jq
CjQgMCBvYmogPDwgL0ZpbHRlciAvRmxhdGVEZWNvZGUKL0xlbmd0aCAyMzE2Cj4+CnN0cmVh
bQp4nJVabW/bOBL+nl9B7IeNE0RaUe/u4g5Is71ug9tFd89FD7jcB8amHbWy6EpyE99hgd4/
v+GbTFGUrW0Rxxw+mhnOG4dUviCMAvgvP5fbC4zu4efTReDH6PniC3q9uOgQfhAEKJuH4vdi
ewEfy4ss9LOAAxarDqloWTzvQQO0uXizQL/Bl7di0GM/8tAPf4tyhOHr+kIqsHhG/0KzX1/g
39W/0eIeEIkDgB5mH9/i+OFKg1xsvChOczn+0xy9wLlwYSOc9xcuRlOQoGYKov15oqVjJf0f
h4rtmqJBUnoc+QlO+zwxTgTRZuqF+RCcZ1KBID2n6ghSqWpZCc0WV0jJnxVtSZW+YehHocUY
B3NBtDl72AGeSy3SeXxO39NIP0r4Zwrf6814WMgFNG3dsvJEUHgJlsiHWaQDI4r8NLKXCkQc
OZSCLDBjjLaIlD5qnti+XFWXR1O26IlcoVDF6leYSORXigiqKShaLFu6Qt/qpkU7UpMtbWl9
hRIF81XQxqnQw+XgNMv8cFIo2MixULgF+UrjffvEatQZCGPbQLA0TrRZe6EDrD2cJucUPo20
Y8GV9bcl/USqVc3QHSvZltToFka0kUvBQe7nmSU0DBJBHEi1nP0j2pKiauGH1oitUfuksyUD
L9lLCXPsz11cXWsxxfy9qPYvIKrydmRDG7Sr2Se6bKWk+dyf55akiEtKzuuvYyqEoOZ4Z6jE
uR9PCyoL6Q6q2fv6mBRsxxpSoiVp6YbVB228uR/a2uA0FURbiJc6wDpootRSyBUfr/cb9O1F
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
/kR5vj/yDT1C+/pRZBT7GNntqAbdmmafYyb1bwv4nhkNbxpzcw2c6ru3JhHa69Hw+tMX6Xl9
P4f0ftvp3ErMvmRb09UxkcuKOvNMCHOjw5sL5Fff/2x9aS4zqELkbJrO5aSuUd6EDG7ix7hW
g3Qu014SWFRUbj1gnabbt/rC8gq5QNz+bfyoE9WZmHXDreVj7cajyBS71o+eKp9yQ4iCz3qh
5f0wGMaV2gsnIkM/Ys+q8knw/Ch4ySXiWvP3S+8ZkYynpj6RnusFjhs7bqgR7oaRvRHxLNPb
ZUZ+nYjLfH0PPy1+WvwNBjTgx2VuZHN0cmVhbQplbmRvYmoKMjkgMCBvYmogPDwgL0NvbnRl
bnRzIFszMCAwIFIgIF0KL0dyb3VwIDw8IC9DUyAvRGV2aWNlUkdCCi9TIC9UcmFuc3BhcmVu
Y3kKPj4KL1BhcmVudCAyIDAgUgovVHlwZSAvUGFnZQo+PgplbmRvYmoKMzAgMCBvYmogPDwg
L0ZpbHRlciAvRmxhdGVEZWNvZGUKL0xlbmd0aCAyMzY2Cj4+CnN0cmVhbQp4nL1aS4/cNhK+
z59YIodsz2Ja1vthIwfHu3kdFgkyQA6ZIOBI7GkmaqotSu5MTvnpKVKkRKr18nixcWwMRYos
1uOrr0rzHnnIhT/dv/npxkPfwd/fblwnRJcbF3198x59eX+jV0Wh67gu/Cz/vT/Biif4e5/f
7MM4cQIxhe6Lfn3iOwk8S8JseAEWv/oqSJEHPx5u1E4X9DPa/fcP+O/2F3T/HayIJhagh91P
X3vhw61eNLXNPgjjtBt/9I6xe30HLwjkC4mXbrnEvwgrzk29cOjei1wlH85zwvnDjlWMaBn2
QeSk3kiILHG8DGRwPcdfl0GJgPZJJ7rcd2pbfbc4zUb7Tikrx4xVDcIlxRxhdou8qLvGM6qa
I6lR9fgbyZs3iDbo1PIGtZwsWWqHQMYg6fYgvKlp3izpLe4MsHO6RcoVJ+8Djhca9zEPvT9S
jt63cIu/QOQjKc8c5bjJjyD+cKUPtGo5gge+MlX7xBFvYRXmy3eCezRV+bA73yH43x2c1bhS
3K/GrNi23eew2eezGw46slS0D+JrJWWdxuMocuJpHaHdV4MmqhqBcZWFz7jGJ9KQmt+hC0GM
kAI1FSoobyh7aik/okfSXAhh8qUclyW8BZcchmTefFqyIHXSK8m2r+w0906e3Z01pYbeV9ZP
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
H+7dZO9GIqLcKFZwEHRnLvwaGRzzn3v0w80PN38Dx0ExFGVuZHN0cmVhbQplbmRvYmoKMzEg
MCBvYmogPDwgL0Fubm90cyBbMzMgMCBSICBdCi9Db250ZW50cyBbMzIgMCBSICBdCi9Hcm91
cCA8PCAvQ1MgL0RldmljZVJHQgovUyAvVHJhbnNwYXJlbmN5Cj4+Ci9QYXJlbnQgMiAwIFIK
L1R5cGUgL1BhZ2UKPj4KZW5kb2JqCjMyIDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2Rl
Ci9MZW5ndGggMTI5Mwo+PgpzdHJlYW0KeJy9Wdty2kgQfecn3I9gLGVuutW+bXY3VXlwJVVU
7UNIpWQksLZkieiyOPv127oBGmaECCZ2AdK43X36dJ/RzPAdKBD8bd5XLxMKH/H1z4SYAnYT
Ah8m3+H3xaSzsgQxCcHr+n3xghYbfC1WE0PYjsmrP8Ei2Ns7zHRwzBHe4R/Q+N1f3AWKl+tJ
62kHX2D6+Io/s6+w+IgWlsIAltO/P1CxnHVGKjcGF7bb3F/skYnTHDyntneo28vh2EsQ+Zsk
zUMonqMcVn4emo2/li2VO0JN1nMnCG/cwXQxgy6DFLZZOANmNbf/zoC2l2FSQJFFm02YRckG
WgxFtMohSsCHbXr4t12YrcsY/MSPf/wXZojTL2CHvrooZRzAUwj5i58VECZpuXmGIoWjxEII
D7Ff/ZdtHJ7L0XY9KccDZesyWRVRmsBmOV3OHuoA2ywt0uLHNoR0DY1ziqy7juSeIYxqUO2f
mNyq3m28zjb6JmkyyYusSOOBFjEs2lgup7xrE85Nm8ugLKZOulLIUeL5c0f26tlPNmGAPDde
DUq9Uy4pBqv9opZET0O2op/jFFshSgptafbubNJz14NYc7KcrtIkLyqYGdwn2yJ7aK/vsxBN
olXVKUE9jhHhCdt+OfutzcWmp7GdliHB6+JIZRthibWskjY9q8ubtpA/Zdicjuk5HJt5m+Z+
jMoOovW6hhUANtp7xt89csbIctY1l+2aNpPriFNcNSjHNqjFT63dttM5PZeSxrJNSa6jY7om
M/mWwpcFKqOuSPTiv6KEg+aurO46FeVf25QYtU1PSKE54fWgHNtgRGHdiRebsQ9UhfMOK49A
vhUHiP2+gX2v9DoIzrfQwLxCHAXbDaD5OUAXNrIeheWq2rilpezDKH8JL5aj6sKWl7OILlU4
1Te5ZQnTHSUH2XJQDqKTw26VH8mhvtPIAR/ojqxZTmk9KMc2GFVYd9wKJgEdlsMeYkfyrmIW
/3AvFX4/fl0zcqJgXJaEHtSbYsFZRYflSBj7sv0ahoSn6skTcehRXQ5mSCLCUS0nx1hqJYK9
Tk2r98gIHprP9WHp9nB4hOAyRKEY9EFPHiBuPShDQcUorDvCbVvCrVRMkJZPcQe3PyOpp0iJ
9zGlt4R26T4fiH9tWE60Ye/Wceq3U/H6RlkPbFjm+vBXRuWenuu7enV6THh8o4pzl+lzP4ti
VPAhcXPbUm1MRlgOi9vui/vxVL5U4JJWFiTjVj0oBzMoV1h3FOJyt49MKd9vf4QrfKLEnLWg
OPuphc6Yogp5y3xU1LM4ru0o3F3ogu9JsEUb3BaDJFzBAVF1lsSBFsaVHDBXX4A9B5S5bXS8
uhELzNYfLMxHALla4NVm/3T3PMZyWOBOT+Bx+/SOu4syPnp6l3GseHxb6OlkwStEPShjMZhQ
WHccCzLivOGuO3AA1aHBqOn8olUcY6722GI+iOXtIBChhdDQIeG4OSnUU3XjMSnDiN4OiK2v
zl2Z5NEmCQMJTHl7eixbT89IVG8HhutrJVEkI7o9UUx/Jji/CNsbniVQcva0UGOpnWo5NavJ
lvWOE4KH5vNkq1SPKrdK1UmhK8+1zKkHZTAG4wrrlnhPPhMc2ik1aE+2p/I667BR/YkHrOPp
D5KGYZzZJR9K3n410YveHvtyeeOo+ubmU9ae867TDN6zHzMwqGDdsT4jTBjEMYiF44xYdpPX
VLTLZNB+n4UB/1zA58nnyf/OKyzLZW5kc3RyZWFtCmVuZG9iagozNCAwIG9iaiA8PCAvQ29u
dGVudHMgWzM1IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFy
ZW5jeQo+PgovUGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagozNSAwIG9iaiA8
PCAvRmlsdGVyIC9GbGF0ZURlY29kZQovTGVuZ3RoIDEwMDEKPj4Kc3RyZWFtCnicvZnbbpxI
EIbveQnX5czGsN1Nc1KivXB2YykX0UYaaS/sKBoPjE3EgA3M2n77FNBzoN3NwXOwNTaHMvX1
X9V/A34CCgS/m5+LlUHhK35+GcTi8GwQuDae4GpmbKIcTixCcLv+OVthxD1+ZgvD5K5n2dUp
mIXbeI9ZHh7zeLD7Awz+84vtA8XNpSGu9Aw3MPn2gl/THzD7ihGOIgBuJ/9dU3473QSpLmPa
3PWb/dFXZPztGAKvjveoL43BVVzvYplk8xKeF0WZLW8niywtqr2Hef6zhD8gj4oyjxclpI9l
frk7sXcmSkM8dzv92BAJvVVAxG0B7WN86MSQk4/P7fpMm/siydJ7CLP1XRI1BEl4WiVcj+iV
GEIzVBCTKiB8AeHYFnsDMSQS21jVSjidqMUtatmPFG5mDwI//AbLdbooYxzCD2i4qKvIxrg6
nUmdDik5ldiUXf7z72gRr+aJzQSUzXpLXB1/Z31ZoJBW1HcISgvgHfmJo82/lcLlIr/L+6R4
vxJOoGoySYkukgOVcFx9JbZKUOYLANw6oRaO169FN8sgNbomfbUe8kGTXo7sm/S8NemTS/F7
s7HGjXkabnaSt57AcA3ETxvGxkW6OijTmMxTRG+EZr6ErvSE2mjjVKw6yQGWf1lf5m5eREPa
gLqKEuybfwdTj/GPAuEB04I04kg0Z5OI+6ou3Zeol+yoQjn6il2s0yK+T6NQQlqfTyzO9WIN
pzuqYExfP0kwmet8shF/qGz9jOPF6zJpO6CWO8ik5UiNSV9ZHtx8mQJzmqeMLF/hzTaOYQri
+Wjy/xQE0STKC/RlyJYVdXQf5VC+PkYFfMLdest6+Gtr2nin4wWyaaPDVQdlOpNRRbSoh+0F
0lCUpo0Mq/kLiowClxmumC+bYjSr4sCbuFGtUi1Cb+shWqUPqGvJHkfBbS3FxbqNsT6PLraq
TzdTqI/oeMIQfXl2/VLP3f3ybGer1l8OgWKBM6Bn9FBHZfH0ddrrnMbdzqeQEwzpHj3VcU2X
cWb5g0xXjtSaLrPh5jpKo3yewLqMk7iMKxstyjCJ73bWu2enFNfyQE7LcJoFirwmtRXRG3Vt
IkEq7VS8Z6inaNien2rDGP/Yw6ivEFbUuSP/gWlpwLVpxUuvOuvyNKOmvqqdWi+7VOkPzero
tW695qpzJyeqOOWufuy9FIcmZ3rhd498TeZ3DH+UxVFKeoTQsRwNwdeXQnrGazBOromnn5Yf
BgCN5DDFLW+LxGPitq71Elb9vv3fPHvMCjTwZZbDZ/Y6BZNyhsZbWzcjjJvEM4mDxxlx3GaM
E0fYOWj/C4EJ/5nBd+O78Rtfm9KtZW5kc3RyZWFtCmVuZG9iagozNiAwIG9iaiA8PCAvQ29u
dGVudHMgWzM3IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFy
ZW5jeQo+PgovUGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagozNyAwIG9iaiA8
PCAvRmlsdGVyIC9GbGF0ZURlY29kZQovTGVuZ3RoIDg3NAo+PgpzdHJlYW0KeJy9mMtu2kAU
hvd+Cc4SSu3MzWOjVl2kTVplgRoVqYsQRcSYxJXBCRhBdn30Dr5wsWfMUOwkgjjDweeb/3jO
/PYrYEDiN333pgaGG/H6YyCLwcpA8N14hcuBkUfZDFkIiePkfTAVEU/iNfAMk3HHopuPYDDe
xjvEcsSYw3q7L4jgi2vqAhaHEyM70wruoN1fi5/OPQxuRIQtCYBh+/d3zIadPEh2GpMy7qb/
n3xGwspz6DlJvIPdwhy45Hyt5WwRPM38MYTR7AmCWQyLeB5Hy3DY9qLZIgbveTSHD3NfDAde
DLOXeP4xG9yN+rNxMr75/uNo4Q87n1LATH4ZH+IHfPtUXU2q2mC4S5QwBYmKRI0LxR2kK9QR
tvqQmLp2rYdvvhdMRyElKcaYkkMMkGsEBSIdDsrU0hzlqJJDJzlW12UrAmdZcs6aEsHuucdF
UHKcKYLtqCuwFQETN8sujhqTgauXcFeDREsIE0sA3AyA2RYpAehEin1B1psvRW+Hu6t1LCDE
Cp8uwzh4fIv9i1Uw9hPSkRf7c1jGQRjEgb+Az6vNaEecK9tPrOcv95BtFZxamBeAqI2SwSKR
SWxJdK40pQV86c4yjpaPoQ8rbyHkzrVOAB/icuG3H/xX7QmWSJ/VvpqjmP305Ez8VSVvTcJo
FKe5J81qwFzZ5ZdpUIlRgwRcrX8r2ZT2ixA2fDUw4d6USujQ1CAIURejtd2l0/xniHHSps0w
PSJLBdMRSU4Coa66Pq1DH5PSvJtE1FEv5a4eWa1C2eqKSYx7grR8P7FYRdPVp6tVMFzRihVW
OeN6P9lQRZ8+lbFO8Yhb0cT3zHS6ke7MdDNNnPCKJq5Dc34TJ1JDVzb4KcLOWDckCK1o3zo0
NQiCKhr3vsVOGfYsdjOS4Arn1dXj0RWlyvhjF1mshKETqTD+PyxMLPpC4O6XgBE9II7grzBw
4jB385gQi9BClqQ+tJzGxFgSnYvI3QKT1M0/XG8sZD+9e5r0m7qLwzaXaJmXtIrhzBtZTIky
cT75dZ553dj0iexSOpy+iuJMAXpq4bfFT28g+s2uapcdvwJUINrLWfjzUn4nfYBAD59tyZ/D
/pxHL9FiFMIkmsNX8tYBEzOSPY5qE0SYiRwT2WKcIJunM2vzbPGC8um0SHg1gFvj1vgHNG5b
BWVuZHN0cmVhbQplbmRvYmoKMzggMCBvYmogPDwgL0NvbnRlbnRzIFszOSAwIFIgIF0KL0dy
b3VwIDw8IC9DUyAvRGV2aWNlUkdCCi9TIC9UcmFuc3BhcmVuY3kKPj4KL1BhcmVudCAyIDAg
UgovVHlwZSAvUGFnZQo+PgplbmRvYmoKMzkgMCBvYmogPDwgL0ZpbHRlciAvRmxhdGVEZWNv
ZGUKL0xlbmd0aCA3NjUKPj4Kc3RyZWFtCniczZhLT9tAFIX3/hPcZVJqM0/bUXd9QMXCKpKl
LghCqe2AK7AhMSX99734gZPxTGLyqAAlSsY3ns9nzj2Z+BEoEPyvnqN7i8I5Pn5bxBHwbBE4
sx7hc2g1VVIQhxB8XT6H91hxg48wsmzheg5/OQRh/FrvMcfDMU+M2g9g8ckp94Hiy6lVn+kZ
LmEQLPBveAXhOVZITQGMBz/PqBgPmyLdaWwuXL96/+YzMtG9hpFX1nvUV67B1Zzv6Pr0Lp8U
wQKeo3mRT4PFeBDl2bzA97eT2XUBH2CWzItZGhWQPRSzj+2BpSNJFuOx8fBThVWLrqMi7grV
MsvxZhaV4O0Ars+MAEfXX5MovZ/cBYCnLfI4aABeJuwqUY1uI4PrkTUyrKdYmXuLqYV5BVoB
Fs3ci4NJwEUPCUwcu4pAzfovuaD0Yav/YVpCjvw+XjCx7N4S0jOvxLIjaoIDJ4R0zQ163Iem
ryA21UD4NYSQDutA9KnEjNfl7HeHMgcrHyhchrdJ5eoki6YBTJ+yqEjxGq6gAqMud1x1OiZJ
OajOZ1OpqW605FyB034H/MnTeIloPHjK5ulNlsRVg+Eg6nb5quO8mBRpBMGJf4UteJBwkIxq
9K9NsC/cXhmy1iVEOKKfS5TK9S7hjUtKjxtd4jli1HGJKAfV+dAlmupabDFiCpzZJS3RFrIf
JjAEbp66q7Dslf1A7yNXRN3amx2jVq53jFBzJU6iOIBJ1jbKrzSLNTZiGLdSZeC4/5UaCJtJ
TXWzDpIqxJvDpsR8B3kj+EizLrq82Y14x22LoNKIuSpsudrvQViiM7xO2N2Id85y7ruO36sz
1cr1nSnVLG87sxkxdSb+RmC+2pmY4y+DKoTNXE11vQgcN3irxJsDfluf73FfyjGaukuiC/b3
AMt9I+yqstsafZ+wTGd2nbL/DRa/Wrq4HquNoNzJ0N0Z+THLH/L55A6m+Qy+sL9DsKlg9Y/M
ASNM2MSzicRxRqRbCTHw6s0UGO8X4YTfQriwLqx/aMQfEWVuZHN0cmVhbQplbmRvYmoKNzEg
MCBvYmogPDwgL0NyZWF0aW9uRGF0ZSAoRDoyMDI0MDcwNzAzNTIxMyswMicwMCcpCi9DcmVh
dG9yIChncm9mZiB2ZXJzaW9uIDEuMjMuMC4xMzM4LWRhY2MpCi9Nb2REYXRlIChEOjIwMjQw
NzA3MDM1MjEzKzAyJzAwJykKL1Byb2R1Y2VyIChncm9wZGYgdmVyc2lvbiAxLjIzLjAuMTMz
OC1kYWNjKQo+PgplbmRvYmoKMSAwIG9iaiA8PCAvRGVzdHMgNSAwIFIgCi9PdXRsaW5lcyA0
MCAwIFIgCi9QYWdlTW9kZSAvVXNlT3V0bGluZXMKL1BhZ2VzIDIgMCBSIAovVHlwZSAvQ2F0
YWxvZwo+PgplbmRvYmoKMiAwIG9iaiA8PCAvQ291bnQgNwovS2lkcyBbMyAwIFIgIDI0IDAg
UiAgMjkgMCBSICAzMSAwIFIgIDM0IDAgUiAgMzYgMCBSICAzOCAwIFIgIF0KL01lZGlhQm94
IFswIDAgNjEyIDc5MiBdCi9SZXNvdXJjZXMgPDwgL0ZvbnQgPDwgL0YzNiA3MiAwIFIgCi9G
MzggNzUgMCBSIAovRjUgNzggMCBSIAovRjYgODEgMCBSIAovRjggODQgMCBSIAo+PgovUHJv
Y1NldCBbL1BERiAvVGV4dCAvSW1hZ2VCIC9JbWFnZUMgL0ltYWdlSSBdCj4+Ci9Sb3RhdGUg
MAovVHlwZSAvUGFnZXMKPj4KZW5kb2JqCjYgMCBvYmogPDwgL0ZpbHRlciAvRmxhdGVEZWNv
ZGUKL0xlbmd0aCAyMjEKPj4Kc3RyZWFtCnicXZDPasMwDMbvfgodu0Nxk3MIjJZCDvvD0j2A
Y8vB0MhGcQ55+ylem8EEtvn49BOfpc/dpaOQQX9ytD1m8IEc4xwXtggDjoFUVYMLNj9Uue1k
ktIC9+uccerIR9U0oL/EnDOvcHh1ccAXpT/YIQca4fB97kX3S0p3nJAynFTbgkMvg95MejcT
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
OAolJUVPRgo=

--76mjfc74mjfmswrj--

--2anfwxodmtgnxltu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaJ9lAACgkQnowa+77/
2zIu4A//Wk6+Qaa8ZVYfYogX8uDRhnx66MUVVax6RrX16xX6BLXUGfwrb/WrvMz4
QHSyAo/7soAfZ33+2w/A/ty91SDz1nG/JBk2Oq1M29Dnu7DmDYR/RXs+yOSU/MNV
yYFNoTQZYo9MfrzNScFb3F6RDxpn4kDUUEErJHhl2jMC+eHDYcLrt63+JqYAWPdR
0p8LhazzVGDMnKxnXqte/POu8B1lI83YbgSHJUFoYKDXBMso7cBisqMwEpquzEyr
WYHmcppwwVi+sV4o/hU4k6XS9g1xAsMPXJRRmZTGrdNR01/bNt+3/nPYYqhcQdsW
PYeyl/KfaV7Q4HtsalmsU0ys6SvWOCW6ABZfNRJOunW3Sc+QhHy5KwxSTgbD6Vva
IuafJAAenBAr2J4ai1ME9yejejh4bdmXF11Vjnobe1589cmAA3WA4SWLrLKxwj11
vm/aDsvwM2/+23iSWv6JoSOTDpx+xla6MOe02k1nPaTeEtgON+KDmPNIdXylt7NU
STgBEapKn7bEOt8SprwiSjp2co8+Hq+3R6iL6ArahfLNThuSK/FFeQi5tpYC1fXk
YwXCypnuJXs7heszp4JkpP6/MJ1hqrZqunmoFfYUU/Q2vqO/JL0Ayn1nKQ7P7jrg
pm5u/Xdq8HuE5S7QpL0rTZEgf6nMuLJZTLPF4AMk9Nj0Fllb15A=
=ML1u
-----END PGP SIGNATURE-----

--2anfwxodmtgnxltu--

