Return-Path: <linux-man+bounces-3006-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B134FAC2B4E
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 23:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC50B3AD122
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 21:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34391F758F;
	Fri, 23 May 2025 21:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gcCq5Xw8"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D85C29A0
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 21:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748035328; cv=none; b=Kw9p15YBaON2N9ZEm8WBoovSHpAj2xISHxt5/+x25QdTO75D3jbMHGx5oivoSN6vscE6HvmMDCYudJvnnbO7gowmonuik3efGosltNtZp7OT3806x8uIQuNzUboRVARvYxcf24xVn/5LmDGLYs9bWuQ44NxLIVzWrHca/WWk084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748035328; c=relaxed/simple;
	bh=XO8SBGYy5iG+EnsOODOVNyajvORfexYwiFaODaBrI4U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=k/dXnTmYzlebtQtpe6EAb+DWKS2uTKrB7trjXwHcRBm7l+qTI78vriiqfYPDEIsJgDI/2uIaMA8QHGAE1iloOmYc+oeXY+Ce7DBt36vsz7kxJz4a7S9wuvzS+MIlwNhBshY+Ty2/3E81ox//zYeNd7hYqrnIhP5PNi/kDpQMWyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gcCq5Xw8; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7399838db7fso360406b3a.0
        for <linux-man@vger.kernel.org>; Fri, 23 May 2025 14:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748035326; x=1748640126; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SBfY4GNFzngyn5L0RySxEoXGEzzqYpso6tpM0DWBHZ4=;
        b=gcCq5Xw8K3yqtYfCkuW4KXxhhD3rBn2iTPuNVWn+V5YY131+DTIeaPy2Av2X2R3yhq
         yha/7wPnGydM/Po8tKpKk94SK4JQ0/Zu7uBvUuxTLv03ecfzhfuvHCIDP47wuA2/nc9X
         cPYwq7PMCoUgO/UUEcpO9p/RyK1wdY8FRhZuyB7T4M+SyCgXggsff/lGUAnBgAxK/28v
         pP+OajNiqIBKEpBeS0+bUoEBTmPQRaJRGuuaqO9TPYb7PnadA1ab3MKp70HVSnsa6q1l
         Xqb68BovPdWM0/CFQ/6i53XXiHhTKMz/tp0ZSChCPKYzaaUJrB3jJqMhO9aAi89PProf
         WIHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748035326; x=1748640126;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SBfY4GNFzngyn5L0RySxEoXGEzzqYpso6tpM0DWBHZ4=;
        b=qhhtiaOueUrjb8OOySptxtYqwyb/lqWVG9lXocI0yICaUnxADEjHJW8fQ5Po+ldcIz
         ftPcakge5bPBBHOFnnfuNpBRWn99SPzi+WacW1WfqHUq47HGc9KMBTxMIxz9MEvHPfDs
         PJmBxvwj3xvwmXFdi30UI6+WxQ0CjTYWbhWYewBZ81kyldXuFTCe/i8frO95Kt+pjTXf
         qmx3VrgnAzHViuLQQL9xyEIpmYzcYp9QBXB7sGM7YoqxJY/BPM58lIWKpXRMen+KFjK5
         cjrKeEQuFHHOrlGjiRkMRLK4mfjh36t6PAxGl6mroji5Thm4mX3IYr/q0HfQAsUK1K4Z
         SjAQ==
X-Gm-Message-State: AOJu0YywoecJnyHR0cxP4xS195EQkIrtNO3JL20bYkGuyzGrqfb18aDy
	nWdGQvxFbULetb5Avksr0N7NU/g3yDO2+KAP5zqtGPxFP8hjzRAQNpYX4E6UJw==
