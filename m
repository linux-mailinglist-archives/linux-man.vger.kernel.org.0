Return-Path: <linux-man+bounces-4086-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42150BCAFDD
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D5E11A62DF1
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7337F283683;
	Thu,  9 Oct 2025 21:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UySfqBeb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73C923536C
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047049; cv=none; b=V7t+GsCSOI/vlsu6MrbKKXPr6kIMkfsKHtkbzx4sxPNwFoSy8AhiGRyXEtChqFY2lF26unAV/nq1Gsby3Ofze9HskuDWTVqD0qzlLazigSc58rDZX8A0cZWASttQdS9Tzr6c32HFlB6a+GxKOi9+8hpy4W3B8bA64ipvESFhX14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047049; c=relaxed/simple;
	bh=LLDBBGqzJ4wlL77f1X7T74Z2MWqgdKkf2brm94OiVyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p0P33JqXuwrzbaP3oc39hzw4k1YpAt7CmnUWWRrZwVZTEo3XPgGk2lW6jn+KMk/gKrApOudRNGkNKn6VbH7gk1KgTzSU0W3pPEEHFOFOcoQZuJAhOM5xHDMxb1fJJ1fDQMoHzPD88WCoaP8oxrsg+ZIQTSPiVNBpjcp8P93zw/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UySfqBeb; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-638135d9f65so815292eaf.0
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047047; x=1760651847; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YGftW5tzmGTOfmjTJQcIeHUWk8E1Evc+h9s7/6Mq+1k=;
        b=UySfqBebCs3nNwtvRD/S258jTUIlkLYLJ6MMmsAXwRMWZthwU5DDY8YU/8HCEyXjSG
         uMiZdsTEXN4tZOIW+Hd8kEpeXJY2/yAlimPnIsvL6YWumV7iDVuT8Sd4O5n/BCIBwqfj
         w4Q55ToDsbJ47I97Kk4SRoDMzkRpSiVX0cXJPknBvyiIcvvgXPDgyKCv1Qg5RN61W/qE
         GRf1eh6s6FvSlloUUu8Etfga2mPOLPHnZKlFHTorBAUwtoxQx0+Dzt65B1nuwYL5pAqQ
         I7sDnDJ3FF7/sT0kHqbW123xi8kOBUXS4shFVxRN8Z33ku/CPNv4b2JEBe/AVrH1waMw
         /ocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047047; x=1760651847;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YGftW5tzmGTOfmjTJQcIeHUWk8E1Evc+h9s7/6Mq+1k=;
        b=ZjomU+D8WaK10xMWHj2TgimVRe8/KJXhBUo29RTcyO+/E1mtimBfgg4q+3d4k3xheJ
         Fgd6Xe1Gt5zRhlY7lpL4NVgp8cIISbjenAW7WGkrFgviKh4LCs/QmwmDz1acvqn+a9W3
         Wk9KPtuoMZM6FqHoUiQ1x284vbm7Kbz1H+eMC2J5znxc6i8e0p2mJibs4+BsBZRIceQD
         Rvy8ByWyKjOPdTF6KiFRW0aszI35SSWxuiIExADN0mkXj9eafhmh6JowADLxUSQRJset
         scj6Ah1pGZ6CVL5wl0KK5ouQsPqqeglEwE0dhKoYd9kuaSuh6fCBsLyEJC9B61nTi5DI
         LCLA==
X-Gm-Message-State: AOJu0Yyajufx5f04S/2O7azRzJIHioOUKjUBLKky9yU3kq/n21xNQxGj
	DGJe33+vFcvmT2sg4JwF0Hgk06wbfc1yGLNzTKF+NYgss8AAlEnScSnf2r325Q==
X-Gm-Gg: ASbGncttByewE5gQa/sic14lNCtbjbhdBfirUpZQRzdSiQv2WtfV3VdVHkNQ4eiHbhC
	6gIwbC9MKozct9444GUVbYgGSQRdhjjjzXDu5pgQ3A67M+QYpxsoLUzsKuotmvbQP49rm+dFy2m
	AoJ7OvKXekhSmWMTsonrznOyijmPXBxwz0ncvN5PLI6rxNzXfisJ7nvNK7X2PDbq63cGdhOM0/J
	BhgvqZOK60krZJG2aQiueD3NPxzbyeEIskCPLUT0os6pU17mn+gXwGkoQhOVEqM88GLSZLMpZmq
	rM3Dc/iQqXDdhNX8ifcVs5p86NYnGqyJZs2hcX0MEHUrndH7GsMMYgB2ZANiX6F2i+fH7UJ66uM
	Kmuako6komKQOSnKMWSdukiurEGNhtzVW0176CHHOuQoxkfc=
