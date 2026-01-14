Return-Path: <linux-man+bounces-4810-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 658ECD20A88
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 18:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E655C301FB71
	for <lists+linux-man@lfdr.de>; Wed, 14 Jan 2026 17:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3007332A3EC;
	Wed, 14 Jan 2026 17:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QAK2bRz2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f194.google.com (mail-yw1-f194.google.com [209.85.128.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC0231ED7D
	for <linux-man@vger.kernel.org>; Wed, 14 Jan 2026 17:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768413053; cv=none; b=SuU2ZZcpuJGaR4Nw3vMq9R06FUCF15TDD7tks8eYB0r/2m6i4Wn9RhpH0idchyAIMFr2N4uXNRadw6z429PuNkO9fA/WVnT+tKhnEkK4zX1n4lDOHdhyu+AUWoVKzVGmVHacvNrwVX2i5Xdl7q9NDEpvXdHMP0B5zByuyJ33cCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768413053; c=relaxed/simple;
	bh=4HugxS99JATPZh7UtegD00ahZepCflNCES68LB5SC/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jNHmNco68iE8WEFSBa5INUBLKFTw1EpzgNU4AfE3Cm6MVg5HWtmRTjneHQfBaStsn8lWM4e6aaNnV8P/0HDBwQPueBx8Gghrc1E6rFpAuCb5piUz6eb4NabEmaLn7GM39RiiwguQPIcPV2r+lLhmkf++fcNMItpi3+on9yHRfAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QAK2bRz2; arc=none smtp.client-ip=209.85.128.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f194.google.com with SMTP id 00721157ae682-78fb6c7874cso172587b3.0
        for <linux-man@vger.kernel.org>; Wed, 14 Jan 2026 09:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768413051; x=1769017851; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D/yJE0mQv4t06ZIh/iLWxjHHlzd+ByfHco7ny6pUeOw=;
        b=QAK2bRz2Ud4s9PCofHoykgImszSWztLvBzhM92og1yVKpRd0GOKDXA/Vb+U+gP/+LC
         sE0K65eQYQ6lV3UZoP/pPrxT8YSGn9YilfwM+QsRuz74XjnUG1rDYXeQ4gsjNxiWBUYK
         Uv0t47Y9RfMuN5cr5zZgf6Tg+2qrDdbPBYS66zY07v8z/LewZmS621/g84b/r5zwSePG
         jwuyrUQipA2+9zAb0yjJrJhMv6gmUkACAtbSN3JzUVVyq3obLXG5MmyzgyU/ePxivncC
         21RE8LVZTCcsQ4O3vF8JW/ZGWyuRNFtxHhipnX6pFLysXojCsWSb83FFkX2nQvA/kbro
         MwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768413051; x=1769017851;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D/yJE0mQv4t06ZIh/iLWxjHHlzd+ByfHco7ny6pUeOw=;
        b=aZbQui6h8w5Us485f2GrsuV5IlyZGNhtwpRvUvFrosYYucgPKW7PRNiGINDqhn/HOz
         3vFsy9G2svD14qLbaF6P6zQKdBn7SjwLNy0k2EN6/QOgz8O9Ey/DXiMkz20Dc0wsCXdQ
         t7U7R+vFd558DGKAKDV+Q8KJtn3z4JGX/Jks0gMZ29xx4uICp4FO7XK1EcZ0PDDX4vrM
         xp42gg71erfu/vYmE62Cjr1zBHXVshI2vdI9DyxRY24jf67Rb1zySAYuH3HK0lqXLdi1
         jk0CO+1mFwaCFFyidwP0FP7o728p6g1HqXpsi0LfOnzfNKNVw5sh5V8q1HU0Gw3ROfBS
         Yhmw==
X-Forwarded-Encrypted: i=1; AJvYcCXvg+WN1cKXKYaRZG8h3qUPhTHeiq/HVuEg/crXIm0JEm5poXc9/ZTp9tI60kXJoLpwgGp47n4vhBc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6YonzQzuwkoMM288d+VxKYXC4L8zSusPIB+HmeB9o5SYgx8vv
	Wk8M2kW9Bd2ruQgKAgQjyhsVEA6YmonFYVmqtTpeDBbo6zyb8eNeCnz27BBMr9ME
X-Gm-Gg: AY/fxX5lfbflkWveSvOyxXJvN2R1S+dqRhWEba7wCHDCCNpkiymNL/6HvtDsUarF9u0
	vJfp5j99f4qfE0qW9itG+mgHtBr6smwjhhVJVa6cnUdoZnCEZihRU06yGBd2n8D6rrb+c3tRc1f
	dMByInhr1Fmn88eoJ9jRBQm2G9svV6Z9Ii2W2f4DOs8WMIIJ4edrjjXUyldypGJF36jhtmQz/SS
	2dgx+1uy7jpnGaJmZ5Vwekys13908ipg1C4WiKNmtqg6cTdFgztCSdry+YnjLR/cUgv7XDInF7I
	bKO3VT5Subn/ui/spnx5GX3HBwow+OzumiF0NprOSaItIdaq8iG+D3XkZSQ6YrvyokRIKq2fcsr
	uZvjFtjOLm3n0PCuA9ADTapiiadvX4Hn5wCkUHMbf66P9xOZyd/1If5IZqoTapMVRmIwVF3KvRS
	Qp
X-Received: by 2002:a05:690e:11c4:b0:641:f5bc:694b with SMTP id 956f58d0204a3-64901b11096mr2568941d50.79.1768413051341;
        Wed, 14 Jan 2026 09:50:51 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-790aa679385sm93186017b3.32.2026.01.14.09.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:50:50 -0800 (PST)
Date: Wed, 14 Jan 2026 11:50:48 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Jeff Layton <jlayton@kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Subject: Re: [PATCH man-pages v2 1/2] man/man2const: document the new
 F_SETDELEG and F_GETDELEG constants
Message-ID: <20260114175048.krre2hmydplaluty@illithid>
References: <20260114-master-v2-0-719f5b47dfe2@kernel.org>
 <20260114-master-v2-1-719f5b47dfe2@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jkasqkgh4pwlr6xn"
Content-Disposition: inline
In-Reply-To: <20260114-master-v2-1-719f5b47dfe2@kernel.org>


--jkasqkgh4pwlr6xn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH man-pages v2 1/2] man/man2const: document the new
 F_SETDELEG and F_GETDELEG constants
MIME-Version: 1.0

Hi Jeff,

The following observation is not a blocker.

At 2026-01-14T12:35:24-0500, Jeff Layton wrote:
[...]
> +.P
> +A file delegation is a mechanism whereby
> +the process holding the delegation (the "delegation holder")
> +is notified (via delivery of a signal)
> +when a process (the "delegation breaker") tries to

I recommend use of typographer's quotes marks in prose (contrast code).

groff_man_style(7):
     \[lq]
     \[rq]  Left and right double quotation marks.  Use these for paired
            directional double quotes, =E2=80=9Clike this=E2=80=9D.

These look better in typeset output (like PDF) and on UTF-8 terminals,
and avoid collisions with `"` when searching man(7) documents in source
and, on the aforemented devices, as rendered too.

Regards,
Branden

--jkasqkgh4pwlr6xn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmln13EACgkQ0Z6cfXEm
bc4PdQ//UVGUE3EDEF5ndu5zEhHXj/hcMFfM+I7PMz8pM0T8VyAW6b5BulvfNTJ6
vwV6/huGJJm0YsC8+nJ/amMBKQCqVgExqfeAZtJhS6U+KPylj2NpCWTwBUSFSXV4
6shjPzlLhoZCvj2pQ09qtryXVHeUhXC/SUDcyB9bBYQH4/ts7a+cmwZIy+cHbtFz
Qo8GSRM2DenWszaXvi/TknAHxZDpi2cIKMd4oPVtPSwbfCRAN/a2max+UBgoAAxZ
F88uVdAVtFdA784Rc79Mop6BxRkC5sRJ3+7zjXo5UpEMqNa9o8coJKL1fEGHScEc
OlCtHCx7n30JzNS6w2P11J32KD1gPnN2WMJuRN2Q75pauyroDyD2mDUQtEl6Qteb
C5HG5VBxdOSdDnJwNBvcmRmSD95pft0MdtC3OCPf0wFu2TO/IMTOBPeq+Foeny7w
bHdI+CruKKT/Jn6T17ai7044yX4UqigF+GDaZPqTwSwCpFnLd77qpeCb/ofsQogM
sAfc9xOpl1xHDHBHPk+gAVlOMdGLsC1G6GfFV1+5GF8RjSDb55N3qydUSnhcdLh6
qpYExh8bzVGmLktw/3XZBkb/CQ8aI9pyAgDoEV3a1v/vmsdW3fadIurKw8a/wZjy
6XSmbGkB3FbhfsDgFMz1YVJGMPP/L/epkqtb5U9BowkRO4gAArA=
=t2j9
-----END PGP SIGNATURE-----

--jkasqkgh4pwlr6xn--

