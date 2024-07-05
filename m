Return-Path: <linux-man+bounces-1320-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 163AF928BCC
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 17:35:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90A62B2581E
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 15:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4471146A69;
	Fri,  5 Jul 2024 15:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="aexce7aA"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6DB148FE3
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 15:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720193709; cv=none; b=J2ROdfbIFr07zmjzlj9aRxSkZ9pZvfp3ffNQoFekxrf8G+rB3b4EN+akrKGjfexkn+jPwGcRHsoDiMo1r4B3y4Is6DdlUPlMLnui4adjIiuiN7moQLbQ+tLMudVpx2B70gDVNT/84tJqMGSdc2uVREDb2Lb0IOSQxfEsNT636PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720193709; c=relaxed/simple;
	bh=Pz69BqXwlrChjWJASh34HQFvoLYzbG32ry0edl/dgVE=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ul7tvWSX1dSVecqyVxAGmwTzun+nlBADIKdGqmJxVpO+74CI7+htsxGbevZQjb+CRzoVeigJMUWf+q29u9NN9pl6sUi3P+BMHxSxQZlE0KtSlIV/tgolKED41svnQtTb4t6ZiM6i/XZGDrP39RSSSQdp2nHhSiqeFJ+pVpAC4fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=aexce7aA; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=sfFkL1C92MRSpdH1if0mc2IUjFJFkwEUaV5PVireSMI=; b=aexce7aAcgC6FUqCa9F/cHf/vU
	qMT0WZa5k3gTQPoyBLm9zUfJCt/T+2aU3ObDdThswQ6QZJMnbr01oFzeLrJcx7JNIUg9D8X7JU+Ou
	16qHeuCxHFhIyc9X+bfjnsOlX+MJUUDjCf1KbYidSOeZS04uP9bPhoz1IGShFIEUidhbrW1D0q5Ef
	MHvmPPgT1OjyoOxnM/7q1ICvFBsBEEGL9a3Un0jlO8fD/hZgbdsbj5MaxtylFRESUivmVR3TpuRmi
	Yry1O2O+gw5kGH+GIaTpxj4v0r+rVfy4LkfGGn4IdetyUZk29kkUJfmwSTJbEipFkaeEbN2ouUJfX
	Ez0U93gA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:43255)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPkxc-002FHj-2d;
	Fri, 05 Jul 2024 17:34:56 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPkxc-000R5v-2K;
	Fri, 05 Jul 2024 17:34:56 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 5 Jul
 2024 17:34:56 +0200
Message-ID: <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>,
	<libc-alpha@sourceware.org>, <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>
Date: Fri, 5 Jul 2024 17:34:55 +0200
In-Reply-To: <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-FMZ-05.um.gwdg.de (10.108.142.64) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 05.07.2024 um 17:23 +0200 schrieb Alejandro Colomar:
> Hi Martin,
>=20
> On Fri, Jul 05, 2024 at 05:02:15PM GMT, Martin Uecker wrote:
> > > But when the thing gets non-trivial, as in strtol(3), GCC misses the
> > > -Wrestrict diagnostic, as reported in
> > > <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833>.
> > >=20
> > > Let's write a reproducer by altering the dumb.c program from above, w=
ith
> > > just another reference:
> > >=20
> > > 	int
> > > 	dumb2(int *restrict a, int *restrict *restrict ap)
> > > 	{
> > > 		// We don't access the objects
> > > 		return a =3D=3D *ap;
> > > 	}
> > >=20
> > > 	int
> > > 	main(void)
> > > 	{
> > > 		int x =3D 3;
> > > 		int *xp =3D &x;
> > >=20
> > > 		return dumb2(&x, &xp);
> > > 	}
> > >=20
> > > GCC doesn't report anything bad here, even though it's basically the
> > > same as the program from above:
> > >=20
> > > 	$ cc -Wall -Wextra dumb2.c
> > > 	$
> >=20
> > strtol does have  a "char * restrict * restrict" though, so the
> > situation is different.   A "char **" and a "const char *"
> > shouldn't alias anyway.=20
>=20
> Pedantically, it is actually declared as 'char **restrict' (the inner
> one is not declared as restrict, even though it will be restricted,
> since there are no other unrestricted pointers).
>=20
> I've written functions that more closely resemble strtol(3), to show
> that in the end they all share the same issue regarding const-ness:
>=20
> 	$ cat d.c=20
> 	int d(const char *restrict ca, char *restrict a)
> 	{
> 		return ca > a;
> 	}
>=20
> 	int main(void)
> 	{
> 		char x =3D 3;
> 		char *xp =3D &x;
> 		d(xp, xp);
> 	}
> 	$ cc -Wall -Wextra d.c=20
> 	d.c: In function =E2=80=98main=E2=80=99:
> 	d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-qual=
ified parameter aliases with argument 1 [-Wrestrict]
> 	   10 |         d(xp, xp);
> 	      |         ^
>=20
> This trivial program causes a diagnostic.  (Although I think the '>'
> should also cause a diagnostic!!)
>=20
> Let's add a reference, to resemble strtol(3):
>=20
> 	$ cat d2.c=20
> 	int d2(const char *restrict ca, char *restrict *restrict ap)
> 	{
> 		return ca > *ap;
> 	}
>=20
> 	int main(void)
> 	{
> 		char x =3D 3;
> 		char *xp =3D &x;
> 		d2(xp, &xp);
> 	}
> 	$ cc -Wall -Wextra d2.c=20
> 	$=20
>=20
> Why does this not cause a -Wrestrict diagnostic, while d.c does?  How
> are these programs any different regarding pointer restrict-ness?

It would require data flow anaylsis to produce the diagnostic while
the first can simply be diagnosed by comparing arguments.

Martin

>=20
> > > Well, I don't know how to report that defect to WG14.  If you help me=
,
> > > I'll be pleased to do so.  Do they have a public mailing list or
> > > anything like that?
> >=20
> > One can submit clarification or change requests:
> >=20
> > https://www.open-std.org/jtc1/sc22/wg14/www/contributing.html
>=20
> Thanks!  Will do.  Anyway, I think this should be discussed in glibc/gcc
> in parallel, since it's clearly a missed diagnostic, and possibly a
> dangerous use of restrict if the compiler does any assumptions that
> shouldn't be done.
>=20
> Have a lovely day!
> Alex
>=20


