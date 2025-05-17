Return-Path: <linux-man+bounces-2951-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB309ABAC9E
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:44:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AFF41656E4
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB29D20C46F;
	Sat, 17 May 2025 21:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EIoKM6PS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3D44B1E73
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747518242; cv=none; b=LRfE5XMOvUIviDJ8D14+wWj16QgDS2Gt6JXpYS9upbYdQv6LC3r0VwlR8a4WCuZJ9jsEaTUa9X/ItFDizERMgFBEGG32OmNgereCjprkhumLK2Bm+Ve05Gs/ylLEqj55lLgw64exU4GTzJQJFs0kNHCP5kVxbJe9pwMa/hWAW+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747518242; c=relaxed/simple;
	bh=5o+tRu3Y77P3uT+wVmdwPxEvuo2mvtoR2B+I9Pc5Klo=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=siodtn3Q47s4ZvEYLopwH7Eqolrjc17bn0t54ojmrQ0LwZLUHqn0W527QftNtxrH260+aRj0dJTFQpGacd22AXTLqfk2akMahIiFEQoIwcnmJXRPH+oWzx6J21AJCAzOd9CfhTa9rXxu/BDYd2n7s12PZQc5GtZkYCP+TzKvI9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EIoKM6PS; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2c6ed7efb1dso970455fac.2
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 14:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747518239; x=1748123039; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+/Iy1cgvgK1RS/c6Xxm9W9ruzqUi/dqf+Jdr1msS9Sg=;
        b=EIoKM6PSfWNLsn1bSrxMB24jtg8Tn1JotnXHqH0EMgF9Req8pjwBP85ux2Mq/HVXDf
         seVxDCKLzUGmrrUse/sZcS34gIbiqX5eVX5LSAzLdWQbrwnH05LpEe4ZKlKjjh3CkhXI
         l0dxlxXxVioYB/ec+h4vE+/BP+RGzh1fMaIISuZLolxrUuoWPFG6QQxhQsHK7W2Eq31O
         Di5uq7wuTN2rGvPM7YgFK7bgdN39X5EcHAs46ElFMre0q68GKkqBGpQ69jPKVB7J/rRT
         LWWM7pyfwHADHl106Si/QTBs6TSOYWd+u6BJU+5BRGH8A0E7eERZmmtNARU9Hns+zGXs
         4Wgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747518239; x=1748123039;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/Iy1cgvgK1RS/c6Xxm9W9ruzqUi/dqf+Jdr1msS9Sg=;
        b=hopRKFd1KHP5xnqKlMiT7ND3JMel52uT9xaNpR3bLVnZTnA0A6D3ixuw7rwwAeg5BV
         KyXY70GHWKwvIAkYlvViyabhp9/pLdxO0pNvjrN8WT0AuxjhxXu16j1cwahx0uC7perH
         oOhAWdUEgVYPNMDGVW3qg91ryaTDofg0F5MpC8NIMlQ3Ln947xoRfWmQGRUH/vEs6wjU
         SfQDsTW2UOZnlAVEja1r/TmQPxOTWv8KYy6hX46JNCw1tVWdGXNeI4zxlj2Un4rlHONu
         Sk6N8vVtm16CK9/qkvxJ8XIA2HmXhC30Ib3Fj2+s3HtL24HqZ4U5wy03Bk1qj4VpIN2M
         5eIw==
X-Gm-Message-State: AOJu0Ywe8aI3GlB0snynTHegWDlDbU4OJUwQ1Ta8tCF1JwmJtnT35TH0
	oExhIzUIglLgPqr4eLcwz0izDN7wpW2qoDNLqjm1fbvTdnnKlA4HTrAos4z/Dw==
