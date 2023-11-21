Return-Path: <linux-man+bounces-124-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B7C7F25EE
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 07:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89B4C1C21868
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 06:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFC4219BCB;
	Tue, 21 Nov 2023 06:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZlGPHosq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E964AED
	for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 22:48:23 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1f937267616so989341fac.1
        for <linux-man@vger.kernel.org>; Mon, 20 Nov 2023 22:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700549303; x=1701154103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GFnpmNBGqB7jDWXNhms+0Nybl6q5ws4S3LeYLlGpCP0=;
        b=ZlGPHosqlf+QmvoqumOcBxf/twr0wBwGqERVLPSnHQN0BNLY2AuACOo5q7o1E0lqFo
         oKnJ3G7vf/9B7afGkigZ0L4QdJ0pilMeK7FOFNMIMId6gAKKxOtOKoIXB3DSR9YL2NcH
         EC20fkXsVA2rtWUFdwXfzu6lJ/s94MgZBxYT9XWre+FVmKkhI+uQbVcEoyUyuHEhYkpf
         RLaAOcI36aRnlCc5BKsEg+qb8Do0ZJl5Q0jRcVroCqpejTLa34UR5jpr62foKuFo8hb0
         D8yJnMj4WQQWDC2lY6HSf8rORWLx9Osgw4uvnrNTVhZn6ZzxUOMrKSmAXYKzdF15HaO+
         QyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700549303; x=1701154103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFnpmNBGqB7jDWXNhms+0Nybl6q5ws4S3LeYLlGpCP0=;
        b=kreG7+u2UxdBYUubnExqbonwXpaWXEyILNqk7LFFLSM6HZUc/hbmUOqaNdQeFDQRQu
         2RST7OtTLG25QlpuKR5kMXMt9oKl/YuNG761g/Y5e6qURUzKK7B+0+XZFug7JmZtBT1t
         NC094Lb5hhlDzOYeEsPDhlcl697g/idmOGEveD6Yr/3mcIX6Dwe0c+0/w6oh6kwXp6dF
         X9CJuWwLLhLrkVOEKHz/eklVzpLg/PJFYdYj4mFtEwY/oe6HTc+PRAkyAoTSoa/9hRSN
         91KNdzEbeXFmaH2jPNAs3poVhvIl2IUWjx/Vli2mf/s1z2nydWDaAuFTwcRqelWvBDYB
         dXGw==
X-Gm-Message-State: AOJu0YzCoW8XZe9V2dxmOuPN3XbSSq+FL0RzHhbzu6ZvPdTng0nJQQ0V
	QmqMwe8YJGAlSn40R85UEPQ=
X-Google-Smtp-Source: AGHT+IE8Ri11JRDQd9azlq1rkzznNw3CliOJvK8jwPnx76wI01ArxCFGRT9srZdghI5Bc03MCbLsww==
X-Received: by 2002:a05:6870:63a2:b0:1bf:e1e9:a320 with SMTP id t34-20020a05687063a200b001bfe1e9a320mr5202205oap.13.1700549303168;
        Mon, 20 Nov 2023 22:48:23 -0800 (PST)
Received: from archie.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id fn3-20020a056a002fc300b0068fe5a5a566sm7404923pfb.142.2023.11.20.22.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 22:48:22 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 048BB102106CC; Tue, 21 Nov 2023 13:48:14 +0700 (WIB)
Date: Tue, 21 Nov 2023 13:48:14 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Seamus de Mora <seamusdemora@gmail.com>
Cc: Linux Manual Pages <linux-man@vger.kernel.org>,
	Alejandro Colomar <alx@kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <ZVxSrmdVkalf3FL9@archie.me>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aEoxX4sJnlploWBt"
Content-Disposition: inline
In-Reply-To: <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>


--aEoxX4sJnlploWBt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 20, 2023 at 05:44:40PM -0600, Seamus de Mora wrote:
> Uh, OK... stupid question first: Where is ./CONTRIBUTING?
>=20

Please don't top-post, reply inline with appropriate context instead.

It is in man-pages.git tree [1].

Thanks.

[1]: https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING

--=20
An old man doll... just what I always wanted! - Clara

--aEoxX4sJnlploWBt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZVxSrAAKCRD2uYlJVVFO
o8/7AP9vc/R+5MVaftuBUwnvX1CNi/KnLnl/8WQpvDV3GBPAyQD/c3pOyv6ntPqP
k20AsCTgRtM32WAFxE8oc/+vDp/bfwU=
=Elpf
-----END PGP SIGNATURE-----

--aEoxX4sJnlploWBt--

