Return-Path: <linux-man+bounces-866-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 550D08BB4DB
	for <lists+linux-man@lfdr.de>; Fri,  3 May 2024 22:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9002DB2133E
	for <lists+linux-man@lfdr.de>; Fri,  3 May 2024 20:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4ED233FD;
	Fri,  3 May 2024 20:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fHyd+Ldl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0D337E
	for <linux-man@vger.kernel.org>; Fri,  3 May 2024 20:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714768291; cv=none; b=TdpGIkqJOtgo2b7jsyd9dUqaAXynQDovYvQsJdGFc0BudntfUHRvwahk5waW/mmYTBmbg7MaaU5LqHAu/vxOgyoC5jSdxtIsgkCHWcigHwIbAVzinCZ/nUyjHtTGQn+uEcnLAPXdQ9aWAQNkoIVSqBeRqirvXJBFGhXP78bNlzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714768291; c=relaxed/simple;
	bh=PvctChTGeDxP5szEZtgsO/iHsVpRGNpxFiNxb0UNXGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ka40RhKYzFjoc6QVK6e9w15tPtqmZlcn9sLnqYzLQkGl70qtlEIgqXEehXrCaxhQjd0+65Knyb8MihE3cwZed49Y+yiLFHy6TfjSK3mqvMHxeXM+tOR7LbrFbNnv+UY79CncfDxAwbFCTKoNZ3HcEmJgC42zgLKtc+O2NQTYRjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fHyd+Ldl; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-5b1e962fde1so69464eaf.1
        for <linux-man@vger.kernel.org>; Fri, 03 May 2024 13:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714768289; x=1715373089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ldsqWoLpGsY9pCc1jNr1Fs48rUV+xQAd5q6dz/IOtrg=;
        b=fHyd+LdlmKfRd8puXkgfBqZMo8a8BGxx7sb/Dgb83xiPj9AvcpqeTPftHLEX7+4WRZ
         Q8Uuets02JAH0WcOTXtWU8tijRCnw5U8oGdA6m4aGVkndtScnjXUBa8efYUT3klhJZNb
         R0bDrXf9W60v3mhTW24LZd3zZ0UJjUdmcL7fzKS615Pd7sbAZWNHuCEVtlrR8q7fVNLR
         iq8+6VbjdiO6IwtyCWji7ScVO3B8aN72K6Ne7prvV5ikpSQnXccB1QM1v35/S0h00h83
         fhtAlRFJ3GZLNx8O2guZAVIstiWagdZRVWYPIKVNBctmnI1ZR+nDgfdQL1LJ395NPgDj
         oQgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714768289; x=1715373089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldsqWoLpGsY9pCc1jNr1Fs48rUV+xQAd5q6dz/IOtrg=;
        b=elhquoIMQByyrjmvCBj5J/s2ks8PJC1WUCB5Vp57otvuHydWfGsmVRsZPFvOVcZvN+
         Ch+wM2L9F0tAxIBohAxoxlhhl1wEHuEPsBdKTsZ1/Gcxn3DMEkASGbkFle3nQSy5U0Yz
         RU8OKVFTfVGlThGRBtkivVkqE1TlnCaZSTOWnEQ//yFVCNbCwOq8mY+bJe2bMP6Ey0Bf
         6Yj7KtSrAU2lsDV/uOOrusoAsVbBh7Uf8XgFeTewPJQ7RomzlyXt63uanCJGK1WIy4Pm
         Eql00+Nos/KWkIW55V9GOV9pdwF6GyxG4UiDYm+tfQ2tvCt57OGFOr3zRllPgcJUOldq
         d20g==
X-Forwarded-Encrypted: i=1; AJvYcCVwqXCH0OgkV8x1pOmR3KpU0h7pXCWH6lirU1+r1I+sjdergMNCRAnSOaWXZCKElDYZMtQzdc1ub+wPJw8XXypeEjEJjdDd5GV3
X-Gm-Message-State: AOJu0YyAgPP4TowYVX/WcHxqdNsnFqwzaBYoq40HEACElacqLhcUUtbK
	sewJvtZ8Ef4INJqofWSaIb1QYAvN2t1KnNX5LL+J+yFGw8aAgQaiTWerGg==
