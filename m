Return-Path: <linux-man+bounces-3185-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9538AE0C26
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 19:54:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC1023B5AA5
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 17:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0610C28B7E2;
	Thu, 19 Jun 2025 17:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V0tu53HP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6845819D8BE
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 17:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750355678; cv=none; b=Qi7p344ND8z2qt2Aa2QZJAVpdCOwb9IDisO71hEczzWenmxZsxyLWYmJRrmasAzjRK0LUwljW51u8RMaT2V1Y+pSK74/NL6i3fA1x5ns4wcITRoop4bB6k0Ubvu1CfX+smAeOpMs0NyVlLn4KPqMVIP6OmFqouYKjvQEy3bGq5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750355678; c=relaxed/simple;
	bh=xuhILc91Ls6PUHLOTG97xKIAlkQ0+LU8zk02T2aHvTw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NG/wzwqxUsEigQcbwGs6SVLnBn720OP4HwgXlnpokEklNmU6Gpdq8cFwfyRonoTOoXbMcM53TpIpL5Z7vfp7AfPZaKcLSnZ0pcXJEWQjLyN1JwUenR8yumxBzxHd54I5kQqmRj12ttl2vuVmzzo+JDGqTe5SwRAB0DY99znSSag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V0tu53HP; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7fd35b301bdso1239642a12.2
        for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 10:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750355676; x=1750960476; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PzeVj31dvzUppdcz/GOrDGLpFu2vPFrZP7/nLnn5ErE=;
        b=V0tu53HP4yl4CQvmkIjwE/Z/cfsE+YgdkYahrVKdioFUlryIZl05Q4792U/Mm3qOLL
         1rZOncGsvJRPxDx6zrf5MTK3HzTZarWbfWW6hZxUMhHnB/EegjmTIqpaqOVgElDlnogD
         l2ZzQcCmnKQ/bh26lCA1GsYCVvoDBKYe8WEVUl1B5UUOgRY6FroAksgvgVXX7xxVRnnM
         Z3qB4e5beT9VCYs3yet3aZvDwX7TytzIGOIA8zB1S4l+Y4P0aGpfzWWhpYujdEGKPr87
         xmAYKl5t46TtRs8HV7w61BMKt5IFcbL6PnnCua9g6MDsdeXlg2LJ65Hi2m+85uSv5mL8
         9Ukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750355676; x=1750960476;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzeVj31dvzUppdcz/GOrDGLpFu2vPFrZP7/nLnn5ErE=;
        b=JMCJLpNaj8PTvkcTrUETtrNm5VVicVsYyWmJ0RLcVUBceUE9b1TJv0TyVoDF0ltmRq
         QwBw34Umfkcj6dATvT8JmveLik0FczEoULHZw/XCDKwHlKHQuz0o0B6WQXLsKrGpzJ8I
         j6SoPEYreOox3NlGD2nkiSAMjdmU/fOToRj7kie5DYYetGLJIP2h8j4CnH1aOQ4Bu+Nt
         zWlTmgFq/wErwKomp6+J6z2Ie2SCF1AlxCKWmXzQop6RUgI2FvC+6YN6XWVO0ljoYR4/
         EU7KZs96qDW5xs74GQ6F+nfZRJSCSPSyvTEVZxzXbpmz9rrCk8OHDCNVAzi6YD3QS4nl
         z9pg==
X-Gm-Message-State: AOJu0YzfFIectDnhJiJkaRaMQVoEnLNuBFTfvK+wzi3kncTcBvn/R4x+
	1cbcsQWXDulHrekUlkn/N/JE2poF8AIWVsLXSGSq53m1VBmcATCf+GMXCkmRkA==
X-Gm-Gg: ASbGncttX/mjId3vnqMl3QYcdQwHegfvdYw6guRKE2J3F9uaoBgeBwNebPZBjZ9pNj7
	bm/oz9i805zVxNr2O+uRw0rflZapuFoNGOiJtx2Uc6oBzURm+UHRCe5ycBGLBW0aILu3QeC42Ju
	OPm/FiLvyVHpTAZBWi4XivLjbvxpSO1rfx5FD5ow73pUvb/7kDn0YahDYg2rgLn2FnkbpvV8EWy
	qanmSKmgw8W6SPKBIp+VGO6rEOufbv1iw9569aKxjEH5lepCowL8NbCEDu4r3F+2sBC4jxchJUg
	+R1m/ypUb9xMBZVxakUolChaU7QP6IB2O7QBVYWayGg=
