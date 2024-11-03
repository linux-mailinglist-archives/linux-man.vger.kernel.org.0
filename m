Return-Path: <linux-man+bounces-1848-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B64519BA35B
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE7B21C20FEC
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F0B64120B;
	Sun,  3 Nov 2024 01:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VpmDeSp2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2332FC0E;
	Sun,  3 Nov 2024 01:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596176; cv=none; b=XwDzSl5sV4S+uCWtYFmxoa6XvzwztQCiwRA4Zu1N/IA7VdEJxicpQqCgzr6biQWCYJWuOZFqsn4XQAy21A9zvHDOaKzWukAzMxNOuc9z/TdKX/X4DpwEs3LCIgQxlg5nhe3Dkw5TqlmmD6i15Gv1Pv1KRjA2AbPsQ5jAbhaiCxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596176; c=relaxed/simple;
	bh=Yy8qzV5+qq/0gcLCIiA94JzqC5cnQY6ggSMLyQy8jis=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uXHx/OhlZCXkkRDBWQjV6xss3j86wOl9VPx9pr/sshmNj8ZFzU14rCV8uZvz8T4Boyi4X9/PnD/Zc9QsCxsf5hXEg395c2uysAC87R5C1BHp6F+IIe9IDVRNdJe1TZRag+P+wUT01sGkSo+sAR8AFf1VYz0b7q/j5GyZQ5rTb0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VpmDeSp2; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7180e07185bso1259464a34.3;
        Sat, 02 Nov 2024 18:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730596173; x=1731200973; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D4QOdmiAitTS8O0SnezO4SNz6OllLepeXC7m6ZxKe7M=;
        b=VpmDeSp2WjWWwxvcQBvYqaV/NvbWWlSfyi/P2MzL76nZgYzITQLTN8KxcJQCz1FSOS
         06Y26W8apH46I/4QJZ+9CKP2AZie6KyvEu2cBUrlMHf54bkEPT8NK1L9x6+jcs51WeLA
         yHhTXg183POCtmsH352l9nFVtWAJzaC8gLGCikKHxldAbSUehfw6a5aMintRwJ0sMq7s
         AM66ia3JWQD0IH3bTfYDKWr/BJH/okidw4V9Bggc/gGVPTPB8o2x9Rf445/yJb9J318l
         4GVVlIWnKC9pj213YvH2eJu+mU88Op9YrG2FfBTmQVw+EpMsG/K8q12ITFaO297+PqpP
         Pu4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730596173; x=1731200973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D4QOdmiAitTS8O0SnezO4SNz6OllLepeXC7m6ZxKe7M=;
        b=K0bDEcy5sGCRRgaG4tRR5mIE0VesuaSogYZyIbKlvpPE6sEvxN+f+vl7rrUyYSzINr
         muJQxclO1ADYIMf03rlX9qFExKafc9fifbEFMW+eQpTzqzBtHHvH02q0SOEJZ+Mjhvx/
         uwUM0bjoXn2SVy3O9Vvh7gaA/Sg+0dHbRgkDYgsmZd7YmnSWqDpFmv3lOK/OEYV15H6K
         S0xDP0s9KMeythZ17OR6tjg082o897yeEw7xW+2rJmwD/WiCpAtQPR1/uBTil4DEl+2a
         dnYPbYf284Z91C1/gMIggSvTgTbXsaNoxBZzP0iMvLQTP+x27b2yk9ipXLcAXTrEkaLi
         xonw==
X-Forwarded-Encrypted: i=1; AJvYcCWHuGDttUinBMm2eBv7jZCEqwv8aTue9nN54ZQ33KwycmXvGSJSs0U0qtv9DrQ4HfgFQIAdwS6PBMOA@vger.kernel.org, AJvYcCWrTRMY1cSFvx7/sgxfqg+AoWIXSCX6cv37nLjV0Oc66XfES/LVw4t7t6TUJz84s1P1Pp9BaKMZ97Q=@vger.kernel.org, AJvYcCXq9yYihze9CJXoi4XZCNfWwJbne4jlQoNVDylJXUTw6oh1uSRxgH7Fs8SRjmygHovPQZY1YXCcDqCKaAZ9@vger.kernel.org
X-Gm-Message-State: AOJu0YxLkVx0smRia7WMyINJF7lpOinjmrhKC4pXtYBIs5k9K+Ye2QTX
	y8febcxm9B7HR5/VRw9GFbpLnzjt1jclZ8WMQdRgi2lD+Xc1F05N
