Return-Path: <linux-man+bounces-2463-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C031A377E1
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 22:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 775297A2A7D
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 21:49:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F62C8E0;
	Sun, 16 Feb 2025 21:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uddeborg.se header.i=@uddeborg.se header.b="ixyQ1W4v"
X-Original-To: linux-man@vger.kernel.org
Received: from mimmi.uddeborg.se (mimmi.uddeborg.se [62.65.125.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF247F9
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 21:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.65.125.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739742609; cv=none; b=b+tRo/K78VYdVmUtuJzDcK0wq7P33fMrxq99x44BLjA6DBcvwN5cKVgfK0UaTBlhJuSbMh04tXQRajesRdyS48G8efRLVDJApOPNN5HvJ6lfwmdSquShrNN+LXHI/ykmio7xxctdvqsDFUa7OtyYB3Y9piGcJej7l0Et3a5A0t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739742609; c=relaxed/simple;
	bh=SgJokFi/COyYWOSQc+syNM5r8t3UwgW+yT7d0m2nYCg=;
	h=Message-ID:Date:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Dv4vtwW0quy3aa7D/mbn7NB/gfFMdvEL4SJt7EtCVEJLzTbpwIYu04wuqEAJxQrWfZ2tE6cw620RWWfPrgR6XbcgkU/4d0KWVSCqzPn9fIdEn8ksnGbI9xtl3SS4z09QOcUHyY9IREcB9usY+q0yEQ8/sniMVIqjwY+K+YzEMCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uddeborg.se; spf=pass smtp.mailfrom=uddeborg.se; dkim=pass (1024-bit key) header.d=uddeborg.se header.i=@uddeborg.se header.b=ixyQ1W4v; arc=none smtp.client-ip=62.65.125.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uddeborg.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uddeborg.se
Received: from mimmi.uddeborg (localhost [127.0.0.1])
	by mimmi.uddeborg.se (8.17.1/8.17.1) with ESMTPS id 51GLnwVE3911112
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 16 Feb 2025 22:49:58 +0100
DKIM-Filter: OpenDKIM Filter v2.11.0 mimmi.uddeborg.se 51GLnwVE3911112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uddeborg.se;
	s=default; t=1739742598; r=y;
	bh=MLp0XXKzmjbWen2Cv67GHojkhra+GSwa3DXLB3IFMOQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ixyQ1W4v3mpctWVXSyrPo/b4/Arg0JH+srfSiQ6t/rjErQ0qnkt5vzeX65yyqX8jy
	 JG8th4xOsLFzLZOu13x1c8QAXuudb63loKelF7T4jmmyCEw9VXRir2aCkNygawis2Q
	 0R2iu3qUsAzKYPliPA3pKAyPBlvcgyS0owjTm/x4=
Received: (from goeran@localhost)
	by mimmi.uddeborg (8.17.1/8.17.1/Submit) id 51GLnwp13911108;
	Sun, 16 Feb 2025 22:49:58 +0100
Message-ID: <26546.23942.187177.190341@gargle.gargle.HOWL>
Date: Sun, 16 Feb 2025 22:49:58 +0100
From: =?utf-8?Q?G=C3=B6ran?= Uddeborg <goeran@uddeborg.se>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/mount_namespaces.7: Fix an incorrect path in an
 example
In-Reply-To: <czlhag3vhtszn4kjf6eckqkkdqlf664xkvk44is236fhiytroi@hd3vjydz4l4y>
References: <26546.13734.573762.288144@gargle.gargle.HOWL>
	<czlhag3vhtszn4kjf6eckqkkdqlf664xkvk44is236fhiytroi@hd3vjydz4l4y>
X-Mailer: VM 8.3.x under 29.4 (x86_64-redhat-linux-gnu)
X-Face: Y!dkPRvB0]![*xB\M-!MfkgZ"n-BHD$BA(TZCt2r%n^o6|o1dWGQnY1<Y4}|@3?LNnN])Lp
	SKhC?f4OE*BqS>T)l5dc&vd#fDAE#]Dk;{]D@+o+?X(RqRh{#-D^87?5uml$Phvma*@_~1OS(i`D.v
	&0;f<h{bI;v5]m?&\Qh06/0CP6O$1MkZJR_~XTYm~cAwU($ioR86{'%h
Face: 	iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAMAAAClLOS0AAAAKlBMVEUkIEVaTSwADXunZTaDcoNz
	SS8bJn4cQcTi2rrjx3JYLCkhM6DXlXwkGQn7wQfSAAACXUlEQVQ4jW3TP2sbMRQA8HRt6CCCFtOC
	yeAh0KGoN7iom0uGdDmElpvcEDIYMucLFHo3O6WnVosIWgS3dPFw49nYIhqaocuBvkufzr6zz/Rh
	L/ohvz9+OjnfxjV8yxCL+22cnLcxup0qvLm6P4LR1JgBYpv0CK5fFs94ghjfPPVhWngfa4aeH5c9
	GL7y3vP4jBfYTg7gFsF5fRYxGumxXO/h5o2vDScVFSJiIu9ghIpacUKtSNO5tptvLXypfY0ZsSJP
	0+zD2H1tATIbzogLkM5fz+XlDiCzagDO0yyu7A6GDcB5A+mKfP4/fEeTdQe1biDkSOdocnkALFQb
	7mTy3WSfvNaEEOqczQE+HQImHOoCzFPxfrno+qhxbGAmUcJcDtA2+NYbhAde0USzygo+aWHojYq9
	/5snpqZUxFfddL0xhS90vlL1gIrIHdwo6sLoXEJ6IuJ2JCFHCL4RFYxYcNJWdQeAYwwQmhekm+5d
	YTCHPvIMIBOVaGFmwt/BHzcAqRCrcQsXcIORRFMh4cfknK5bMFtgdDUGyLqqhsYgHhmjjWNW2ixr
	qxopozhPIJGIqLR51nWuB4Zz+EAS5oTN95A0fcChrJy0PzqYFQYhHRalonZ+szjYdoUG0D5UTO1D
	7xkoFBfeMCukXfbgRcy5pi7AUw9mMeLNMkrXhwuEQDixzv3qwUihMGBo5AggOwoXApQ9gEYwg2WU
	9BiMwvCoHKEP5aIHsFuhLgZQLg6h8ApxFMPcf5+c7gHmAQ8X8kD+n/5P2QIs0ACWTiEGzYuP/rTc
	ATwpFLLjBgRcKf8B/C7q8i6VUCAAAAAASUVORK5CYII=
X-URL: http://www.uddeborg.se/g%C3%B6ran/
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="pgp+signed+YzkMfUdhzoDiVdP";
	micalg=pgp-sha256; protocol="application/pgp-signature"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--pgp+signed+YzkMfUdhzoDiVdP
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Alejandro Colomar:
> Thanks!  I've applied the patch.  I applied some tweaks to it.  As you
> suggested, I added a tag for linking to the bugzilla entry.  I also
> added a tag that shows the commit that introduced the bug.

Great, thanks!

--pgp+signed+YzkMfUdhzoDiVdP
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCAAxFiEEJXWOOl7XuTHeSlAwo7264H1HV+sFAmeyXWMTHGdvZXJhbkB1
ZGRlYm9yZy5zZQAKCRCjvbrgfUdX691oD/9pRoR981D98LhPEeeLGjao/6MB/xNJ
qLeKq7CzwXx1uZyKrJSSf86F/8rMOgbG9JWrTSxsY7/cb/X5rQiaavucFtntVjUF
bKUz530VeJE5b3mt+Y1AFS74fGs62ehtpJdWcuDH/PfYQKDe/BYYTLRogrwMy0fo
FrLKyxvoMLQSEh+eOIFy8aFDka2zPcNmFuDaLarrchxRQjKWzQ0MhEWPncMsb2hs
TlJKme3qL9xI++77CwbdzAv4tafkx2VzcuCClEzOPj7ZyqPDvNsmIjD7Uor5PB34
hdOYml4WyqhxNkYxu/9bnovraEXL40iQ/pzfCwC3ijitKSMdvLn+ovu1W61FpcdJ
hYLigs7qyLY3I6CFB3TadLpr3rDZzojR+douz6IchvMsGQ//TdTDNRBo62tBYfeJ
4k27U0MivWdypkoC7wc1nFF58giRVZt/Y/8B8lDFsMi1u263mTF8C1Uk1rdqstLe
8BvR6uJtw5sPxiewUMHNoJOnF/fdL454I2zihXR6+J8YNg3h2fFYEhclg8I62D2t
D/vf18Jc6mvIh13W9AozORr4ptl9jutBBqw/YhPOOsHjPK6Kp0i19o7u3ckI9rEa
Q1u7sSwflslz/LoTV4rWA6OM1hx7TOirAFLMGaOkeTkyKjAmEyTUWhDUk8Mnh0/F
mtx5kYCNdtfSiw==
=AlWc
-----END PGP SIGNATURE-----

--pgp+signed+YzkMfUdhzoDiVdP--

