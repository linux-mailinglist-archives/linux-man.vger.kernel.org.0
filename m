Return-Path: <linux-man+bounces-4010-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F763BAD157
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 15:35:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB17419401E1
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 13:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB1E2F5301;
	Tue, 30 Sep 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TDI6xWVl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2602E4D8CE
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 13:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759239353; cv=none; b=VayyxyRBtVF/VaTnmO5kiKPI81vdF77lH23ntZ24fEJBYkkGgbHx7OMgnxoSerCStiGdfZ1tZ+Nqu89b4714dpYZ78Zr3eIebKXHuidGhDHtg9IXQ9sTzbLRexRWlYGplDoAF2kV3/eCV9JOeaLZwo2IUbDfExCQQI7XSZ7a/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759239353; c=relaxed/simple;
	bh=s5BXJm9OeGraYsslC6Uzmam4nwDUuVtulaUunn54okc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S6iNvxm6p0/1SluYnl+ok7x1JPcRRniSbJcHTJTOz0MOMuz0l15gHIx9dZea0dcq5QPaj5plykTBHsjCBxuqsMxtTva/bTCi9+GBwrtzd3DlBaP4tG0iVCiAFMTi364yy+p1SxB+bnire88lIdQQRkavxoSMhlQDafoKvnUDRC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TDI6xWVl; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-71d603b60cbso59849977b3.1
        for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 06:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759239351; x=1759844151; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=udjamWR5ZOh74txadpmYGFAgIxpLlaneT/Rp227mvF4=;
        b=TDI6xWVlJonAfXGqq/PK6CoFjcIXBfkZnhbxdnmFQvHMW6cdgOjxwNVdZmI0kakmOm
         ALuTD/zNb0KuU3O4moW+s9Fd07UyVXEAaw0Xf5Gi7j9tZXHNlmkBjH+1O6Ldn2sk3s1H
         GvaB7eYZUMQoQyVmcVha+XbJN0S8uHlvBJgczXzayoDGRtZUklYKP41abw7jImp85cv7
         m34FAOF8oLcWIr1wonDVc7tm9Z+zVo73kKXUF0OtCQP28Yc5SAruBEl8+LDPJbh13YZC
         s6j2Wo+WafpEcshsaoaZBjYQyfuBbrqPhxyjBagCSC5aseo+LDGWHjxEkDCzcIBEoApI
         bdSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759239351; x=1759844151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udjamWR5ZOh74txadpmYGFAgIxpLlaneT/Rp227mvF4=;
        b=WvQ8uJ4O8trffH1bRGC6oO/WC3hpV+kMcc/NEikG+x6Z18xuqOb2dCWv3YcXCw5VR1
         j/0k2aGbJlAyK6jnxyV4HyohQZYUFj7OxKEoglki91r4ioMfUXnWWT/l3eAr8e6mB2W8
         6q/0i3ZOgLUC2Ant+sEMc/yjhYGEEu5KvLErLv5iWm5cPhG6Tmnlmp/65weCrrzuJ5Cq
         Ar1PI+hp2w/6V//qiTUd3G1OHjORYh6InIGE32v0o+gFhCXkHmWSN9uUWJZgFRZYrGDv
         NlzKIkD5TvCH8C8WEjI1ZojdqNtDoQhitAwL2T3EAq1AuS12QstQ172atR+Hi7hhExUK
         VEMw==
X-Forwarded-Encrypted: i=1; AJvYcCWKm3Rw109laUvjVMO6xL619U9j1I95xiIyHuRW02uTj5ZRc+yTdNXgl6p5Kbvaljtu+yT18FwNtwY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5wMKl5vM+0kFaax5El3jN0eV4qKbKzCRBx6oOpWEh3KJsBzIP
	CSJIQME9SAI2mHnKX1ICbuHSeLKqgSK6sDEX4h67YhZrBqV405O1MLql
