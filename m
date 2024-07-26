Return-Path: <linux-man+bounces-1535-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2A193DABF
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 00:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B3401F214F8
	for <lists+linux-man@lfdr.de>; Fri, 26 Jul 2024 22:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92BE914A4F5;
	Fri, 26 Jul 2024 22:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="jVlk0NtB"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ACA149E1D
	for <linux-man@vger.kernel.org>; Fri, 26 Jul 2024 22:40:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722033652; cv=none; b=B2uJS2QJtZJMvmiTDeSLxpCdgTiTQiffRy++Dz0lo5DDLtpDiJBR2Xo2qzRjljxc/8KcKGoRm3UWqnwV0sBk0x2HfLV30XTsGyF3rsuAjAaW6YbPEBLMD7rMynLj8F0HWLbc1H8jG4Oy78z4ORPJW0YGaoTUfN6VpKMeDJvGNto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722033652; c=relaxed/simple;
	bh=j5WXX3GCgMi3hxWHM/VZoQFEGlGJC47rh21YZjVh/JA=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=F4V+ew7aee/LN8nA5pYXA+QAvahCjHpxR3pM/tkN2UhJ0Trw0g7pRA34zZbcta46ccXpNVw3SRc8coBWIGoBmuLgSWdCvk8sqi4U0vONOGoTK64KkHPLOjUDWJOoN9Xgg/uR2ptWMBydYclYHQgVtYW09xFCSSwEX55zAZnlqx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=jVlk0NtB; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=z4Iy9jPbsrs5Dsa1nnasnBN6WUNld/gNoACeNqb7J6g=; b=jVlk0NtBIIBC7xzYJQVFvJ94Cw
	kJRRCXXseN2CrB3Pa1bzLzDSd1aI2lvRa+fRX5CYSASTZbbi99Wc7ixtxOPoHEov8CO6AUvFe0F8V
	dLhhRRHgIiKgfkSU3URjeOXNwE7LgWGC3/PDhSpIxgpke6hLDLdi2sC7LHA4pD9HhkGTReChYyt+N
	qVhZxglypadvI3I0XJtbZaOX154gRGdx+pqa7KNs3rqvKdtSyxj/xvmTYw/3dbw38KDrO7e9TV0vz
	LfaEwV9Gp3GBVYcw8UuSHAE00n3Zn8l79Uxwa/Eg2kEfitVfULV74pqSeADA6LtNXAVaEEJ6JnxrR
	o4cXAVhA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:52319)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sXT21-009VQm-2E;
	Sat, 27 Jul 2024 00:03:21 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sXT21-000MUE-1x;
	Sat, 27 Jul 2024 00:03:21 +0200
Received: from [10.144.246.49] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Sat, 27 Jul
 2024 00:03:20 +0200
Message-ID: <e3c35a4013c804aab50b453d90c178ec9eea70e5.camel@gwdg.de>
Subject: Re: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>, Joseph Myers <josmyers@redhat.com>
CC: <libc-alpha@sourceware.org>, <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>, <xry111@xry111.site>,
	<jakub@redhat.com>, <lh_mouse@126.com>, <jwakely.gcc@gmail.com>,
	<Richard.Earnshaw@arm.com>, <sam@gentoo.org>, <ben.boeckel@kitware.com>,
	<heiko.eissfeldt@siemens.com>, <dmalcolm@redhat.com>
Date: Sat, 27 Jul 2024 00:03:20 +0200
In-Reply-To: <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
References: <20240705130249.14116-2-alx@kernel.org>
	 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
	 <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
	 <ca2e8de-b5e5-45f1-8184-7d67c6e4cb8@redhat.com>
	 <dcmpclh7v3m263hsynbpjvroi4ldbiv6ig4tuug6ieyovcgv7n@vxojhbpm4bst>
	 <48bf010-43ec-6761-13b1-55864296a90@redhat.com>
	 <amyvxtyogghmybjpyqa26reuztb7ilvwxbzv4w3npehcstpzeu@j5pt4pwpqnjn>
	 <b7d6847e-9028-cc8d-62c4-89bb83f52c8@redhat.com>
	 <td4gjpccgfoszwnya4be7qrx5ahayohw2jhtc3v6kvuiy5dgpo@7idffrvo4hrh>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: mbx19-sub-01.um.gwdg.de (10.108.142.54) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 26.07.2024 um 23:49 +0200 schrieb Alejandro Colomar via Gcc=
:
> On Fri, Jul 26, 2024 at 09:22:42PM GMT, Joseph Myers wrote:
> > On Fri, 26 Jul 2024, Alejandro Colomar via Gcc wrote:
> >=20
> > > > See reflector message SC22WG14.18575, 17 Nov 2020 (the former conve=
nor=20
> > > > replying when I asked about just that paper).
> > >=20
> > > Where can I find reflector messages?
> >=20
> > https://www.open-std.org/jtc1/sc22/wg14/18575
>=20
> Thanks!
>=20
> >=20
> > > And another one to propose that [n] means the same as [static n] exce=
pt
> > > for the nonnull property of static.
> >=20
> > I'm not convinced that introducing extra undefined behavior for things=
=20
> > that have been valid since C89 (which would be the effect of such a cha=
nge=20
> > for any code that passes a smaller array) is a good idea - the general=
=20
> > mood is to *reduce* undefined behavior.
>=20
> While [n] has always _officially_ meant the same as [], it has never
> made any sense to write code like that.  Unofficially, it has always
> meant the obvious thing.
>=20
> Maybe if GNU C compilers (GCC and Clang) add it first as an extension,
> adding diagnostics, it would help.

Both GCC and Clang already have such diagnostics and/or run-time checks:

https://godbolt.org/z/MPnxqb9h7

Martin


>=20
> Does anyone know of any existing code that uses [n] for meaning anything
> other than "n elements are available to the function"?
>=20
> Functions that specify [n] most likely (definitely?) already mean that
> n elements are accessed, and thus passing something different than n
> elements results in UB one way or another.  Having the compiler enforce
> that via diagnostics and UB is probably an improvement.
>=20
> Cheers,
> Alex
>=20
> >=20
> > --=20
> > Joseph S. Myers
> > josmyers@redhat.com
> >=20
>=20


