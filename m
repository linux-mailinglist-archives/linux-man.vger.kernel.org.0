Return-Path: <linux-man+bounces-1319-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F4928BBA
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF7C11C211A0
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55E016B3B9;
	Fri,  5 Jul 2024 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="f771QUID"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4344A18AF4
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720193596; cv=none; b=WPySs6wceEr+Sh0QQen95M8EUsgmqltllj3lXCUgBVfLxtnLeFJZgu+drkvGv/2rulWIscfmF8wMhXrWSLdDUmKzex0RYIusfxEY8kNinhTySKhUxTHptRLc+LxoPpyhzjIh44D2Gih5m29HN34zkM1rfAGtngygyl/j4oZelDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720193596; c=relaxed/simple;
	bh=ryABbuAowmrWg2Brby8kAj+sHmIhmCiGA2IO7iAGniw=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JO6LkNrOjt0M0qjrLZDWFYHhJpNUeF7N1lTSPR7Stftsm1drD/XZv1/ODn4fJoZVBtSKPZobgUTsHGQ1c+LmUYMqKQ1Lv7zKTPlrqDvasV6zaiqUbtQcRPkANB6lv4w7AE80BAlvJ/6TJB+lUWgxqWFm+hYykR3ppfwbraR4sfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=f771QUID; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=AOTGJnAGT+5AQVo/au3XFlXkVSJzJCgjfLo7nyE3Fx8=; b=f771QUIDm7wjU1hknMqMpqOdl2
	aEx0y7B6pxf7cqQe54jeINS2XD8rbZ50XOzbWIYbvPEwzHd5sMd1VOlVJws0FPcLgjXmcWVY3bHN3
	9MxiQYqI2ySxDB42lPLsJb+rejDV0tabvHe/w+vsaqQ63B/lwLSpSj1Wp1sxAoauowU1LKSzDTM+i
	J5a+E7pMWxULM/g+qzFdKXrZd2oGCYX3fuxut1GKDnomfkE6fBQ8wgoCgCTatwzdBXwrhpGr4QyR/
	XMFifngPZejFWQq6JFhb9Z2j3W8dWt4XAeCXbDt8Sy1lUWOjuAtSQp+clAckiTYjo8aYHY5C7W0Wt
	kj3ICccA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:39884)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPkS1-002Eqp-06;
	Fri, 05 Jul 2024 17:02:17 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPkS0-000JI9-32;
	Fri, 05 Jul 2024 17:02:16 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 5 Jul
 2024 17:02:16 +0200
Message-ID: <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>, Xi Ruoyao <xry111@xry111.site>, Jakub
 Jelinek <jakub@redhat.com>
CC: <libc-alpha@sourceware.org>, <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>
Date: Fri, 5 Jul 2024 17:02:15 +0200
In-Reply-To: <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-FMZ-08.um.gwdg.de (10.108.142.67) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 05.07.2024 um 16:37 +0200 schrieb Alejandro Colomar via Gcc=
:
> [CC +=3D linux-man@, since we're discussing an API documented there, and
>  the manual page would also need to be updated]
>=20
> Hi Xi,  Jakub,
>=20
> On Fri, Jul 05, 2024 at 09:38:21PM GMT, Xi Ruoyao wrote:
> > On Fri, 2024-07-05 at 15:03 +0200, Alejandro Colomar wrote:
> > > ISO C specifies these APIs as accepting a restricted pointer in their
> > > first parameter:
> > >=20
> > > $ stdc c99 strtol
> > > long int strtol(const char *restrict nptr, char **restrict endptr, in=
t base);
> > > $ stdc c11 strtol
> > > long int strtol(const char *restrict nptr, char **restrict endptr, in=
t base);
> > >=20
> > > However, it should be considered a defect in ISO C.=C2=A0 It's common=
 to see