X-Gm-Gg: ASbGncu0tzz8Fasf6SaSnk6HAY7LvSsZaxanUfmEP+x8DSKC6/4bOvqhiJBq0UBkDYi
	tSqC8r456DkGra8Favfz0qS6TDjwRe0XdmOauxLwGF4hYQtnrk3Uz7yy1+xnYmggVmmQNXOVrOh
	N15MgQV1Tsb1eBb7q6IjKYOHyE81bwzCnG7zanGBWhrFqCDGHw5s5jgvQnVQGuZyQC9KGG9hINO
	SNzoohlc9w6wLDzhg0tV2zV/Qk7gLE8FueCCO3DE1tCUsBPfKxnNq3KlVZ7XipU82DriIojpo9c
	VAnm7VkruhzBkZxM8jprededcs/WWgI/
X-Google-Smtp-Source: AGHT+IEqKMTVdScCgmMSt1E6+uj0MZO4qaAUxOoU6niBhhpmn09dUGvSOXCusV/2MR0I9/+b0R3lOg==
X-Received: by 2002:a05:6a00:391e:b0:742:ae7e:7da1 with SMTP id d2e1a72fcca58-745fdb50dfamr1557912b3a.0.1748035326220;
        Fri, 23 May 2025 14:22:06 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::eef5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a986b38bsm13207527b3a.129.2025.05.23.14.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 14:22:05 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
In-Reply-To: <ydg3rotetynkavjxl4tg6piizlwgoohh75b3fghnkv24yrhnfe@s3fjptbq4gs7>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
	<f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
	<ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
	<87v7pznd4a.fsf@gmail.com>
	<aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
	<87msbaop79.fsf@gmail.com>
	<cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
	<87v7pskob9.fsf@gmail.com>
	<ydg3rotetynkavjxl4tg6piizlwgoohh75b3fghnkv24yrhnfe@s3fjptbq4gs7>
Date: Fri, 23 May 2025 14:22:01 -0700
Message-ID: <87sekvvx8m.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hmmm, I applied some patches while traveling, so they're probably still
> sitting on my laptop and I forgot to push.  I'll check this weekend and
> push anything I have there.  Thanks for the reminder!

No problem, just wanted to wanted to make sure my patches weren't going
to be annoying to apply. :)

> Have a lovely day!

You too!

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmgw5vkACgkQjOZJGuMN
fXXjvA/+Od/2hq82pOp03TQ8n4kH61A4dJJp+npNIUg5e6xjY7aqoguaI6YRZa9/
0NA+yCAiUtc1IhqvcANaWkzbyiEkXDrVGdlzrxrMoyc3J1BA8V4+oRL43733ZjvN
Xx9/8k5uLeEzeRfjoRkNlO+rx4DAmMlkaf+owm1Sz/XTBJ9xaO3UPJkvUAdb2S+8
2Hn4m0s2LoRAdgT1/M1u2eHmQi2AKxSGRY8JdA42z0IwMbxyW7LkalEyxxmlZYWL
r0sbhwF6VapHPuflzanQgGcPWTzHbP9+BGa3rjlOwYn0WcQV+CesOSIzF313zyFJ
+vWD93OWkmve1BMHGszKOOLCOMPZUQgVIA240p2rmoBEqdE7Jdk9i7d2IDbVgV1d
WNcGOWfC3KoZisFT+Vghr1uJ8rnAIMZiLTVz+SKM/Z2eA7slllI+tKmrCRxUCDcM
AB7a18A6Z1ABwG0k8Zz6945rJDDPHwtnW3g1tHBek+gga7XJkHKL6MGDqxxbHSgA
JyAqidoQNPLTheyMS8F2ptOUIHX4IunwMuLFohpUAPXGALPvwBO0DjL3yUG9yq8w
mDAGwkr+dyvNXGBsmriw8C4hT1nMS315jks6wQtvLSvrAq9PJAfZ5SMnzLr/3zeN
jDIKsj2gatNhKOa4CLtMUqEYbAT7ys4IEwjH4gU0HAl2Iuh+u9k=
=0GMb
-----END PGP SIGNATURE-----
--=-=-=--

