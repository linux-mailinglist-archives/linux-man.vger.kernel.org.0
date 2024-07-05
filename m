Return-Path: <linux-man+bounces-1341-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EA1928E1D
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34ED928479E
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0772116C87A;
	Fri,  5 Jul 2024 20:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b="KCq7OXDB"
X-Original-To: linux-man@vger.kernel.org
Received: from mx-2023-1.gwdg.de (mx-2023-1.gwdg.de [134.76.10.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0017A135417
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=134.76.10.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211172; cv=none; b=Fg4+qXFbr5X8Q/e5K5WX7OXFivRnVT9ZdefKevCM+QjKs0Bx6l/UFP++H7S1hzT4aLfKv54YvDoEpzd5NKy0NlNIBQmrFAeqYQSgUalbYyJKIA+Megu5GDtbGCqoZu3f4GcUil7nIgD5OKWdPAGNI4zb7KWUEk7Ur1at853nmSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211172; c=relaxed/simple;
	bh=/W+WfBWGoPL8XA9lakkZ29Yx08hEBt+siFuuGVCF+/Q=;
	h=Message-ID:Subject:From:To:CC:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MF0fRGuFtj1oGq++W4avDcUoyXg2Z+E0YoekgbhS8C/VcGXQ/ODKQxR6tIPj6+bLZXTcbs67BzwMI8NdsnQim56b615rgM7QUPYhtj1HpScal54AJMrj58YG85NHXZVq55rKxzyGThXua8k9vFW0iGd66YoL7KA4UM5lrszgAlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de; spf=pass smtp.mailfrom=gwdg.de; dkim=pass (2048-bit key) header.d=gwdg.de header.i=@gwdg.de header.b=KCq7OXDB; arc=none smtp.client-ip=134.76.10.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gwdg.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gwdg.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gwdg.de;
	s=2023-rsa; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=n5x+5juSqOhq2jd5WGR948BMY8khSigTPCGfG13oXVo=; b=KCq7OXDBAb812e8ywO0Hdgv7pe
	3WgJ29BEM04Qt3Oh4Xl5Q15I74lOhF5cOQJFaEEv7C8IedRRBWAFh2dQogWmSHr4LeKZUciue/bLk
	MPEbc8luRBL/fTKVLXf8sHWqFQ6JRuGIUd13q3FDb982iWLjerv6/DhWQhxwqktMCVdFyzYTBNXrU
	qPD+q7Uj3gv65RfJf9q+RHExVBQVhkBazkrv8Q+IpZKvuEk31zQoZI8JXwpp/NhGoc4WDLWFdN/QB
	/Wi9KQWQdkHukf9P01tuO7dT9awepJciKAwTZBIATPIrt+/mREEg0HXtimoCxBlk0F0p2RjdNAHqE
	7qY42bpw==;
Received: from xmailer.gwdg.de ([134.76.10.29]:50841)
	by mailer.gwdg.de with esmtp (GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPpVF-002I8s-26;
	Fri, 05 Jul 2024 22:25:57 +0200
Received: from mbx19-fmz-06.um.gwdg.de ([10.108.142.65] helo=email.gwdg.de)
	by mailer.gwdg.de with esmtps (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(GWDG Mailer)
	(envelope-from <muecker@gwdg.de>)
	id 1sPpVF-0004kw-1q;
	Fri, 05 Jul 2024 22:25:57 +0200
Received: from [192.168.0.221] (10.250.9.199) by MBX19-FMZ-06.um.gwdg.de
 (10.108.142.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.11; Fri, 5 Jul
 2024 22:25:50 +0200
Message-ID: <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Martin Uecker <muecker@gwdg.de>
To: Alejandro Colomar <alx@kernel.org>
CC: Jonathan Wakely <jwakely.gcc@gmail.com>, Xi Ruoyao <xry111@xry111.site>,
	Jakub Jelinek <jakub@redhat.com>, <libc-alpha@sourceware.org>,
	<gcc@gcc.gnu.org>, Paul Eggert <eggert@cs.ucla.edu>,
	<linux-man@vger.kernel.org>, LIU Hao <lh_mouse@126.com>, Richard Earnshaw
	<Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Date: Fri, 5 Jul 2024 22:25:45 +0200
In-Reply-To: <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
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
	 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ClientProxiedBy: MBX19-GWD-03.um.gwdg.de (10.108.142.56) To
 MBX19-FMZ-06.um.gwdg.de (10.108.142.65)
X-Virus-Scanned: (clean) by clamav
X-Spam-Level: -

Am Freitag, dem 05.07.2024 um 21:28 +0200 schrieb Alejandro Colomar:

...
>=20
> > > Showing that you can contrive a case where a const char* restrict and
> > > char** restrict can alias doesn't mean there's a problem with strtol.
> >=20
> > I think his point is that a const char* restrict and something which
> > is stored in a char* whose address is then passed can alias and there
> > a warning would make sense in other situations.  =20
>=20
> Indeed.
>=20
> > But I am also not convinced removing restrict would be an improvement.
> > It would make more sense to have an annotation that indicates that
> > endptr is only used as output.
>=20
> What is the benefit of keeping restrict there?  It doesn't provide any
> benefits, AFAICS.

Not really I think.  I am generally not a fan of restrict.
IMHO it is misdesigned and I would like to see it replaced
with something better.  But I also not convinced it really
helps to remove it here.

If we marked endptr as "write_only" (which it might already
be) then a future warning mechanism for -Wrestrict could
ignore the content of *endptr.=20

Martin






