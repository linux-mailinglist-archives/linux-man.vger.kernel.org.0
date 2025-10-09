Return-Path: <linux-man+bounces-4096-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF0CBCB2AF
	for <lists+linux-man@lfdr.de>; Fri, 10 Oct 2025 01:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12D8F3AC274
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 23:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8029E1C3314;
	Thu,  9 Oct 2025 23:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nfvinacd"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB9C14A0B5
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 23:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760050851; cv=none; b=cDPYZHMu70gb9TV60p/JWGIuhApVoFU1MdBzW5Zk3nyNf29ep7p6CWRGTt3EvwmLjSpEH5p6fPTn7cJFBRWtmgjUMsK+GQJl26vKfwzKy/Qy2q3FnOO85PURl+Y3bxyZ68V6+ch1VBcg0UF5fxQW0PbP8LZJCzwAFnxB7GYXRFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760050851; c=relaxed/simple;
	bh=7mSVpLrZbrOevfsy+vEBLyztRQdsplsNrZhXJ6R4mhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WeYCYvAUSnodGcuQWmyl1O9vn3znOkQckdFYvAGhyam6XAdJL3pb8kJE/dJ+0/fhA4B5hNd7D9vTF44S4e4sS+6Dc4k/P2qcN9O4bpv4fWTZ/YKGDHwtqXWGfY0sYhT3mGFVradOzmuRkbgeeBWNGrwVqzLQ05ofE+gkrnvynek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nfvinacd; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7afbcf24c83so440043a34.3
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 16:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760050849; x=1760655649; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VVIpEq/m62qbWdyj7KbQXyuuJTVK2WeTIcmMNuXapWk=;
        b=nfvinacdbtcrbV6JTCSNKdpPSQkOSDfz/9eH2YBfKro74w3OJNV1TiFlJQH6lKKsrs
         ex/pgaQKJxBA8MJ3uvVpsSmqTu0QMlkhojUaGnaRyAPvBv7z2MMt7Ga79Xvtf4OCJGKg
         O+Iy7shypDbD7O01FmRWBAmPzinbpdT9q80StevEhS+UzIMtBHp+8OmYM/ncOxnh9tz4
         w1okiw/LBZqOFw4fsyrjSd6REFCSHkoCXGo92JdbOG5evF1mPaLW5MuK29m3Wh7pYyj0
         FrjIx3IT3xjkRx/jHQTVkI5HgGaZ5b935MTOEOQqWa0xd8LlZsY1hbGh2xLD+OyZ1b87
         RksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760050849; x=1760655649;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVIpEq/m62qbWdyj7KbQXyuuJTVK2WeTIcmMNuXapWk=;
        b=B/NEL36/pT0UTIgmjcCXb+/rljVUdSInNO+JDbicGmZ7e44G4KSNUa7W/p9nTy3Gwf
         l/BUfcDEmwEYvW0Gmr/Y1L60m0jjASNHDytjUQY2x7Fj7Df9l/Z1a6S2ZB/gmEPUPu0g
         pxSEUPPEd1IH1ZutyexwcdYyuGkOjjlm9fBuDuKscwEFVWfvJ8EetxenkLg5A+HSI9Xm
         orvOzGXOVzVQ0idScRVA2ADXifXy/I3u5URFikzP7rEOHYpcb7PAWTyvwpWiFSn9bSs4
         3q+vdZhzZ1ygI4TcPyQjw2DXb/1GjqN41P2IEEbuOF3v1+eAJQsTQr7e7WcgFVm4CmyP
         c5BA==
X-Gm-Message-State: AOJu0YwWqul7rjpz1QtHGOHgW7C4ItCCEwmHQX4OmTcWiJTtn7zG/UtV
	y16ys7ywUMuoLuXIGYH7vBIU8QleIftCqQNCzaMmO+c8CvU/pFqffE//b+vzTg==
X-Gm-Gg: ASbGncuOwkDGTk76HrgFTRLdetntR5Lg7hlVGEXNNMGlUGQVtYsribnt4qrETykiypK
	1WMgUjaSlFbnooEJOCwOFbF48kXPNjgNlJVkdVPLsapqbZTV3SSwULN3su49KZaloaszyWVSSYu
	Dj575LaZs5yE7OCfClLxbNZJKRRBxQVKPYUP77bpbJuGRgVn387kbqB6qvCcCY8T6rBK9dudpTu
	/sgFXnKr5jgogjKiw0GRwoAMSW2YqQjVvd0Dk/H0FMbonHF5UPCLh9/ynwF6bwRPJIOLhNEIZBQ
	B5GOOicFqn31zVp0gqFAmSolvXvOy44rHI0L2dU6n9BNroVeDuEKJv/uEWU0DwPNiEl2H28/jSK
	x+vJnno1VgBCAfa3I+TDXZFX7CUcdvlTIDaN8
