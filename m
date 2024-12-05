Return-Path: <linux-man+bounces-2113-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C123A9E5269
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 11:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93DEB163B1A
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 10:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D59241D5AB9;
	Thu,  5 Dec 2024 10:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IZcQ7dNW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B78D18FC83
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 10:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733394900; cv=none; b=MT+n6eD9aV8HeD7aosJfTFElcWVHoRAYdfGvYre+ybFCzbEGl7zYwFEs5nTqwBnTqpNgs+Uubwu9hBEI1qQSbaw9iChI5qhAL5pQayPyv9Z1g7U6f60TXN8CG1nZNNhoTMLMXWauSW+iSNdLG448pJ3YUzL+pBOos99i3dAiV4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733394900; c=relaxed/simple;
	bh=JqfxO31v597sh+lmd0aOsH0YfOZ7QyzCDv5HLlPmzVE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e0y3Gk161GxVGAhWzMe7nxN0AKdHmaTbDLa1FmsQ+jvAgnLDJK9HeVeSjn8sYxLWO8x/0UEC6qa9Z+GBqAoVeRauepdIuRE2rXBWPYyP8OikMKJEyQzrp5+gFobLawAomAoO0BkDNRR6fBlCYkESHOGD7NM2RZr/bfJrBTICbIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IZcQ7dNW; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3ea427001c5so470261b6e.3
        for <linux-man@vger.kernel.org>; Thu, 05 Dec 2024 02:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733394898; x=1733999698; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Lp5+8bD+v9UXlCTKllPeFGNikYXnJ7pFjOSsX+ZwRLQ=;
        b=IZcQ7dNW+8EfATl9fYf8OlYdfr2vEXLCpEHihEGHdeyC/zmxn8S5Gds5kv7jFRJQA6
         j6mIVHN5tBnSakit7veGG6W59qgJmCBo7yWXt+ShFyKvI7oQ8ARFwlPn9DcmDXAqcuDK
         bXkvG3bbQUDJKf+syInGyqLuQ8UHdZrLNMTVYVtcD+/X/+7GvPRAswFUeWWdKAp0nEJ3
         wYSVjKAT278YaUx+6nDuTM3kAeIUQesn8qOtodkFz1eLXxN21Ez623FvXWvtWRbKoa/W
         ffFLdENQhbYGADeGtdFlGp6jFOOrsODyn5sB66Ms+vSFOs06tGULVJZmyDgi1+0gE9yz
         l2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733394898; x=1733999698;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lp5+8bD+v9UXlCTKllPeFGNikYXnJ7pFjOSsX+ZwRLQ=;
        b=uVdNlOxGedQEc1bvDJ7EfEY4DqEIPbEIhTe4KHqOfQlQYd1yMHaD25y223/6csRKuj
         rhzuc3EnYSzyZLDeRhBukvxoRP+RGvGzbEk/5cTz3AheY4Ibk9fFAXkzYdAbdB0j+2yV
         pEfMlpZ1LkUmPZDALUCLY0lp7tZnXRbu1rN04RveyJIqyhz04Pz087GLfm3V2BH5tlxu
         WQgLcowGBNHjLZViuDObmUMl5H/LzHFMQT4omx+iq3h6WLkviwv+DDJq2GMSrUEcyrJQ
         0zkE49q2CzOJFQPBd7HtTk3Ey87Prwn9vVx6emg44rB44zKbN66AKLfQH73rpyduimb3
         d5uA==
X-Forwarded-Encrypted: i=1; AJvYcCXaq1XvGTcro+EFz5TmiUsEJG7ix4a1LlCTUF7jAkuoHBCqFH/atHJDq858wLLzjAucnqqAKAi0HJw=@vger.kernel.org
X-Gm-Message-State: AOJu0YxZjM2GHH45CLMKoI5pWEnqxAb6GAFSOY68+rsrlm1bMSx98LwS
	/IGcKSRkddSYPaH6k6ua/VKTLXYGS/YO43hPsKy8d8R8+UGkK4IQyI6MMg==
X-Gm-Gg: ASbGncvZxzlegujglNYSltVpdhKugH4wuCFV4Ja/wmfcPmmuoE6ZJRUGyYg74l72wVG
	XIaM+Ws0y+kdj410tNJ26nribHYEAbDUv+59sW9VsERQLJthujBhopoZANzswQeX2+yRww12aIu
	1YpS4SK1xX/rAN8y5SwscOEHHeBF7qYXaXkAx6zbhTytbAbJxoUcpVxXjhTshTd+39/lh70AKcN
	sRMRkXRiZIA+l/6IPKDOBm56QtnBqnNRdFGUAoo
X-Google-Smtp-Source: AGHT+IH3FounrRV/eqKv0kEAP+qHj9JFVomSKhV0fGD2lM0moeJyuX4LTpktWn4q9N0rBvpr3DeStg==
X-Received: by 2002:a05:6808:399b:b0:3ea:5705:2a30 with SMTP id 5614622812f47-3eae50c5177mr11185667b6e.36.1733394898059;
        Thu, 05 Dec 2024 02:34:58 -0800 (PST)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71dc497eb28sm248695a34.42.2024.12.05.02.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 02:34:56 -0800 (PST)