X-Gm-Gg: ASbGnctJ4lC/pvybwjYcCMQIx8fUot3COMr56Tu4DlKELY6sCP/ORVM1pDMiXxyZa5z
	bGG1nAHOFpusn2EdKXH+rUZx2H5W1SBCzn0Sezh22sHpo+mJ4Hz94pc7w6wTZsKDC4aytA/gVDf
	b9sUowyfwIXF/K27uhM3BZf23gvS4URBavoP8hu+x1gBnXC+5uMvKzyeOqUFrO8/eH/jRLPjdrl
	lHHc4H6G3A+Eo8Bs2evomWwSOzQ9kA+WseQUB/AmVSSbqpfS08kIIWzjIFcd8CJAerveHXMkNKl
	Lmdo+4dUDF5oTCdQdPx5Z6/tLzhEvvf57rkt8BCH+jAnPjbtIVvsi6Hw2HH8XUZtPYQKKSg5Vsq
	/Qbvrhaf+MfnOoz1VoNlLIf6T2b+B/vWnIJPVEY9Wvcb+uFg=
X-Google-Smtp-Source: AGHT+IEZAqWgzv3z5F9s3XVQBedTdBf8qJjX4kjuIxf/hS00ugFqxBljwO4/9Enr59TH7boY0mcOMQ==
X-Received: by 2002:a05:690e:5c7:b0:635:4ecc:fc21 with SMTP id 956f58d0204a3-6361a82e379mr20219129d50.41.1759239350992;
        Tue, 30 Sep 2025 06:35:50 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-765c91dd8c3sm37304927b3.64.2025.09.30.06.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 06:35:50 -0700 (PDT)
Date: Tue, 30 Sep 2025 08:35:48 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <20250930133548.6e33lxc6ptync2hd@illithid>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s3uyciqpgum3hop6"
Content-Disposition: inline
In-Reply-To: <e369c200-a7cd-4b92-b700-d9d48d347ce8@landley.net>


--s3uyciqpgum3hop6
Content-Type: text/plain; charset=us-ascii; protected-headers=v1
Content-Disposition: inline
Subject: Re: Move GNU manual pages to the Linux man-pages project
MIME-Version: 1.0

At 2025-09-30T08:23:10-0500, Rob Landley wrote:
> Either people updated the docs or they didn't. Having an active
> well-known place to go look and complain at is useful. Requiring
> somebody to read the source code and provide a copyright assignment to
                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> tweak documentation...  well you've tried that since 1983, how did it
> go?

Wrong since (at least) 2013 and wrong today.

https://lists.gnu.org/archive/html/gnustandards-commit/2013-10/msg00000.html

> There may be some selection bias in the people who constantly read and
> edit this source code finding this source code to be the best place to
> put the docs. Learn to cook at the oven factory.

Or play ill-informed games in a toy box.

Regards,
Branden

--s3uyciqpgum3hop6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjb3K0ACgkQ0Z6cfXEm
bc5dSQ//S5BjlMssz3H++clmeLnycUqtmXYMKFheU1lgfJHUgLTY7PR/v11MJIS7
dpxiSK3h0LUdjtIUMTA6CNa3+/tbFeDxOgWlDr23FxpqQiHRUtveV70biLloRSXw
pme69jYtELMh48igE48iQt7ysxG2rKrVJVmtEqWY4dAopF195eKj2Eh1yVeMoDZm
ZYGOPY1UIkwNVUHkzL17u3eukhFFwLA34xYgfUTVh2BL6zjBn+9SvdwUa7wsRQmF
MpgGLOGbQ/Cb5MPh3fojfUfSV0S/KgidDUCgSoBjFyPtBP2UusArGJ7f+pEJIOUf
SmqaY7NMNlLYhBvJ1UFUwWAskdR0DiNllOPq2hneaNwLi/8Q8+tZ0BBTxU9BY++3
sz97DzdKiLH/HPuhnjyOqxqlB5fu2ZFrTaU2NekbK3bV4MDZI+KmUJSbPw2GMhwT
3oJU7EOWYLTqiD8MZZC8KulqY23aEoPTiP28ki27un46kSVEj7K44xz436HZ7O+3
Tinhfo2UhfUmjiNh1eK4bd5GINFsnoBim3V6QSMn7fgg8+mztA3kVdMMgGaU/VwO
iX7SPmxOsINFTiIuZqa9WBbHE0yt401lWqJr+sCug0dFRDtVZkcalGT7SThzyuy5
Sb1BTkbASFrqWKHAngw4Q+S/5Aae5rIcGUWmFgil1qvQaTEJFMw=
=Dtk/
-----END PGP SIGNATURE-----

--s3uyciqpgum3hop6--

