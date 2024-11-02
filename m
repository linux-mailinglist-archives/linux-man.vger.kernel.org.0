Return-Path: <linux-man+bounces-1826-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C096A9B9E22
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 10:20:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 504A91F21DAB
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 09:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFD315A856;
	Sat,  2 Nov 2024 09:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jD53bc4f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6B413BACC;
	Sat,  2 Nov 2024 09:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730539213; cv=none; b=QtoUoW1e/9xnUInb9lKbP4usxCsJwSM5rta7UkH/KABxwzhwSDjRhH6XZhhx6aDjLGE25p1A2sAwLADDSsjECf30jVeNsT0KXpuagAKgOZ1exEnUfGhH+B/nH6f0tB1eo5sp/vVWHVC9dEmkpuWVZXVc8pGmy4ahM5ko6FdKaMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730539213; c=relaxed/simple;
	bh=gdWMNWxXFHL9qw19MfKzkIcpkx3y/3En0QAut+yHzj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ppqjffqyjGWkhESdV09o3Vrf8Br3RcnLLGbXUlcRAFqOiSV2+4V7JoeW9eijVkDyJOcxbz3mw9esm4qZNG1SWXvLRlv0LwK1EXklfrCgPpIj55nJ8pomUe51HaLD7b1FwykP/H8X0XAaiFsaCBMo0oCqoLN3FMhuKQGp3Tn5Qb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jD53bc4f; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7180d9d0dcbso1061087a34.3;
        Sat, 02 Nov 2024 02:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730539211; x=1731144011; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kpGFODYS8j6Lc9OgDllYcnBQdgtbbm75EKILrrrUJdM=;
        b=jD53bc4fu3eKgADSgSp5ryOi2Pt+RtUNSHkSsDjKTopyKeR8mxRmaTENTBHW9YKPZN
         bn2NpPYRqvIVGPbbACVzupUe7MWD8MM3v2wSsxjLoLEZl1tYaPF+5QAIeVRFpFZRR/zv
         qyt+9g6FHw3BiXsaUb+n4T5f4LfijoQysK7O+kCq3ciE2goKgCPInzPeSycxxYMLWysj
         o2wTqeqErhtQne2vCAnaIsVarmTUbjw3GW4pPO3TNx2WwcZ1LUBd40o58LOopUUajpMy
         Z3CLh5+eMRrx2h2Add2J5iKHwGZY4//F2s9F0OzeTaaB5FKxS7RfIKwhxKOAQX737Q/Z
         fY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730539211; x=1731144011;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kpGFODYS8j6Lc9OgDllYcnBQdgtbbm75EKILrrrUJdM=;
        b=FOLGGAPpPiv95a1TLUu2rrbjuEOAfsWfxjKLpwVRa8uvnYgVYEXPWmtKsao4lssoUg
         g9Ut5uhMXj38T4rSrwHFS7j4YeIbtvZj7iJ5UDwo/5G7evYr/SxNCylC8XuNX3dCrfc7
         FkkOLwylp18Tugq1eKzcW80lbfsqe83wqqD56Uojl6fLMxO7JeSsjQLa/5zj1wycTorT
         scL5XiuJMiaspqaqCSSpBNBWwyOaeCWm/nIcaqZTuqYXqVXft0BmBLUl+SZrXN/5PjV1
         NyFgebeFFNz5GajT+NXiwmt0HQ+TUCfe8h5qhtp+lOVUION52m4huUSc/PDEeHfhor+3
         KRDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0GweHSFZplVYDFWAiso7F7rIvYhaFvJ/zCUtGTnm2HEvo+T13BmvRO6IKljk9d//Ay6dUjexd4qyn@vger.kernel.org, AJvYcCV2Y7jssZ0Kj/ZSxSM949C3DWYnoI2ZSgBnA1wIVVH08r6bYL+SPSGzD269zqK7IDKeFyNB8qqNS6o=@vger.kernel.org, AJvYcCWvHxDHBiK+If7eRbDSbEB1Jbit2TSb5vAbH2bMicEEQLJpFUYtcW8Lp7MNt7j+kk63bJE8P6iQPTqR9PXR@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ5XKxMU1kyqwFcbiQcUeUFkhXfg3aFitL+dbMZpCDCqOYqDyh
	6BCHAd1FbK4tWvHs391F/oBqE83CP9E6Z06xAMhhxgkIKbYP73Ff