> > > code that aliases it:
> > >=20
> > > 	char str[] =3D "10 20";
> > >=20
> > > 	p =3D str;
> > > 	a =3D strtol(p, &p, 0);=C2=A0 // Let's ignore error handling for
> > > 	b =3D strtol(p, &p, 0);=C2=A0 // simplicity.
> >=20
> > Why this is wrong?
> >=20
> > During the execution of strtol() the only expression accessing the
> > object "p" is *endptr.  When the body of strtol() refers "nptr" it
> > accesses a different object, not "p".
>=20
> <http://port70.net/~nsz/c/c11/n1570.html#6.7.3p8>
>=20
> Theoretically, 'restrict' is defined in terms of accesses, not just
> references, so it's fine for strtol(3) to hold two references of p in
> restrict pointers.  That is, the following code is valid:
>=20
> 	int
> 	dumb(int *restrict a, int *restrict also_a)
> 	{
> 		// We don't access the objects
> 		return a =3D=3D also_a;
> 	}
>=20
> 	int
> 	main(void)
> 	{
> 		int x =3D 3;
>=20
> 		return dumb(&x, &x);
> 	}
>=20
> However, in practice that's dumb.  The caller cannot know that the
> function doesn't access the object, so it must be cautious and enable
> -Wrestrict, which should be paranoid and do not allow passing references
> to the same object in different arguments, just in case the function
> decides to access to objects.  Of course, GCC reports a diagnostic for
> the previous code:
>=20
> 	$ cc -Wall -Wextra dumb.c=20
> 	dumb.c: In function =E2=80=98main=E2=80=99:
> 	dumb.c:13:21: warning: passing argument 1 to =E2=80=98restrict=E2=80=99-=
qualified parameter aliases with argument 2 [-Wrestrict]
> 	   13 |         return dumb(&x, &x);
> 	      |                     ^~  ~~
>=20
> ... even when there's no UB, since the object is not being accessed.
>=20
> But when the thing gets non-trivial, as in strtol(3), GCC misses the
> -Wrestrict diagnostic, as reported in
> <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833>.
>=20
> Let's write a reproducer by altering the dumb.c program from above, with
> just another reference:
>=20
> 	int
> 	dumb2(int *restrict a, int *restrict *restrict ap)
> 	{
> 		// We don't access the objects
> 		return a =3D=3D *ap;
> 	}
>=20
> 	int
> 	main(void)
> 	{
> 		int x =3D 3;
> 		int *xp =3D &x;
>=20
> 		return dumb2(&x, &xp);
> 	}
>=20
> GCC doesn't report anything bad here, even though it's basically the
> same as the program from above:
>=20
> 	$ cc -Wall -Wextra dumb2.c
> 	$

strtol does have  a "char * restrict * restrict" though, so the
situation is different.   A "char **" and a "const char *"
shouldn't alias anyway.=20


>=20
> Again, there's no UB, but we really want to be cautious and get a
> diagnostic as callers, just in case the callee decides to access the
> object; we never know.
>=20
> So, GCC should be patched to report a warning in the program above.
> That will also cause strtol(3) to start issuing warnings in use cases
> like the one I showed.
>=20
> Even further, let's try something really weird: inequality comparison,
> which is only defined for pointers to the same array object:
>=20
> 	int
> 	dumb3(int *restrict a, int *restrict *restrict ap)
> 	{
> 		// We don't access the objects
> 		return a > *ap;
> 	}
>=20
> 	int
> 	main(void)
> 	{
> 		int x =3D 3;
> 		int *xp =3D &x;
>=20
> 		return dumb3(&x, &xp);
> 	}
>=20
> The behavior is still defined, since the obnjects are not accessed, but
> the compiler should really warn, on both sides:
>=20
> -  The caller is passing references to the same object in restricted
>    parameters, which is a red flag.
>=20
> -  The callee is comparing for inequality pointers that should, under
>    normal circumstances, cause Undefined Behavior.
>=20
>=20
> > And if this is really wrong you should report it to WG14 before changin=
g
> > glibc.
>=20
> Well, I don't know how to report that defect to WG14.  If you help me,
> I'll be pleased to do so.  Do they have a public mailing list or
> anything like that?

One can submit clarification or change requests:

https://www.open-std.org/jtc1/sc22/wg14/www/contributing.html

Martin