X-Google-Smtp-Source: AGHT+IF/XN8GB56cZEkfM/bpwoxIWphszEPLIkRp82LQFtAsIcX7OxTDU647gyiz4UWHj5SpuMkZvQ==
X-Received: by 2002:a05:6830:6f83:b0:709:47d6:1364 with SMTP id 46e09a7af769-718681194e7mr24652116a34.9.1730596173551;
        Sat, 02 Nov 2024 18:09:33 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-719dfff95d2sm304310a34.15.2024.11.02.18.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Nov 2024 18:09:32 -0700 (PDT)
Date: Sat, 2 Nov 2024 20:09:29 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Ian Rogers <irogers@google.com>, David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jonathan Corbet <corbet@lwn.net>, dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
Message-ID: <20241103010929.ke6vf4amh76hyqb4@illithid>
References: <20241015211719.1152862-1-irogers@google.com>
 <20241101132437.ahn7xdgvmqamatce@devuan>
 <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <20241101200729.6wgyksuwdtsms3eu@devuan>
 <20241102100837.anfonowxfx4ekn3d@illithid>
 <20241102103937.ose4y72a7yl3dcmz@devuan>
 <20241102213620.kfccilxvhihwmnld@devuan>
 <Zya6ApewCZQNEfJb@riva.ucam.org>
 <20241103000534.th3jq7umwojlxnma@devuan>
 <ZybIG9xykOW6driW@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zwlgsoflppbkm2gq"
Content-Disposition: inline
In-Reply-To: <ZybIG9xykOW6driW@riva.ucam.org>


--zwlgsoflppbkm2gq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v2 1/3] proc_pid_fdinfo.5: Reduce indent for most of the
 page
MIME-Version: 1.0

Hi Colin,

At 2024-11-03T00:47:23+0000, Colin Watson wrote:
> (That's leaving aside things like localized man pages, which I know
> some folks on the groff list tend to sniff

I can think of only one, the maintainer of a rival formatter.  ;-)

> at but I think they're important,

Me too.  I agree with the sniffer that no language is ever likely to
reach 100% parity with English in something like the Debian
distribution, but more modest domains exist.

I've put effort into l10n issues in man(7) and in groff generally.  In
particular, I really want seamless multilingual document support and
achievement of that goal will be, I think, much closer in groff 1.24.
(My pending push is gated on deciding how to change the me(7) and ms(7)
packages to accommodate a formatter-level fix to an ugly wart in the
l10n department; see <https://savannah.gnu.org/bugs/?66387>.)

> and the fact that the NAME section has both semantic and
> presentational meaning means that like it or not the parser needs to
> be aware of this.)

Even if mandb(8) doesn't run groff to extract the summary descriptions/
apropos lines, I think this feature might be useful to you for
coverage/regression testing.  Presumably, for valid inputs, groff and
mandb(8) should reach similar conclusions about how the text of a "Name"
section is to be formatted.

Regards,
Branden

--zwlgsoflppbkm2gq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmcmzUAACgkQ0Z6cfXEm
bc6EthAArrUZLr4eYODfrVEKCGtAtU5k44otdNvFWBAMvKkauFRv6hB5HX8tifuN
gpEHH8F2tcdcL5qqo5k378LSnkgZOWBdXXnIl1Wrt5p7IqKoowECvIDtCSMvPCgA
wS3egJZPIRKh3b4niuih71J1dLF42K3URENy80lHWAMvIUL7vEfYFkWJ9rMFqB7G
V9qlka9B2cf8Oj2R8CSluGh+JS06YfJTG1uFTxUcMQfnPUXutQ+E5FjxXyQMLWMs
+d5epPPwNgrfCDcWQKH6dNvwpwx8AiTdBbatZ1MkR/kFq+Ni+TkxQupj/avg6TZ3
yDZjZqncl9nJcmIc+p0C/prEVPfywTN46OfPdlCKeV1phbFfsCkVOnAD1dTw8U45
/lCi2sd4rGhPWibY3YZs+joH7u9hLgCn+X/YFEkvhsobmOt8TQNptJzubMV/o3lT
zCsaCaWXOBsdGn5bjH1ohqn20vfGpM3SaD2el9L/ihW5QP6IoS65DhxwbZ05Zuwe
eh251TQtCTQVTxJOPyRN7Y++OJezCEMm0a0ZU0egj1r7DU1XfBtECWS2P4Ziaxxa
QabdsMFS00dGVkB5xScKoWyvfeweq1FCWpjF6hlebTUN8vxY4+pbg7MV0ZN/Kl4H
BF1TyCqhSmxMNXA+xP/i9LIXKRUss7Urt1vhwWiFdtp/wymV75g=
=lxZD
-----END PGP SIGNATURE-----

--zwlgsoflppbkm2gq--

