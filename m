Return-Path: <linux-man+bounces-227-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C4980779F
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 19:34:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1D9E1C20F48
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 18:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070304184C;
	Wed,  6 Dec 2023 18:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bHtoq2/K"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20813D40
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 10:34:06 -0800 (PST)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5d3d5b10197so390787b3.2
        for <linux-man@vger.kernel.org>; Wed, 06 Dec 2023 10:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701887645; x=1702492445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CM47imxklPmlQMEH5p5ka4UHZADGHrX7og2DsdWV8BE=;
        b=bHtoq2/KVc6V+LaFNHvUYb1HWVcvV0xIXaPXVLAx/dMJcC8wDjdwCSUq/J7pL1S2SQ
         MW/M2Hv6jjlb4nmylNuiUuvx6Bjdp/SQFxOJxwf9Y5WKX4zyM3oalf85dBsejD/HWCmB
         Pvr1A1tJzH3LbpEUb9jqouolYvAGS2Pu/ytnwo2cOM4+y1Od6renmB8T9odv9wocwKUB
         h18JBSTdSu4nkeA5tumNLT9R5V8VtOMJxw8QQqu7FhStjzaxj4xr76oVnv+UdnIKMoJU
         +BQbzMzo+JqkHK+IuyH4pjLoY7rse0qIQanUkM/LOQsGmvvwgtkkQ7FLQAnxYcKSMsvo
         ZEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701887645; x=1702492445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CM47imxklPmlQMEH5p5ka4UHZADGHrX7og2DsdWV8BE=;
        b=mMuAQIn3oIgV5N7bYR8LCrcklFqv7e1COWzCTbcRyIZFWq6sATO7iEHwe409fdHtFw
         6s5by5TYuuwedDQors9fzQImLftOAkL0Wl7IM2OrLJPntWtx8pcazvXx4xfQ3t11r3EN
         PHidjyngWq/nQYoYUvCLqtXNKkC8S56WJ8HHW5fp/Fn/EyphTc9cGb1V6DOt7fFKy9lb
         X69Nc8izyi9a51od+0meCEsVXlvcg2haxyO4cdI7BO7zsqb/Hk+FXU+mY9JAmvw0KsXy
         XcFWMkfY/m+w4Pxx45RlS8uV27brpNfkhMMSb5W3jt/wPM7PLSvPAOvY9G9DAZGLgAUs
         omiw==
X-Gm-Message-State: AOJu0YwZvq7DuZNSdJJrWAHNVDbRU3KlJl6EwI2R1FxmqZnw28HCzmuN
	RReIKlSuX7QnqtIIOL8EOlfAY9ZzuwL7ag==
X-Google-Smtp-Source: AGHT+IEcFu8172McNXPewg2VzmS8RoU4IUbsHtFhaJHLe3wBMruaqzSaJO8z82fVL/CLbBPYCabq6Q==
X-Received: by 2002:a81:b648:0:b0:5ca:d2ec:7ee7 with SMTP id h8-20020a81b648000000b005cad2ec7ee7mr1163630ywk.32.1701887645264;
        Wed, 06 Dec 2023 10:34:05 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id c186-20020a0dc1c3000000b005d80a7711dasm130888ywd.138.2023.12.06.10.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 10:34:05 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Date: Wed,  6 Dec 2023 13:33:50 -0500
Message-ID: <20231206183351.749567-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZXCjD5dP-jaUpeER@debian>
References: <20231206145132.5538-2-alx@kernel.org> <ZXCjD5dP-jaUpeER@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 6, 2023 at 11:36 AM Alejandro Colomar <alx@kernel.org> wrote:
> Also, I was going to ask for strtoi(3bsd) in glibc, since strtol(3)
> isn't easy to use portably (since POSIX allows EINVAL on no conversion,
> how to differentiate strtoi(3bsd)'s ECANCELED from EINVAL in strtol(3)?).

I feel like this is rather overstating the difficulty. In practice, the
no-conversion condition is very commonly detected by checking whether
*endptr =3D=3D nptr after the call. The usual idiom I see is something like:

    char *end;
    errno =3D 0;
    value =3D strtol(ptr, &end, 10);
    if (end =3D=3D ptr || *end !=3D '\0' || errno =3D=3D ERANGE)
        goto err;

Of course, the *end !=3D '\0' condition can be omitted or adapted as
necessary. Alternatively, one can avoid checking errno at all, by just
checking whether the value is in the permitted range, since the saturating
behavior will make such a check reject on overflow. And even without an
explicit permitted range, one can just reject on  on value =3D=3D LONG_MIN =
||
value =3D=3D LONG_MAX, or just on value =3D=3D ULONG_MAX for strtoul(3); re=
jecting
a value that's almost an overflow isn't going to harm anything, except for
the rare scenarios where a printed integer can actually reach the minimum
or maximum, but needs to be round-tripped unconditionally.

In general, I don't think most programmers are in the habit of carefully
distinguishing errno values for <string.h> functions. They'd rather check
for self-explanatory conditions, such as *endptr =3D=3D nptr, that readers
don't have to refer to the man page to decipher. There's a reason that most
high-level language bindings return errno values for file I/O but not for
anything else.

Thank you,
Matthew House