X-Google-Smtp-Source: AGHT+IFLReBsrRpmxL4vu2o+HK8LR5rKgVTw5Pae/xERGUN3VNDuKb5mCI4fypHiqCUe37x/W4d24w==
X-Received: by 2002:a05:6830:6015:b0:717:fe2d:a4e4 with SMTP id 46e09a7af769-7189b4f40e0mr8772997a34.19.1730539211247;
        Sat, 02 Nov 2024 02:20:11 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7189cccf736sm1089795a34.69.2024.11.02.02.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2024 02:20:10 -0700 (PDT)
Date: Sat, 2 Nov 2024 04:20:07 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Ian Rogers <irogers@google.com>
Cc: Alejandro Colomar <alx@kernel.org>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v4 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
Message-ID: <20241102092007.ixxtdc6u4iutxmam@illithid>
References: <20241101211830.1298073-1-irogers@google.com>
 <20241101211830.1298073-3-irogers@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4bjtnlpbcduyzdoo"
Content-Disposition: inline
In-Reply-To: <20241101211830.1298073-3-irogers@google.com>


--4bjtnlpbcduyzdoo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 3/4] proc_pid_fdinfo.5: Add subsection headers for
 different fd types
MIME-Version: 1.0

Hi Ian,

At 2024-11-01T14:18:29-0700, Ian Rogers wrote:
> Make the sections about eventfd, epoll, signalfd, inotify, fanotify,
> timerfd better separated with a clearer subsection header.
>=20
> Signed-off-by: Ian Rogers <irogers@google.com>
[...]
> +.SS eventfd
>  .P
[...]
> +.SS epoll
>  .P
[...]
> +.SS signalfd
>  .P
[...]
> +.SS inotify
>  .P
[etc.]

I suggest deleting the paragraphing macros when you add (sub)sectioning
macros immediately before them.  In these cases the `P` calls end up
doing nothing.

groff_man(7):
       .SS [subheading=E2=80=90text]
              Set subheading=E2=80=90text as a subsection heading indented
              between a section heading and an ordinary paragraph (.P).
              If no argument is given, a one=E2=80=90line input trap is pla=
nted;
              text on the next line becomes subheading=E2=80=90text.  The l=
eft
              margin is reset to the value of the SN register to set the
              heading text in bold (or the font specified by the string
              HF).  If the heading font \*[HF] is bold, use of an italic
              style in subheading=E2=80=90text is mapped to the bold=E2=80=
=90italic
              style if available in the font family.  The inset level is
              reset to 1, setting the left margin to the value of the IN
              register.  Text after subheading=E2=80=90text is set as an
              ordinary paragraph (.P).

Regards,
Branden

--4bjtnlpbcduyzdoo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcl7scACgkQ0Z6cfXEm
bc5BFg//Q9uaGXm0MGnz6aClftEXxT5cINEJIJq4ZOtnAqBKeSw5QBdlvDiPIMPr
Rv9yHC5rz5Ha6STdxQCX6feI2OImonRaWx8ZCl92h3U03Wxhw686lBGSfdHdwJqe
6sqMDyIVILx3oqnWkuqfs/SIKRkmbVBacBo0x6KSOglbHR/Swa9qEMtmyJzrnxzJ
PJctPqWtxv8Zd8+zNc1caOG3ckeLwnNtUeoVC4iOe3hFdSE3XBnm5hM0UbGFSYjG
AHcfRD3C8QsQYO+F9ikevajUwijcCXmyoQ6Pe85qqSL6Fcn1u7HHA705NEomDDD+
Bfn3S5txZANBc1IxGqc7CKnUy3MuoIYP5bmoF8VTje3crBCBaNqg610F8FfaLPYj
KR6mx29956y5GnfhAsYWx1nyNio+6KaBHXL9qE80Fwq4+s3V8UJT+Ii4jRd1cnI6
JXNMfdjf82P4gKeDLi31LsYUHxO/paq0gVLerw8YPtJUiozjM5QxbnvCCSx2zKr8
L7syuSsFt7VVQyJyY3REHT35LTxcNx7h/QRnXxlvM8lVLDzHcGegsk5lCCf2OMyg
YjCFZihestXdMtn74kSArBWGjjqW4Zu5gojc6dMXp5pC+JzeGxhzWFN6iFGPFgUH
LTQimXt367vOAdi9XpoaaG1FkZHiXXlMLcHbq315rctNKdsJAl8=
=14Tv
-----END PGP SIGNATURE-----

--4bjtnlpbcduyzdoo--

