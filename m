Return-Path: <linux-man+bounces-1325-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D7C928C0B
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B4841F21A79
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5192F14A4C1;
	Fri,  5 Jul 2024 16:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="XdcvvhV9"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2532D148849
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720195387; cv=none; b=N/R5uMRcjaRTtoncyc0P0QRTXzQx3b7APX8pZJeEdrjRXypZGVVDaYRGfxIR8NkKB/b2pNMUW3DLHlGUDCPnt4er+oa34nPcTEz2fmS2nWDzMLKjvhscqGQiNXEyrEKpMJhiZsyZlhsrDtfv7SRDjbQsmYor7WrVu+tDU58n5lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720195387; c=relaxed/simple;
	bh=Ya6poSsOVPXgH6wG1U3F6DflmjEo9xTsi8Qf2Fi9kAE=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=seEFvZ15EAz2W5vgUvkcA3qtjHf6Fxe5Ce7XjGBjPyMh6zxF11hjrI2cCSdii+qxXX542pkNggori+RKNZI4Q0GGXWzcdSJW9JRkffLh0KJdh6szi5dqrh8qTrFWQdKnPIClENlFMm5GZyF+/77F5PsiWfSdFr3Np5pCljiDYQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=XdcvvhV9; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=OEQUpqk5czYawzrRoadHw0JGzD/0XE5UkG2wDR3POBU=; b=XdcvvhV9aZR3j1VzbU2UYdlE4i
	bpX31oQeYsmNYU7WnMYOuv4Tm4ef4xvAhCBQ+YiNEB1OpjIjgg4l/PHnIZQfD5YFburWClNaieMaQ
	xsZ23NtDfDR1bHrtHU4rRjgn5ZMLaWar/GTHcowAbada+bIiN/zdIBWhE0cPvGDVKPpZijoOEWKiP
	x9C29XTfc8V+Vc80FT7yxVx7DDgt/JzO+u0quUW/ZNU8ugiVgoBNaoGq9F0o9JTLe6pmdYiS5QCci
	BhGRD5Ety8/A9ExuoMFkdryWWpM/6HHTbV0aSCvu83BJvTgOYgOYGwd9Kflaf5SkGkjB+sefWbrpi
	ZX4KK7CA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:36796)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPlOk-002FgP-0T;
	Fri, 05 Jul 2024 18:02:58 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPlOk-000WkE-0E;
	Fri, 05 Jul 2024 18:02:58 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 5 Jul
 2024 18:02:56 +0200
Message-ID: <b9f1ea095cc7a38de972c27ff0e0ee2e21782b4a.camel@gwdg.de>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>,
	<libc-alpha@sourceware.org>, <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>
Date: Fri, 5 Jul 2024 18:02:55 +0200
In-Reply-To: <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
	 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
	 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-SUB-05.um.gwdg.de (10.108.142.70) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 05.07.2024 um 17:53 +0200 schrieb Alejandro Colomar:
> Hi Martin,
>=20
> On Fri, Jul 05, 2024 at 05:34:55PM GMT, Martin Uecker wrote:
> > > I've written functions that more closely resemble strtol(3), to show
> > > that in the end they all share the same issue regarding const-ness:
>=20
> (Above I meant s/const/restrict/)
>=20
> > >=20
> > > 	$ cat d.c=20
> > > 	int d(const char *restrict ca, char *restrict a)
> > > 	{
> > > 		return ca > a;
> > > 	}
> > >=20
> > > 	int main(void)
> > > 	{
> > > 		char x =3D 3;
> > > 		char *xp =3D &x;
> > > 		d(xp, xp);
> > > 	}
> > > 	$ cc -Wall -Wextra d.c=20
> > > 	d.c: In function =E2=80=98main=E2=80=99:
> > > 	d.c:10:9: warning: passing argument 2 to =E2=80=98restrict=E2=80=99-=
qualified parameter aliases with argument 1 [-Wrestrict]
> > > 	   10 |         d(xp, xp);
> > > 	      |         ^
> > >=20
> > > This trivial program causes a diagnostic.  (Although I think the '>'
> > > should also cause a diagnostic!!)
> > >=20
> > > Let's add a reference, to resemble strtol(3):
> > >=20
> > > 	$ cat d2.c=20
> > > 	int d2(const char *restrict ca, char *restrict *restrict ap)
> > > 	{
> > > 		return ca > *ap;
> > > 	}
> > >=20
> > > 	int main(void)
> > > 	{
> > > 		char x =3D 3;
> > > 		char *xp =3D &x;
> > > 		d2(xp, &xp);
> > > 	}
> > > 	$ cc -Wall -Wextra d2.c=20
> > > 	$=20
> > >=20
> > > Why does this not cause a -Wrestrict diagnostic, while d.c does?  How
> > > are these programs any different regarding pointer restrict-ness?
> >=20
> > It would require data flow anaylsis to produce the diagnostic while
> > the first can simply be diagnosed by comparing arguments.
>=20
> Agree.  It seems like a task for -fanalyzer.
>=20
> 	$ cc -Wall -Wextra -fanalyzer -fuse-linker-plugin -flto d2.c
> 	$
>=20
> I'm unable to trigger that at all.  It's probably not implemented, I
> guess.  I've updated the bug report
> <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D112833> to change the
> component to 'analyzer'.
>=20
> At least, I hope there's consensus that while current GCC doesn't warn
> about this, ideally it should, which means it should warn for valid uses
> of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> POSIX, and glibc.

I am not sure.=20

>=20
> > > > > Well, I don't know how to report that defect to WG14.  If you hel=
p me,
> > > > > I'll be pleased to do so.  Do they have a public mailing list or
> > > > > anything like that?
> > > >=20
> > > > One can submit clarification or change requests:
> > > >=20
> > > > https://www.open-std.org/jtc1/sc22/wg14/www/contributing.html
>=20
> P.S.:
>=20
> I've sent a mail to UNE (the Spanish National Body for ISO), and
> asked them about joining WG14.  Let's see what they say.
>=20
> P.S. 2:
>=20
> I'm also preparing a paper; would you mind championing it if I'm not yet
> able to do it when it's ready?

Guests can present too.

>=20
> P.S. 3:
>=20
> Do you know of any Spanish member of WG14?  Maybe I can talk with them
> to have more information about how they work.

You could ask Miguel Ojeda.

Martin

>=20