Date: Thu, 5 Dec 2024 04:34:54 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: John Garry <john.g.garry@oracle.com>, linux-man@vger.kernel.org,
	djwong@kernel.org, ritesh.list@gmail.com
Subject: Re: [PATCH] statx.2: Update STATX_WRITE_ATOMIC filesystem support
Message-ID: <20241205103454.ihxar6bhxjcv2gzj@illithid>
References: <20241203145359.2691972-1-john.g.garry@oracle.com>
 <20241204204553.j7e3nzcbkqzeikou@devuan>
 <430694cf-9e34-41d4-9839-9d11db8515fb@oracle.com>
 <20241205100210.vm6gmigeq3acuoen@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4sik7ztxe2ipq7la"
Content-Disposition: inline
In-Reply-To: <20241205100210.vm6gmigeq3acuoen@devuan>


--4sik7ztxe2ipq7la
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] statx.2: Update STATX_WRITE_ATOMIC filesystem support
MIME-Version: 1.0

[trimming the linux-fsdevel list from CC, reasoning that it cares little
about typography]

Hi Alex,

At 2024-12-05T11:02:10+0100, Alejandro Colomar wrote:
> No; the comma shouldn't be in italics.
>=20
> .B STATX_WRITE_ATOMIC
> .RI ( stx_atomic_write_unit_min ,
> .IR stx_atomic_write_unit_max ,
> and
> .IR stx_atomic_write_segments_max )

Style authorities differ on this point.[1]  At least three factors are
in tension:

1.  In traditional typography, one does in fact set the comma in italics
    like the preceding word.  To some eyes, including mine, that looks
    better.

2.  It is true that the comma is not part of the named parameter, so
    under rules analogous to those that govern quotation marks in the
    U.K., for instance, one would _not_ put the comma in italics.

3.  It doesn't matter all that much because unlike with literals, like
    STATX_WRITE_ATOMIC, precise copy-and-pasting doesn't buy you much.
    A formal argument name frequently _lacks_ a corresponding symbol of
    the same name in source code.  Users of memmem(3) need not name
    their parameters "needle" or "haystack".  So almost no one needs to
    precisely aim their pointer between the final letter of the
    parameter name and the trailing punctuation.

Given these factors, if you have a strong preference here, I think you
should document it in man-pages(7).

Regards,
Branden

[1] https://iconlogic.blogs.com/weblog/2011/04/writing-grammar-do-i-italici=
ze-the-comma-after-an-italic-word.html

    https://english.stackexchange.com/questions/9878/should-punctuation-sur=
rounding-italicised-words-be-italicised

    (The foregoing quotes the [in]famous Chicago Manual of Style, which
    I generally like except for the malicious lies about historical
    inter-sentence spacing practices promulgated by its editor, the
    dreadful Russell Harper.[2])

    https://style.mla.org/comma-after-italicized-element/

[2] https://web.archive.org/web/20171217060354/http://www.heracliteanriver.=
com/?p=3D324

--4sik7ztxe2ipq7la
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmdRgcYACgkQ0Z6cfXEm
bc6Exw//YqkMUaWjQLEFd7xMjkBkLqXiY9x9gx9YpdoIaPv+wL7yg6/4HzNYJ321
H0WkZ422ZfyVfXfbFmdbIFRDN0e9u9KjDLpiSC4g7LLFwT6aT3yc4zn/kVtIOe/K
tUEHjuMEsDmwleQf56ots8JsKasMDfpkOhXNYOzlr1iMhZ7Km+Gciv91vB2Nqnnr
/gu7VKnz9fP3cx06kcwdHniJA1tpQo5rg5FnzAqJ7M66oBKM0rtNrfU6gCE2EpYS
eRmMAjdtdzsi4ZdGWjJMRJBwnFzKML+x70rdqy8BNwinNSuvpLxsadRlh7ynFqOQ
/6kijf2uObLQB8Y+6IjJW3RX4Yn7S8q8k7MOUDxiXnzJHV/FMVUG4PFZm+1uweq+
2ufCnB67l6iruZEu56xrGoBW3sPjchWc33cXBGzy+Bhx3v8gkjkgf7ifdBY4asS0
bFRKMdZhvCppcNJe+32W7HSXvMv6gy1umQU1MWKIxbpZehE+gwvXiAEsAisL3O0c
k6nnxD7ShW/nDhtcHA2X3IV9q0pWvqX/NklH+6uvUoOH7Rw+DjM7Gv0ULKLjcGBl
nfm/EMRczNTjYpVPoONZoHgFiZatiSQaattwt0xKHd/dw9pyKYK49gIPv0aTqrzg
2bLN27JAuEZMWulJmhRxUHMGLVOIZdU1wfXsU99L+VBV2IojJ6c=
=uZ8L
-----END PGP SIGNATURE-----

--4sik7ztxe2ipq7la--