X-Google-Smtp-Source: AGHT+IGAGJMbDcupro0NrmuPC3fbqnD2XmnYNudNNrnmY7XEoNIvnMZUFMGklHJjb80LoSHtjXO9yw==
X-Received: by 2002:a17:90b:2dd0:b0:312:1c83:58f7 with SMTP id 98e67ed59e1d1-3159d56e343mr381702a91.0.1750355676347;
        Thu, 19 Jun 2025 10:54:36 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::53de])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a2f4c23sm2541561a91.29.2025.06.19.10.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 10:54:35 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man2/gettimeofday.2: Declare gettimeofday with
 [[deprecated]].
In-Reply-To: <tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
References: <c9251b002761c8c5756780432e5fccd2bc58e67b.1750306917.git.collin.funk1@gmail.com>
	<tc6b4trkpv5sow3pxgul7i3rc6bjnz7iupryyqzx7a7hxkdnou@65zruztgsi5c>
Date: Thu, 19 Jun 2025 10:54:32 -0700
Message-ID: <877c17liqv.fsf@gmail.com>
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

Hi Alex,

Alejandro Colomar <alx@kernel.org> writes:

>> -.BI "int gettimeofday(struct timeval *restrict " tv ,
>> -.BI "                 struct timezone *_Nullable restrict " tz );
>> +.BI "[[deprecated]] int gettimeofday(struct timeval *restrict " tv ,
>
> Please put the attribute in a separate line, to avoid bad alignment.

I thought my patch had lines that were too long, but I wasn't sure of a
better way to format it. If I understand correctly, you suggest:

    .BI "[[deprecated]]"
    .BI "int gettimeofday(struct timeval *restrict " tv ,
    .BI "                 struct timezone *_Nullable restrict " tz );

But I think the [[deprecated]] looks a bit strange alone on that line.
Maybe the return type 'int' should be placed on the line with it. What
do you think?

>>  .BI "int settimeofday(const struct timeval *" tv ,
>>  .BI "                 const struct timezone *_Nullable " tz );
>
> Should settimeofday(2) be considered deprecated too, even if it was
> never standard?  It doesn't seem to make much sense to keep it intact if
> the get*() one is deprecated.

Sure, it seems pretty uncontroversial to deprecate it ourselves. In V2 I
can also add the [[deprecated]] there and recommend 'clock_settime'
instead in HISTORY.

I will wait for your input on the declaration formatting first though.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmhUTtgACgkQjOZJGuMN
fXVJig/3ZRlprKwAZadmkO3RRzkujhT1rx9+yMBynyoMWNiA0VBjJQtGGkWak9LC
FE0JNT9+Gs77fnLzf1JMi+eNxY2lCqzfBbO303u2f6txMzRI5bqF9qa8Ha8RwJU8
xb8e9IxnTmTlNmP+4qfuZyNhTk2lOpia2dtA5Arrc+QwHJlIDt0FCTXl1cdDDVLY
w7gxs/IPo9pi2aMYsCUBTImflT2h+xVbwics/mmMJREzWq/bI78PSnKFX98iu5U2
UFseepRL1dndhAT7J/25jJcJbLmjMBcrj8tJsHqE1PdP+LhmW3/knAYDvhFYAa5C
s8gl9zcJA4jzYyhSRbh5LYc0STVPYzM06dy5jv6i2aE3GkYYjswj3lIUxA25ydcc
YjTM+dKpyFP6gFRL+TSb4ld6qTHgQQHo+Y4ikqiVohwXq0ormrpk4cWmE9VhATvN
Tx3xMcjluUb5jewkskn9CsYX9M/nc7VIiTyYjuP8EGKRuntN86R5k1Yh2D8tkXF5
LeCPcueUM3eiDWrljVQpFQlY1IQwk6w+8Eea5tRAjZYd+DHQq0luG/BkaxqIC6lg
AvFgkDk3VRCopYSMzNWpHiJ0dH9rb2uylhSoxnLaTZHBG0rQs4FxpWcOgZ8dLvbg
u746x02cx2WE0XD0zuN368+fX5B5stcEVVMbBwmCWWPVoy2/yw==
=I3OG
-----END PGP SIGNATURE-----
--=-=-=--

