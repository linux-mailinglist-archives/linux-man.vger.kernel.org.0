Return-Path: <linux-man+bounces-3470-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE45DB29A29
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 08:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B82417ED9E
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD26926E711;
	Mon, 18 Aug 2025 06:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Oxgj/opf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54495224B12
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755499966; cv=none; b=CE8QoryPy0lRvPNagoVw/8/w8ZRNaetxBPm1z3LuXLud87FW+ONSyw//sOrWd0koR5TyuQuY1A7B9fXz+T/YwmKySv6JYyg+qjVx7o0InQTLKv7EbOt1a5ynMKo4z8n0b38OnxdKTmgdwyJeRATbsxxG1ZAgaP8eXm3N+T1vW1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755499966; c=relaxed/simple;
	bh=D13Qa/Asg/p01E7JbV533zHfaqKfK4UMAEanSB/LsUw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=O9QNGcK6rinUWhgw08ECBijgVE3e2ReOtFVyWGmN7SP5jMSuXVJinJdIP+vT3B4IwRnBIbyOBSfMtKno0XJ9onrjCtxcnSXjp42tBOQvB0orOWBVdy/ybt+FHHiJRh+3YROrxdFWtytxenPYXQbOylWj3fb7u8OOp3B20vja3iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Oxgj/opf; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-76e2ea887f6so2726150b3a.2
        for <linux-man@vger.kernel.org>; Sun, 17 Aug 2025 23:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755499964; x=1756104764; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EzcWV2G3J3VKtoZcwZxS9oPaxxdoA7YkmEb+FWlzqnY=;
        b=Oxgj/opfTC7CFSqTphcawH29yX9UhoEPk4gtZA5IfxgO4dM/xncxhBKMvzQCxOOEbS
         jScGM8PpZRZYiGnKqewzj18sCYBPFh1Wki3a8Z6fFCLSE7nS+8QvnI/eKloWtjplvjN8
         RUNI389tPHelLi86Eyb8+KIeReKnQMEpocqvv///m2kcIdI4vGr/q3YOWrEwE7LU3wlK
         9j9yAWElCRpaSK+CDrRcpIRpMMtdD8xFVqretuHI/PzGrgm+ux0ubBQm+TKHPMVUB7Z/
         MffpK6x+Eh9kAt0xNjeDpEW0w8ZtW5SxJ5cj6h2zV00zQF8KmnbMvuC0Z2fPERFDcP2x
         wzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755499964; x=1756104764;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzcWV2G3J3VKtoZcwZxS9oPaxxdoA7YkmEb+FWlzqnY=;
        b=iG0ZPieCvZjThi71YnFZEb7MYQwnrD2o8Fw1S31xoMMXlZtUKuoo66NWnW0QcUdvlW
         nlOVigOwLTR3gcWuuJyts1f9ZG8jORJy7EkjPDfwjjKHWUKET1GK5wLTPc1QX/5g1Vwq
         c8hEWzPcAAe8X0FpRf+4xZvEq+MIsE+cMSF+5Hxqo6UjwLWNfYVz6gVDqjJVnMQ3yCha
         6pW65fP9nuop9XdszN+0iUtcGhd9sx9ryGUHlq5Q9elAlDavSqrlIfgp2sQSNI+n+H6o
         woAk+sBB6KNXttvH6MqG/ZP/PwKJg7zjv/4WG1lYFzrHajiRiVN5vv1mLdsxfkwp8Ock
         N3ng==
X-Forwarded-Encrypted: i=1; AJvYcCV0WQxDbKHAdKqcfOKvLsQWk3GYKe1aONsAIzeZvKKiS00TC9z8ExljpKcIS7j7ee/UvQfcMlmRJ5g=@vger.kernel.org
X-Gm-Message-State: AOJu0YwzHi+2ZnlqaxjxHTBc9AP/CuzvybVjdnlEkZT8LXQ/qHi4ab4B
	Yq+tPDT22dUKoWTmnDTL0c9BcvidBRy9EOUD7Yb+fxyM+TarVVGSgjsl
