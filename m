Return-Path: <linux-man+bounces-129-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE9F7F2FEC
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 14:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD0391C21A18
	for <lists+linux-man@lfdr.de>; Tue, 21 Nov 2023 13:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4BB4A9B3;
	Tue, 21 Nov 2023 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q34+drVE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A916ED67
	for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 05:55:29 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6ce322b62aeso2973698a34.3
        for <linux-man@vger.kernel.org>; Tue, 21 Nov 2023 05:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700574928; x=1701179728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PxypaCFftPGZaSGAvXRxFp475HtKNKFrU7W0RYO2XeE=;
        b=Q34+drVEPTZmpNtzCzx5hre9IytD3YHVDg+iWpWn7raTmpiYunl65qrOJl4iTfOs0P
         1lrVL1wLA4mTLC4R0oLOHrqJqRL5HhpIiGh/UKWD7riE+E4PPp3t9ox8Z3vWKqq/Fe/9
         I6rmpvCHcfo/odBweHlfB+ULnAJ0jII9bcmuDQ382KeFN7+2mSUXg4mLAA2ltw6uFFq4
         BwiBPVfwZ0C7IpGqE0N1ComK6nIextsH9zedSK10ss7SJ2K7Wq0gq5vQOeo7DJ9GybFY
         jqe/mCLLIAa7iqn0k1LfFbqUjkCjmnAggf6fs8ufMfv7Qadd12ox7YfQliNEsa/uHL87
         1adQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700574928; x=1701179728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxypaCFftPGZaSGAvXRxFp475HtKNKFrU7W0RYO2XeE=;
        b=W81glIBcT+lGTHb+YkvVFdEviTV1WYPZ4czPO5gb8fLoA5dzfJ7jPMJ7RJ47kgBwyw
         gjOYxWbIJl/zHuVNboqKtvoV8ojK4IVSw8i/dLXTNv6NMQ6Ju3e1oKhxAIlJrJub55ZE
         xGeLFF9q/a6pqvAm7jqemE6QZR7sEF33ABcrH/FXVXZJhcABiI04AYR0u7Q8jwSfSO5C
         YlRXPxYb/TR7c7qVn/3U6NxwITGfxZFNKr6lNnfh1lvebnIq0KY/QYmcJsX9r8tgp+3Z
         0x+AO8Ezc6s5v78sgDSWOmn6J9yy2IzW4IOPZHXWR1/i0cwDQ70OuAB5blSG15d8SChY
         9wyA==
X-Gm-Message-State: AOJu0YyuQGAkxEeVimuhlZ1rsqZMq9yLmkH+lsC9VZwgeEW127D9Wg45
	v8yRIpwm0F7AwElotyx7eIe/qX6HMes=
X-Google-Smtp-Source: AGHT+IHFVEwC1FulSxcSRjt7aHRcVjUh1SjqqxTGbZgSy9g4BpzQojL0tFiZipEsZLpUsy+vy54b/w==
X-Received: by 2002:a05:6870:3055:b0:1ef:ace4:f360 with SMTP id u21-20020a056870305500b001eface4f360mr12447017oau.17.1700574928005;
        Tue, 21 Nov 2023 05:55:28 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x1-20020a056871064100b001e5c7cc54d3sm1723341oan.55.2023.11.21.05.55.27
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 05:55:27 -0800 (PST)
Date: Tue, 21 Nov 2023 07:55:25 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Linux Manual Pages <linux-man@vger.kernel.org>
Subject: Re: Add sub-topic on 'exFAT' in man mount
Message-ID: <20231121135525.cdildqelcqrnt3ze@illithid>
References: <CAJ8C1XPdyVKuq=cL4CqOi2+ag-=tEbaC=0a3Zro9ZZU5Xw1cjw@mail.gmail.com>
 <ZVvs3fgkANj9BSYh@devuan>
 <CAJ8C1XOZqA=T0z5eHTSdXvpMzBZKUmYs-9=bBUfy_Ok5wSUN5Q@mail.gmail.com>
 <ZVxSrmdVkalf3FL9@archie.me>
 <ZVyBmFI_TvmJkaN1@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ygyuiodhbfwwtqin"
Content-Disposition: inline
In-Reply-To: <ZVyBmFI_TvmJkaN1@devuan>


--ygyuiodhbfwwtqin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2023-11-21T11:08:17+0100, Alejandro Colomar wrote:
> On Tue, Nov 21, 2023 at 01:48:14PM +0700, Bagas Sanjaya wrote:
> > Please don't top-post, reply inline with appropriate context instead.
>=20
> And the mandatory example.  :)
>=20
> A: Because it messes up the order in which people normally read text.
> Q: Why is top-posting such a bad thing?
> A: Top-posting.
> Q: What is the most annoying thing in e-mail?

In corporate communications it can make sense to top-post (and not
remove any quoted material, no matter how irrelevant).  I won't
elaborate here, because this is not a venue for corporate
communications.  But I have seen some programmers over-apply the above
preference and humor in contexts where there are reasons not to do so.

Only you can stop Dunning-Krugerism in its tracks!  ;-)

Regards,
Branden

--ygyuiodhbfwwtqin
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmVcts0ACgkQ0Z6cfXEm
bc54AQ/+KfW9P4KHwWygQlRxWnmwqFcV2xzzJARymTI9LrlWnFaM0jMmaSOJ05oZ
LMSr7JFcR9PGb/qDlHCRxbNWQM1sP0qUVhdTb843PRo0fIAV3rEFqz1SME4S9CKb
TGDp7CxFVeZX0otDumNTcglmuMUA2hN3YIEOoWuLYQHapEfIij7Q3BJ3VkYaI0LW
agY1Nnd0X0aXezUtMWWzBQP+b/zS3XdMxUkVQdqA1og+fvjxZINkuiLFQhgw3H6F
tAlXkuhdqS1+8Yi/DYlBvvqtsxbhd3fbk6EmdDbj/Jc5QSbL8MqrGnfu1O2MlWMP
TnRItz/L0WCD9DbtLTIAifW25wh/sNglHc3ONHUZOxI/XIJ70sV+MqDTHL8rc4HR
/T0JtzXhwujc0tFsaIFlZKp/mQX8pMe9IuvAW27y2+f1BkhoOS+fPAy0NGV3v6lP
JqpqKyfZx4DgBndxxr166sS8czO84YEjKvUZAvc6FthBukv8f23hXv1UygWb9z1N
8ViIn3vvKs0Pra1dBRuToZobJPouNp+b4O9vI9Xh19R2WU7ouYfbsCT0cC5zc3ww
umnFDgLc1JUiKhlre1Vo6uQACxwOfk+MTB0fPsfglVadAD1GduvHdwVvOSF+cDx9
V4bytcsfRq/VKvNF23BZOs0wwnNxKIDYhhTbEsgvTlnM+FPbq+0=
=slnd
-----END PGP SIGNATURE-----

--ygyuiodhbfwwtqin--

