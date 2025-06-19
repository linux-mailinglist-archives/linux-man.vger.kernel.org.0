Return-Path: <linux-man+bounces-3156-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88783ADFA5D
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 02:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1805D17F2DC
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 00:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25AFC2BB15;
	Thu, 19 Jun 2025 00:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IHMlGLzD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CDD420E6
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 00:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750294188; cv=none; b=Nz2g6aRSvfRIqMjr1Ux8DogGHD5G9xl5Vvt+R2okMADJMpvChm2sf+M9NqA8itUPh+xejN95Ez/z7M/PIAcJNy/0yqvRkF6o4x523WD21n4e8euK4PFIFHrAYQM4l+HHnuHaNM6kysmjqgJ9VLzU+iaLMe2c89rrKlHq+k33iI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750294188; c=relaxed/simple;
	bh=0h+yXO7BZ1zT38KhHG91/X/BMxDIMvI+MD5+wdU32ww=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tt4v/+OyquCLFOZQtJHFwgO2yfeyHadwt7xAx7aB3A+LkjMDDS8XxuRo0EP+tc7IsNoaLeQeemf8VpaPVWxXNCWlnu4NwnVSqxZVTdJmwVmVASyMpDAeXh1xULfWfCZdaUlcvNm+fNDQugpxGHO5X05V70C0v7reNPQPT2f6SJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IHMlGLzD; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7426c44e014so166698b3a.3
        for <linux-man@vger.kernel.org>; Wed, 18 Jun 2025 17:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750294187; x=1750898987; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2bY7LGfthUXr2m+CycSuix2wZYgkWgoBFZ+IoaZNBEY=;
        b=IHMlGLzDHjhT58kxOU8BcKUCAHfneSXZDrq1Jqcw0TwqRRidQFf0vz9cZuhyDXtHji
         YuZTw1lfmOI1iLH2jElQdy2p6yo9xfQQEpCsiT7K+6Y9mtQ2qpe1hH1s26PvgTW/8Bw2
         pL3UrvKxxHUrvN/EOSFjtjyff9IbpOeNFyLjDl9pRU401jZdjmQv77U0NFcGaH5vYnyr
         FlWnCzxu49siRpaE4Ps1Cr8JtfNnFCft+1ZToT5jEGVSY4+FKNI/yqmZ17jGFneXe+Tv
         GtS7qq05Nq2uTHBiNJVDq3WGaunlrPOWcTfQ8hquWMyXbyoGctFe3BaS9tofWrlEgrml
         HrbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750294187; x=1750898987;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bY7LGfthUXr2m+CycSuix2wZYgkWgoBFZ+IoaZNBEY=;
        b=ro5YXGyYJCADbb6lbDyisV9vTC5H5QyHxXVrYbA6mWDAo4KQ5Mp6rI/IwiPsYAUZJH
         6wjglFhpyyKzI7X96vot+6NEg7jmqXkZnQgreVm3bw6W8S9EUwupgiKL/YUZky2tUtk5
         vbayAw2hYH/VD2vegkIVHBOYM301XIGB833mp9ziiEzFbQf2bgM38KucZeNaVn/KlMqP
         HqdRtWEexldjw06Z3bW8FThVqXiX9yp6h8NDGraYf6K4PDr5D/DtPcefysDKUc0rT0/K
         Ft9HJ7Nmwy4j/EtCt/TRz1yE7hNmTKFtQamuUYbNB8SVIYHDr5WHJUDmwEirZZd2LtjB
         au8A==
X-Gm-Message-State: AOJu0YzyHFPUfXlyY2NLwtcEQflJPHaEcPP/eVNvD/eV2ISotKmf6I1f
	IcJX0G4ThiilsL55xpmcfVZcgr7z5e2S6E2JHVlZQnyY853+2HO1OmTe
X-Gm-Gg: ASbGncucQMvsPl0SZUhMHoJMCAwk+FacFMgDCUL8tLObn2Xd5t1kzGx1w9fxQ/6P8dw
	j9mst1gftJ7BbRk5KcvHVIVJg+J940alpMkkj3NK8+Uz227L/8h5OeXhwxdfgDK2RvQ0PCHHo/B
	efSTBNnLRXlIBZ8lmDc6Ym4J+k01GV9239YviHF19ABseubLlht3jVvPUhng5pdr45e9CG+JtJi
	I/4GGv0mcoPrZYqPxMl0HZzn4Vi5xRnYY8/xrPu0jBzJ1PIYyxXGaA09eJG7Vk9pMUCffZQ6GsE
	7pqxwvv6xSDpa4s+/O7yNciJbAU8O7d94GW3WQIrm7TTvfE2efUC9A==
X-Google-Smtp-Source: AGHT+IHTbx1siAn94wAIZGg2rJnqwkUN3h1rD3PxlFQze/t19PzAONFfgDsM92EPHyyg4oEwskNXzg==
X-Received: by 2002:a05:6a20:9f8b:b0:21c:e488:29fa with SMTP id adf61e73a8af0-21fbd57d7bfmr28702640637.29.1750294186795;
        Wed, 18 Jun 2025 17:49:46 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::de7b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe168a221sm9776271a12.56.2025.06.18.17.49.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 17:49:46 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,  musl@lists.openwall.com,
  libc-alpha@sourceware.org,  Paul Eggert <eggert@cs.ucla.edu>,  Bruno
 Haible <bruno@clisp.org>,  bug-gnulib@gnu.org
Subject: Re: malloc.3: Clarify realloc(3) standards conformance
In-Reply-To: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
Date: Wed, 18 Jun 2025 17:49:43 -0700
Message-ID: <87sejwd07s.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> BTW, Paul, Bruno, does gnulib also wrap reallocarray(3)?  If not, it
> should.

Yep, Gnulib has had it since 2017 after it was added to glibc.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhTXqcACgkQjOZJGuMN
fXUwJA/9G/JWpKONPN5Jg0k79rSl3ASVYTzBLmfFXj6o6/EmZI+gde0WBnt9YM7x
I22oCYNegnGwdigJibwL/nLBIWceDDt0hwddzzQj3OQBa7O6QRabSDWamlnAwk+K
LzpGEkXKgDZueFxnfckSlwVacp/fQFI8JzNEhqSHt95OHCOYuPeKcgiQ/53yglft
9ssopyvDBxDa0jwler4YXTyhLxihTEJBBawCIc98oRP1h7Fr5aeJrp44MErpknjO
Sx85onBlgK6dDgFq1kNO+ogPOd7eGtwRV6C71aIsqaEN3DjzCZPUOLdZppTkvjzO
lNZagZovn2Up0/jQ5Ji1GMmABmDUz3SCKOoNluCvpgxOx0IwWi9gxbxlMHtnhYLa
91UMnw425y0Wvd6N8Ug95y56ttJjo6XKSzklylI2t27q6f7/ZEBh9SB6GPCx+6wC
VEoLO5tpZU40A63CqHI8yQphf3yY1NfYexQfpIgBSHzG3czT1LxDIjBXgU/EDKEx
NikbGQxmPO54nTHgTN5srFPbl70IdP1JD2h8A4cuptzNKpFBYmReBlMTH4Un98l+
8jbPJn+KQjO5SLWaQdvdCS5bwLl2YzhEyZ4ivthjCc0WVPbHADCJ5hOtiGbhCe4l
fBH/mDb47zQ1Y9vdFJxDcgDnOZlDMgZ4NqcwD04ns3pv9ZpCTMs=
=xvdB
-----END PGP SIGNATURE-----
--=-=-=--

