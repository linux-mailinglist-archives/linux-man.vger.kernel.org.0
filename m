Return-Path: <linux-man+bounces-1330-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5D5928C55
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:31:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FBAA1C20C4B
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AD782BB10;
	Fri,  5 Jul 2024 16:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="WQXtsVsW"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82662F32
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720197059; cv=none; b=aIDYRBR7wKF+Nlfk2fwi6ehfBgNm1w5ro3m/xboiqnSxpnpwhfLY/xK1tRetPfI5Qj7EP9R8NkBMlA7GfQFetUz2haGG8hHsYBB5AAykiVKpf67flzZ5FGLIYSFWB9LNyqs4ZiUjvpCPPF8srrudJZCkInv5sTLYQtQHqNKcREE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720197059; c=relaxed/simple;
	bh=b2K8xOoIsy/D9XYYPxgV40z1A/r6UxCqQpoZRG55MHQ=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hvJiRY4EtYzIAFrODlCGvZL5xBPHbu7zwkE+J31kzqpsRPt8sehe1zq9I3n2Noex5ZxONnpfiPQ1aoow8Aj4KbKLCv5R/pnSUBRTzLZ4gikzaCo0TV4tP0K8NaqlGNqGzX/lMh0xMNL/f60118v8/6Ye81YNE1lmeGFSXGGGCpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=WQXtsVsW; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=tdIKNC792r1NPL9VebePJAU96u31F0voHsYrPItnqEc=; b=WQXtsVsWgJKOFtAj1VQGwV296D
	FuXNu54ulEunTj1yhiT3fA7RTB51/wE9GvOM3NBSzYs5Brq7AEgg2cbOT2p3RIcRGrgWD9jVa/Y47
	RxtjxrUSGcaoZM3BdrurRgufvTfRa+aKxuSSNR9qCu+HlG5j0UxkprYG6B/c25+dAmDIg2lE6zJ18
	rTSQ4YUZccX90QY6sUegK2R7YSU+HOsqS4JiJzNuDkue7QdFacDDkP2OlhiA4eSyxc4LNAXZCKtHA
	tKUDGbZuH8ghkg0JOU9STyQSE8tiAQ2ZBLLBkTf9kfOLLb+ILVNKlm4Sg0JklXMskJ+0zsNS979L4
	95d6XZmA==;
Received: from xmailer.gwdg.de ([134.76.10.29]:56246)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPlpj-002FyB-16;
	Fri, 05 Jul 2024 18:30:51 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPlpj-0003y2-0r;
	Fri, 05 Jul 2024 18:30:51 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 5 Jul
 2024 18:30:50 +0200
Message-ID: <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Martin Uecker <muecker@gwdg.de>
To: Jonathan Wakely <jwakely.gcc@gmail.com>, Xi Ruoyao <xry111@xry111.site>
CC: Alejandro Colomar <alx@kernel.org>, Jakub Jelinek <jakub@redhat.com>,
	<libc-alpha@sourceware.org>, <gcc@gcc.gnu.org>, Paul Eggert
	<eggert@cs.ucla.edu>, <linux-man@vger.kernel.org>
Date: Fri, 5 Jul 2024 18:30:50 +0200
In-Reply-To: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
References: <20240705130249.14116-2-alx@kernel.org>
	 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
	 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
	 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
	 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
	 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-GWD-07.um.gwdg.de (10.108.142.60) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 05.07.2024 um 17:24 +0100 schrieb Jonathan Wakely:
> On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
> >=20
> > On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> > > At least, I hope there's consensus that while current GCC doesn't war=
n
> > > about this, ideally it should, which means it should warn for valid u=
ses
> > > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> > > POSIX, and glibc.
> >=20
> > It **shouldn't**.  strtol will only violate restrict if it's wrongly
> > implemented, or something dumb is done like "strtol((const char*) &p,
> > &p, 0)".
> >=20
> > See my previous reply.
>=20
> Right, is there a valid use of strtol where a warning would be justified?
>=20
> Showing that you can contrive a case where a const char* restrict and
> char** restrict can alias doesn't mean there's a problem with strtol.

I think his point is that a const char* restrict and something which
is stored in a char* whose address is then passed can alias and there
a warning would make sense in other situations.  =20

But I am also not convinced removing restrict would be an improvement.
It would make more sense to have an annotation that indicates that
endptr is only used as output.

Martin =20