X-Google-Smtp-Source: AGHT+IGH1euzPBuERslZapUr0YzTklmiJ82fn9aqbcV6c8tmbix3N37HpMnYqhQtGuJyj8MI75jrtw==
X-Received: by 2002:a05:6870:9a06:b0:34b:9331:a9d5 with SMTP id 586e51a60fabf-3c11975cf90mr4006742fac.16.1760047046722;
        Thu, 09 Oct 2025 14:57:26 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3c8c8f2e7a9sm271694fac.24.2025.10.09.14.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:57:25 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:57:24 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215724.7gms7w7zosrlg44n@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zt65lpow57gagquc"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--zt65lpow57gagquc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 2/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Consistently put inter-paragraph space before tables.

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index e4fa71422..64d914d7f 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -125,6 +125,7 @@ .SS Linux console controls
 .P
 .B "ESC- but not CSI-sequences"
 .ad l
+.P
 .TS
 l l lx.
 ESC c	RIS	Reset.
@@ -208,6 +209,7 @@ .SS Linux console controls
 .P
 The action of a CSI sequence is determined by its final character.
 .ad l
+.P
 .TS
 l l lx.
 @	ICH	T{
@@ -325,6 +327,7 @@ .SS Linux console controls
 An empty parameter (between semicolons or string initiator or
 terminator) is interpreted as a zero.
 .ad l
+.P
 .TS
 l lx.
 param	result
@@ -409,6 +412,7 @@ .SS Linux console controls
 .ad
 .P
 Commands 38 and 48 require further arguments:
+.P
 .TS
 l lx.
 ;5;x	T{
@@ -514,6 +518,7 @@ .SS Linux console controls
 6 =3D cyan,
 7 =3D white;
 8\[en]15 =3D bright versions of 0\[en]7.
+.P
 .TS
 l lx.
 ESC [ 1 ; \f[I]n\f[] ]	T{
@@ -692,6 +697,7 @@ .SS Comparisons with other terminals
 .B Escape sequences
 .P
 VT100 console sequences not implemented on the Linux console:
+.P
 .TS
 l l l.
 ESC N	SS2	T{
@@ -735,6 +741,7 @@ .SS Comparisons with other terminals
 accepts a BEL to terminate an OSC string.
 These are a few of the OSC control sequences recognized by
 .BR xterm (1):
+.P
 .TS
 l l.
 ESC ] 0 ; \f[I]txt\f[] ST	T{
@@ -755,6 +762,7 @@ .SS Comparisons with other terminals
 .P
 It recognizes the following with slightly modified meaning
 (saving more state, behaving closer to VT100/VT220):
+.P
 .TS
 l l l.
 ESC 7  DECSC	Save cursor
@@ -762,6 +770,7 @@ .SS Comparisons with other terminals
 .TE
 .P
 It also recognizes
+.P
 .TS
 l l lx.
 ESC F		T{
--=20
2.30.2


--zt65lpow57gagquc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL8QACgkQ0Z6cfXEm
bc69nxAAnvEvLEw7FDMBXLKOt/kbPZ0Xmr5OnImwQttnobyZmEjXEOfEBagj/cDM
euvI+8UfJIAb/WdX79zZtmKq+8LHX/UNWJSWREtcoEm4GwP9Au4p337ccF6W4M/5
/qYSQ6tU+Poa9UfSdcaYMsYJJxbXoVbXC5GkPLw/9tLgKfFL49Qczt/DWHqBuR5J
rsp02qPTepDK4ee8MqwjOYNbCjKTrSyGXnMgMmkMFf/CB/BbUW76jc4RnrTNSZq9
obOiGc2T+btGNp//WnG2oVMv1aByrT0PyEJobAkMGbR8fFZfMXoqnEkX/QNoBR9A
lyxx5a5kJRSrRah0o28QJMROrSRZEKdk+XyxrXv2A0PX4CA957lCvnYoGqL3V0SA
KR5QwnJ5XqxywQru0/AvPl3glk3TQmcif2GgwqPMyK4rEYy820P/GQriDMllFciR
KZj1AeRwFp7b1vaQIFfp3tX+8pXyVDunW9KOvLj8wZcpsXQ1cA/1WvSCdlTB0V10
QbrYEOfj+Bi31d13Lazw1wp2/TaeCm5v3s9RLrdzRzTCvRSkgoLK5YpR5xi2f/SN
vpyvaT7LOD0XH6UlOqOuGDwKdGUwFQS7GkWdfXKMoyBrj9/iUppMnFihaEbvq+/i
EXfAjuALjyg0yoHz+azWlqkYD4IikF00px4SQZFqH319YULX+Lk=
=Vkrz
-----END PGP SIGNATURE-----

--zt65lpow57gagquc--