X-Google-Smtp-Source: AGHT+IGV+Yaxj8CaAKWUEuX7SbCnFvtAWHkg6gmfuMYQytw0atF+U3kinkq+hYxtbjcnPU32qcc3Gw==
X-Received: by 2002:a05:6808:14c1:b0:439:ad1e:8485 with SMTP id 5614622812f47-4417b38c9e3mr4420394b6e.24.1760050848493;
        Thu, 09 Oct 2025 16:00:48 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3c8c8f653d8sm320437fac.28.2025.10.09.16.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 16:00:47 -0700 (PDT)
Date: Thu, 9 Oct 2025 18:00:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
Message-ID: <20251009230045.j3lljryhzt6kjcku@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <20251009215819.o5yc7y5pv3hmzgzu@illithid>
 <jld37wp2h67sgpkmdhoubnjamcjdr2hd66gwllmsl23igpyuc2@qndcfrjczlia>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vkgwrdm3efofre3"
Content-Disposition: inline
In-Reply-To: <jld37wp2h67sgpkmdhoubnjamcjdr2hd66gwllmsl23igpyuc2@qndcfrjczlia>


--5vkgwrdm3efofre3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

At 2025-10-10T00:25:01+0200, Alejandro Colomar wrote:
> On Thu, Oct 09, 2025 at 04:58:19PM -0500, G. Branden Robinson wrote:
> > Disable adjustment in all tbl(1) text blocks whose entries break
> > using a line length of 65 ens (the historical *roff default and
> > practical minimum).
> >=20
> > Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>=20
> I'm going to reject this patch.  I think I prefer to keep the source
> code simpler.  I might eventually change my mind, but I'm not
> convinced yet.

Okay.  Be advised that without these `na` requests in the table cells,
text blocks that have line breaks can look a bit funny.  Here's an
example.

$ nroff -t -rLL=3D65n -man -P -cbou man/man4/console_codes.4 \
  | grep -C1 'Select.*ISO.*646'
     ESC %              Start sequence selecting character set
     ESC % @             Select   default   (ISO/IEC    646    /
                         ISO/IEC 8859=E2=80=901)

However, I have an idea that might resolve this problem _and_ the one
with centering making the indentation huge on wide terminals.

Will advise.

Regards,
Branden

--5vkgwrdm3efofre3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoPpYACgkQ0Z6cfXEm
bc66Ww//UVg0aqm76qPYMt8NwAldCFqswxza3YL67rrLvwB3+7hhhLDF7sraTeRY
/XDMj9QjzedgOIB6mhSaT2W+LxAfAg8lCndxL3BqNToZMZyzd63KrYVr8dDdIX/Q
Eonvzm6mO9EGg5FKujEsP8Ey2+Gj4QmYpPBfUW4QDuXQkZtWuOB17N3SuMXJttnO
WdtkB1ihrqphVsUFBRCAac5ss8x5YxVDH/PIsmjkO4WDucRr/FDfCrWOsGagV2em
IPhn4YsmqQm+XlOno7MYXUOF6GmFoe/zOhix5vO2wjLYNgQkg+4/iHpXKPl80dr5
cEwieCnv+bYxWKFDFSIXnJ+Y/EJ3G/yaZQ6L+oKaSwoczIvOPy2fbx8p1xQyf+3E
HrJllMaI8cj9K2hkql5ea3TzbdHweZQPkn2SQLK7SQSMJrauYR/XDOzkVVaWtY/c
p5zi8Tew1h+uUoh9Ndmykw+9j8YdkBxhi9QLzTJS/dEDbsqzQIMvKXQ94ye1wHmD
C7HAkvjlpibw8Fop7oIB8SXoR3ZNoHSbYNgq4VICaZdtQsUfsqSE6TWySQ+ds+8Z
02morxPzY2QLhTyUb3ujQgzRPs4PzTS5aAQuGsNUFuVKdLi5tDL7ndkfnemHZNRQ
MAVMb7u3OR/v1sH/RC1Ob5ly2OPMWZvc23qgLgiFGAfnQ+xPJMc=
=BzbX
-----END PGP SIGNATURE-----

--5vkgwrdm3efofre3--