X-Google-Smtp-Source: AGHT+IHW7batCFGdBLtbP+JC8crtu5XZRuwhBokK9iTbaMja/X7fCR6U/7JMJrBmn0k0rroxD8ARXA==
X-Received: by 2002:a4a:5487:0:b0:5ac:4372:1d6a with SMTP id t129-20020a4a5487000000b005ac43721d6amr4264852ooa.3.1714768289287;
        Fri, 03 May 2024 13:31:29 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id eo8-20020a0568200f0800b005a586b0906esm789736oob.26.2024.05.03.13.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 13:31:28 -0700 (PDT)
Date: Fri, 3 May 2024 15:31:26 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <20240503203126.uk32l2r3yp5gwltp@illithid>
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
 <Zit0nT-jhNPE9T2v@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xtey2zsatnea7vxf"
Content-Disposition: inline
In-Reply-To: <Zit0nT-jhNPE9T2v@debian>


--xtey2zsatnea7vxf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2024-04-26T11:32:06+0200, Alejandro Colomar wrote:
> > My questions:
> >=20
> > A.  Does anyone object to me committing this change to groff's
> >     master branch?  It will of course require a NEWS item, which I
> >     will write.
>=20
> Acked-by: Alejandro Colomar <alx@kernel.org>
>=20
> > B.  Does this look enticing enough to any documenters of C libraries
> >     for you to adopt it?
>=20
> This one at least.  :-)

I've pushed this.

$ head -n 9 tmac/an-ext.tmac
=2E\" groff extension macros for man(7) package
=2E\"
=2E\" Copyright (C) 2007-2024 Free Software Foundation, Inc.
=2E\"
=2E\" Written by Eric S. Raymond <esr@thyrsus.com>
=2E\"            Werner Lemberg <wl@gnu.org>
=2E\"            G. Branden Robinson <g.branden.robinson@gmail.com>
=2E\"
=2E\" You may freely use, modify and/or distribute this file.

Share and enjoy!

Regards,
Branden

--xtey2zsatnea7vxf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmY1SZcACgkQ0Z6cfXEm
bc4Zxg//SwcGzhp0q5OmRqYtKRsbqdJyGZRpVXq+O0rAU2BU7/7KZ6hGdDVV+LWA
KDO5NuSpti3GvKlWWq+E0uWgK16VOpF47c91M9y0sUM6Sj1veiytz7nIWUva4PdM
cdnyyYLMOzI4oIAJo6MyIh6tfCZYmF2sLbPmfRlGCUVKOPl21CWCGnAWh5tF1gg+
rSq4B86abQM3jhLEyYGnkQachVusvQPVmCAzVnqJKLFABkpK808wpwhQlT3lsKeg
Q/AU6o9dZdz/Hq5X9gqNzMozRqvcEU0VLG+yDqKK25/jrv5nRXxYfCEtETT2Q/KL
ZNFrcEVoQBrrH/eLWmGDmVo5mxeckpUB97TcBsXcE5Z8nDEfsaKrrk+AW7i6pkfD
1EtvEld7uKwyJywL2mNAxSEKqqpb/biGq0lRZ0t4S7ccvcT5im7oLBo2fkm8hp55
CZnBXvwbPkgu33nSVWJ2U/nmECwPvJkMpEZucYtTtUm9SmEvbNGcuDkGfMlmHxWu
URggwdeCyiqmdrynIRntMickaGHalQ+G0ZkdodXhjQRoIkR7rmH729XkYuXs1pBc
uO/T+T6KdcPvDiaQEOenMehKDevdSHNwmPsrYfOh1nrXn6uYgmNZQlrka7c2FWaC
3ESMQeLe55W1hV/w4inLHKt2ugIONLhLbEGgepd/9qSRCScdR1M=
=sV6e
-----END PGP SIGNATURE-----

--xtey2zsatnea7vxf--

