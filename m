Return-Path: <linux-man+bounces-1324-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 320D9928C09
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:01:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 626B11C20CC6
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8B9814A4C1;
	Fri,  5 Jul 2024 16:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b="bceTBusS"
X-Original-To: linux-man@vger.kernel.org
Received: from xry111.site (xry111.site [89.208.246.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457C1148849
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.208.246.23
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720195297; cv=none; b=L7hgs/zH4lMet1R3sui0chiQyKMIkn9DkNmV5zvw5IAAnt/fkiFdgpduMwEeqnRuFv+B5Ux0Pco8v8uhCDoDDNxg8zfbQJvPK0mImLfN8pECeUERQFnc9ciqZbdrlMiuiARcMxT/C7GaSn1AeY+AoUlfmzdJGOLWtPKpo4UCqJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720195297; c=relaxed/simple;
	bh=ll4OXWSGGsnEIjFAOS1+SQmYY/eWvZ4Ao0vACALECFE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fRt8hqbu49KC/kx4xttsu5VsEnvJSBcAclrTG3CkhflWsW7KPs3fsmXd9wXBM05wnjvFtyto4uu+TeYpw6t9vg0XUJG/6IfyozIJ55GrbQ2qG1O58VQd+s9kAFhJR+uygmPK/MX2uFOQSMzKLpkDtTFOdsuhp76ZGmJaGrN+hso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site; spf=pass smtp.mailfrom=xry111.site; dkim=pass (1024-bit key) header.d=xry111.site header.i=@xry111.site header.b=bceTBusS; arc=none smtp.client-ip=89.208.246.23
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=xry111.site
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xry111.site
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xry111.site;
	s=default; t=1720195294;
	bh=ll4OXWSGGsnEIjFAOS1+SQmYY/eWvZ4Ao0vACALECFE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=bceTBusS6VcleMj5EFYV9xnMiown7VYaJHoOVEGKFJri/nzw96rtD70cXzpVKgeGv
	 MlBTvBcV+ituTpUqOiLzIQNGaTnbAwXoF/E+f4Zzj073jm+ad8p7COl9GKK1rUdE1q
	 BgdvRcEDicQ16ts+JbZ8fNGqSw8TitaBhnsHQnM8=
Received: from [IPv6:240e:358:11fb:d500:dc73:854d:832e:4] (unknown [IPv6:240e:358:11fb:d500:dc73:854d:832e:4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-384))
	(Client did not present a certificate)
	(Authenticated sender: xry111@xry111.site)
	by xry111.site (Postfix) with ESMTPSA id CC08B66B0C;
	Fri,  5 Jul 2024 12:01:29 -0400 (EDT)
Message-ID: <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
From: Xi Ruoyao <xry111@xry111.site>
To: Alejandro Colomar <alx@kernel.org>, Martin Uecker <muecker@gwdg.de>
Cc: Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
 gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
Date: Sat, 06 Jul 2024 00:01:25 +0800
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
User-Agent: Evolution 3.52.2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
> At least, I hope there's consensus that while current GCC doesn't warn
> about this, ideally it should, which means it should warn for valid uses
> of strtol(3), which means strtol(3) should be fixed, in all of ISO,
> POSIX, and glibc.

It **shouldn't**.  strtol will only violate restrict if it's wrongly
implemented, or something dumb is done like "strtol((const char*) &p,
&p, 0)".

See my previous reply.

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University