X-Gm-Gg: ASbGnctrWkhACVubEcXnX2o6RzzAmIXwfjnCiUJEbZVrSIfsjYsPS47cHR/YUIQHRWi
	ReXF/Y8lxyi5IO6JVb7vpRgBifLFEcvNbOYJjGNMfM/FvqkRkYIoexElRXe+j3Lk0G6AL1ycSIp
	FhHw4Mo4ap56fJxoNCvRsZucNNM14mz6dwMyNi9KXicoCHo4rZlVv8p3z4rWsfEf2lDtBVmvc81
	28odE1crqbacRPDBSqZN4xSTfd1VZucSMmiU2ruAhq9hXVOObCm08qG6pN0/JyBL8Zjoo22A5+C
	943K0MXC59bofKcUPz2qZLyidH/YpdidSZRFT6Ih3A==
X-Google-Smtp-Source: AGHT+IGYyaO3LCsSrxH7XMyhGi6VaIANxjtc2gg0b5eHfm+3zb2pxIPAOdzdR0+07du8/2BiaefYsQ==
X-Received: by 2002:a05:6870:ce03:b0:2bc:716c:4622 with SMTP id 586e51a60fabf-2e3c1f4623emr4673263fac.38.1747518239425;
        Sat, 17 May 2025 14:43:59 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6b3a9b3sm855888a34.52.2025.05.17.14.43.57
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 14:43:58 -0700 (PDT)
Date: Sat, 17 May 2025 16:43:56 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: the correct way to say "POSIX 2024"
Message-ID: <20250517214356.cpueutlfgi6t2enl@illithid>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m3464y2yxvr7rzzj"
Content-Disposition: inline
In-Reply-To: <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>


--m3464y2yxvr7rzzj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: the correct way to say "POSIX 2024"
MIME-Version: 1.0

Hi Alex,

At 2025-05-17T23:16:20+0200, Alejandro Colomar wrote:
> On Sat, May 17, 2025 at 01:53:02PM -0700, Collin Funk wrote:
> > +"P2024" indicates that the signal was added or its definition changed =
in
> > +POSIX 2024.
>=20
> This should be "POSIX.1-2024", not "POSIX 2024".

Do you have a supporting reference for this?  I thought that since the
POSIX standard was no longer organized into subdivisions in the way it
was historically (with POSIX.1, POSIX.2, POSIX.4a, and so on), that
"POSIX.1-2004" was something of a misnomer.

I checked <https://www.opengroup.org/austin/>, but that page seems
careful not to use _either_ formulation!  (It instead refers only to
IEEE Std 1003.1-2024.)

Regards,
Branden

--m3464y2yxvr7rzzj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgpAxQACgkQ0Z6cfXEm
bc61DRAAn7rkTmNxycsxnqBG8QseJBmggY1bPD/w/CEdVIQzl9K1t0dg+uYj0LyV
eZfNIVvz55yAHx4Ea3CX6yEljN2MJKtOt/QjWTxT96G8+Us1+ynHE23MBsp+PKiV
N4XqpossSMoAXn4U83kXAbDNVhFsLeFhtlUJZEJCknraGSiwBRjMqI21hBXD1AMS
KZs9m4Xyb4ukpBEj/HHjXwG36wvyaWjfoTPjEodGynyAyhea3uPzPqllAmd3a9Gu
FKW5SLaGtPkU9CwKRFzjY0J4ZpxRWTah/vwJMzcNlpbqAu240AhdzgO/0in6aW/x
NKaZkHrtlhWptnHT/JROhQ+riPta8o1mx9tlTjXt4/j8Ic3m0UfcKl6vKtjgTpom
/nDA2Ejq2fcszUjxefrHaxSiu2Tm7uftfH+bT+j23Wwa2dwjflp9dqALbxetxDTo
ndU9LCmoUTBKc41RuanGcvfQZw5+11+VXvD30s/GxHv+8DhJNpFbt3wWObhumvMh
uwHukhU3Zlbka3pWwou90x2mpQ4OGNVuIcStnSObdlDaCTHgbCQ93MCJmDmExnUY
0QU3jBybC/fccwGt8k0IpocwhoFibDb8R1XM1XpRHRUFuSsnd0iSNy0AcfOz5fu3
1BSpaua4nqcvj2Hi8ixBQAvxK/Mqefdw9qBkNyHlrmrOUfgeNdw=
=s8i5
-----END PGP SIGNATURE-----

--m3464y2yxvr7rzzj--