X-Gm-Gg: ASbGnct27DTOnlg2NhRTEb1rSiACbRMwwT2NsocL5+smbDT6jCktvLRTjjZjbl6Jthd
	ArBfo4QSad11+iagOON+bYonxCXyBShQX+S+MepvbIZGA+jEraBPtSdiQK1LUUI1Dqvge6glNhb
	p41oFgDr0bg+yPtfJfb+GAyCe4km0025X3TFjUOVU4aOR4HxMW1C+EVftbZG34clDpF7ms+6KW0
	2iTCAGsLJYXllCb0CrFryUODVaTZ1h49S4uEM7cZ45rN8akyP206NuiGK10uLxlGmUrsd/y6p+/
	4S+a5Em0+gqHRf85iqY5kxO0JzewYFLIHfmKNn9zlGzAbTleZJpaH2FKReXYd5vt/kcwwjDhSZt
	QcA==
X-Google-Smtp-Source: AGHT+IEkE6nZIIEAvhga0GKJM2saKES66AW2La13ybKIF/yQhMSmzhUmjKaAFLgMNsZ2FB7kcHvJ8Q==
X-Received: by 2002:a05:6a20:9148:b0:240:2265:acba with SMTP id adf61e73a8af0-240d302497bmr16103643637.42.1755499964357;
        Sun, 17 Aug 2025 23:52:44 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::666])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d5a7120sm7195949a12.5.2025.08.17.23.52.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 23:52:43 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Alex Yang <himself6565@gmail.com>,  linux-man@vger.kernel.org,  Alex
 Yang <himself65@outlook.com>
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as
 kibibytes (KiB)
In-Reply-To: <iutkhvhpxre54i6a5zt4s3xt6khpmignznhg6wdzue5efbhbhh@hgdvsivvg2km>
References: <20250818061203.33211-1-himself6565@gmail.com>
	<iutkhvhpxre54i6a5zt4s3xt6khpmignznhg6wdzue5efbhbhh@hgdvsivvg2km>
Date: Sun, 17 Aug 2025 23:52:39 -0700
Message-ID: <87wm71yvd4.fsf@gmail.com>
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

>> -This is the maximum resident set size used (in kilobytes).
>> +This is the maximum resident set size used (in kibibytes).
>
> Should we maybe say this?
>
> 	(in KiB).

This sounds better to me based on it's use elsewhere:


    $ grep --exclude-dir=.git -rl 'KiB'
    man/man2/ioctl_fsmap.2
    man/man2/process_vm_readv.2
    man/man2/readv.2
    man/man2/alloc_hugepages.2
    man/man3/btree.3
    man/man4/fd.4
    man/man5/proc_kcore.5
    man/man5/proc_sys_vm.5
    man/man7/units.7

Writing out the full name of the IEC unit is much less common:

    $ grep --exclude-dir=.git -rl 'kibi'
    man/man2/msgctl.2
    man/man5/tmpfs.5
    man/man7/units.7


Collin


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmiizbcACgkQjOZJGuMN
fXXAfA/+NRpAt1bupskN2JYfAXTRiZH3UAFPpFx0B5taJ58+wcMhoeciPnJirf1z
CN8HpeZAC63unKh95TyWTycmN3jXcDTfdUO76BooHAG0ltfH3JYI7jybr/9RSKLl
DbN5pzrWgXoGGbpnFOJUkN5KrILEMZgFccmCQW+02EjtEu1BOfaFT/gwGEV0JTju
3JBJMqgP72dIkJ45Syx5A4mrLDYsocREfxcNaVr+cwN2KkEDF3K7S/I3+PIJyRji
HDAmMc2ic78JJo1v3xnEcqTFaU3flAydyzA5Hi5beKVAvgOBfMs1JakdsJ9/DqCf
UOdNSWoP4xvHEn0bHvpapoXMvw0cDaDI/mPy3WjIJK3+pdB9ahezin/uw8M+1Qjz
cGN6Q8ZJeThmu8RwZXYBl1Wivrn7zLBTkkdu8pcbeQZqLM7tnu4JZ3xNRHz3F+wb
fKWEEf/Ii1BV3ZaiUGRWLZqkIghq3fwvJziSeBxN4Nh1hqsnX+PM8x21StfzRdy0
V+5vvHzgjtjvAUUH9MG6udwRWo9nVK3jfFl1yj/y9+p265cM9IaaTl/G4DjorR/Z
GxpQHRUnM8COra5Kzgi9kecklMtsOJMvRWlcombf3lboIL9W0xoMjTnVJG6rtBQ1
a+Unw2ra4C4Y74ys3HPexp8CpS4ZfDyf1Y8LIyDoXqRg7j17zNs=
=swmA
-----END PGP SIGNATURE-----
--=-=-=--

