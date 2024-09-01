Return-Path: <linux-man+bounces-1753-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22434967464
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 05:25:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83DBFB2182F
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 03:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5701E89C;
	Sun,  1 Sep 2024 03:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cpf1urNX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4244317BA6
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 03:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725161127; cv=none; b=sVeKzLF6VfjEbgo6XUyhsAHhVHqjSjgXNr2xltW8tjpvZXtYU3VPV5+hykRnDQRGwptehGz9L8ZbFhkWN04orNMe4GVNX0RdZeGCybEHjpDUUgvQn5EVbLli0VS/4Y68AKt1fqkfevJ3S1SPiuz6OVth8RHwxUsy/m7V9h7EkEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725161127; c=relaxed/simple;
	bh=PoPFbODK7OPXl3zgKY3U7A0nMPfcgYoDc4sz+wIdc84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i33Mg1WfHRskdes61zwi56LUmUSDcP6WLPaXmSNHvavnPSp4356MGciNtt+p3BSz7xJdCk3xC0z2NJQwesXMcS9wBp76AnCb4MWUcMV9gFVsZW7JaniI+NTOfUYKkywUI4EGZTW5UA+L4YGfJQBGlweibxLdMam+6vE9r3V3ihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cpf1urNX; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2702f91b6c1so1714037fac.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725161125; x=1725765925; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=G4jacmICqQJfAHFKf8oq3Qp0yKZANcWtLqUfgrC3WDQ=;
        b=Cpf1urNXQyCP8XRG2VHazm7SU9jgUy/yGKaCpvfcG3ddDOydcOx6fgRPOU2Ep95qZx
         y20FOtJmE6lwi69qvurSKdRhhoKUk0zLKBoMR8CiGqgajMaXIhYQMH4jz8MeFry5BM9t
         jDzAiwl1CTT5eV7ioXLNE8qoLt3DHfJ6eFu/P5bHGkFTKXYAORnMx1+J7RzKNmbmqtix
         faZbx4k8EwUT7QoG0JxOPiuGLE2mFYqj5Zhmn9TBSaWVhXA3y26Iy/ozSXuoJCYpjuOZ
         J58SvxefYZXAFrTBqGxob07qfpShQNp0us/OvYqMfmjPQCFVZ17bg63VLlacvtZdPfXh
         mqYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725161125; x=1725765925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4jacmICqQJfAHFKf8oq3Qp0yKZANcWtLqUfgrC3WDQ=;
        b=difuwp2SW8SXEiEmHG47kVziHJuDb1nNbkrW8shQugafBHSCqgAuYFCDL5m515CoQk
         66o6k3+IOy13HoOoGqrSAgarbwTKKua0Ts1HkRzYAnRqoR7f1h/CLAHLsV/IK20yJKx4
         1eIsZZDTLrBgsI8LMX74LK2JTEY5oSpeenmOxPSTDJIMy3SguoTCaaZP5l/ntH5NjKRl
         pPsOU3tcmbFL8WEm4ks2VuaeY+i/crOYqoF4rwRQTlZyxLMaim+xEZT+MkhLxgoxnBS4
         2wuaAznL+XwfQNwT0V9JFcKI9Q4k9jMRRln0aiIdIwcAmOq88OerpW6EVppD4Y0cPeZc
         xLww==
X-Gm-Message-State: AOJu0YyHJgILBFEVdEdAzVt/sIbx567ASLTdhMgyuNEUtnbqTWvREEUI
	ozyJfdtRpQ+9wVJqKt2RriTQkxIr3GTBiuehjUGS9iAzy7EloZu3
X-Google-Smtp-Source: AGHT+IG0dlR9oFvYdFIorQjCIUnJyCCytOabFWivu3J3E5GEACW7bLoyoJkL3hz3nKk4cHuB1Dkxaw==
X-Received: by 2002:a05:6871:7293:b0:26c:5763:e6ab with SMTP id 586e51a60fabf-277af15097amr3053233fac.14.1725161125262;
        Sat, 31 Aug 2024 20:25:25 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abb708cesm1583739fac.24.2024.08.31.20.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 20:25:24 -0700 (PDT)
Date: Sat, 31 Aug 2024 22:25:23 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 04/10] utmp.5: ffix
Message-ID: <20240901032523.qsfzdca46pcr524f@illithid>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hvu36a2knobt7dkr"
Content-Disposition: inline
In-Reply-To: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>


--hvu36a2knobt7dkr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 04/10] utmp.5: ffix
MIME-Version: 1.0

Set init(1) man page cross references like all the others in the page.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man5/utmp.5 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man5/utmp.5 b/man/man5/utmp.5
index 2d3255721..0139241ed 100644
--- a/man/man5/utmp.5
+++ b/man/man5/utmp.5
@@ -81,7 +81,7 @@ .SH DESCRIPTION
                                      messages */
     struct  exit_status ut_exit;  /* Exit status of a process
                                      marked as DEAD_PROCESS; not
-                                     used by Linux init(1) */
+                                     used by Linux \fBinit\P(1) */
     /* The ut_session and ut_tv fields must be the same size when
        compiled 32\- and 64\-bit.  This allows data files and shared
        memory to be shared between 32\- and 64\-bit applications. */
--=20
2.30.2


--hvu36a2knobt7dkr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT3qMACgkQ0Z6cfXEm
bc6I/Q//flmNe8dkR+Vj+Q7dyCHFDQ2blhcby2T2xnteGrmAA4ZFBEU/VnWHOg2K
ltpvzlvuV587xqmaXemn6OTbbGBMLu4toH1hI2eG7yV9PJqVt9qERA12y+nSWW8U
1oxLex41wmRPEw45zuFR6IjuHVLEFP4EQq1QuAaQUei9+dv7MAXkP6LNQKe+yyHQ
UCd0c+G8p5xzc7jlViAu/5WSFbwh10th+hFbNEkFMxM1E0V3S0Xqs4+cRF9f6RT7
/bKUPSA8gh/vaMx/9O3AaDO0BR422WaS2flb1ZpJU2SA7gUFe7GkNGEQMZODmriK
di3wiwIGcBcoTaWZ8JPOZL1eV0sq/QRsd8oFraH7OAhGJlwlKZwVbC4HzevXX/je
lVlMiPFlQNljf3mZtBtbyi3SFJYH7TIo3gd4ABpifILT5s6RpKcAI4v+6cD1eG3K
bIZ3Fm0jdYkiCdMGK1fKYnQWIWu4+2bzw0vx/Mu3H5csCv2kDf8tpaeUoEgHkee9
Lu0un1P54fd9Bj5WelS2mI/GoY3e0z4/QB9qEwap+zj02UIOYJWudZHnOJ9t+U7b
E2AJd8NpdIT0wOf1Ret1Vg+WiEzxEXDHAj5M3PupJ/5Ox5ED4/c6P+xjZDZUnZAI
lQqX05D10nPURoSTKJunvixPkeHTDnLCJ0vcJcf7a6HPZgGDVAk=
=dZyD
-----END PGP SIGNATURE-----

--hvu36a2knobt7dkr--

