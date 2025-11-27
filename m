Return-Path: <linux-man+bounces-4334-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D1C8CF87
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 07:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6BA2E4E2EC5
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 06:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CD027A130;
	Thu, 27 Nov 2025 06:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ps6czbJC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9DE22F76F
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 06:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764226505; cv=none; b=QIRsshNfIUC2CV5HQY3YREc91/CvtHD7s7AdaI5Q9XzlPTswo+UD11lyPAobb+tNFw9+qp0VySErHSF22LmQOz/N3RZ5tX3pnScgpghMvzXeXJ0sseP0qRWR+v7RO5UOfPZkh9M77h4fgcbR9Rd05CX14gL4IbV4FIb8pLjHbaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764226505; c=relaxed/simple;
	bh=HnczzH/wKyp3uZjx7IUcV7JCk+AnN3SfniheK8yclGc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=drsE7HzB5o5TD9eThjauyDnvowx5u1W3IdX2oNqM7sgz/iMtFzpUmvGz15Ib0+PhPi9kkUUivpbYfj8aXNsjE0COfKiCH6z4nptwEI/zVw0drcSZCZUXxvB/3KxJn8HYjEXahwfXl9/5HPYbUW+3eMWxPpcRC1xNIM6LJalMlhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ps6czbJC; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ade456b6abso405200b3a.3
        for <linux-man@vger.kernel.org>; Wed, 26 Nov 2025 22:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764226503; x=1764831303; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=heMpBjlT4I5TYYcBjuebazSc6lo0viYJiSU1CNgCBN8=;
        b=Ps6czbJClFHFFj4bY5WGzlz5TF/RexmngvGUIpdv6/h9GfeOnsjN9MqcQy0lFVSS0M
         P6TpzhuS9tmP9SV+NTuYl61/SINYEIc4TfY0IgofKC371hfDQT9SLc51vpP0Cwfgp8db
         7/i4G2dqiAH9VjpSvzSOwE/zRkM1MeW7EPTc+sTsU4YBqRfodnRyTKqHEsnccBAr7qL2
         S/zWc4oaqMkPAc87buz9smHiVfsxMn4YB7IuAEgL0hmf7HvlFXs2rtXqR++YSKJPxn2Q
         x/yczaONw0jYjmbidF83h8AAK0kIab3Sdg6sxREyptaoE8RnsOythuCVXATwPOoBiUE4
         kUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764226503; x=1764831303;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=heMpBjlT4I5TYYcBjuebazSc6lo0viYJiSU1CNgCBN8=;
        b=bCCN0htcksga3bXswiMQ7AWLQoObVpX7ftMKuCN/3SXrMhI5ZHcPfLsLvCxF9Nwrha
         LrpoZvlFTZ08gOQFrimNoLI7Wj/v6NDlIQAyJ3ApmpHtSgPMh+wsF3TPnB8HA+1qqhnY
         TA+wIF4fQJBdsbWpJD3MoxNGwoh1iaVUXck+Ql7hPhBmPMKz/By/vlzGHXiIYOkIVXTF
         TJzsqeyK7a2GTWWNCZq5gAlgA7HGG13QKOhi911guWj44Qk4HwzDIQhLnH6qwbfiu9ph
         RWIjvZj6CAV0Z5DcWIV7I8OwZaC4qHVVQ9WfuikKF+Tb8DIuV7PVJdh5fCDprLJd0ZEc
         ARqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUO+FhC18c9oTPoA6y3Kh+6bu5gJ7bwZPFPy3OlrMxq6OEMLx6Q1Vqzk29GE9MOwOkA0xJRLHVCgo0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwjBkwhin7kIS97LgiNX7wU7NTT85RSlEtjSl01az+1H3+RsVlq
	fLtfFCUFMHj2K/LnHaARZhppyl5bT+yG1hgg1eK3j4NrULodgUwe11kqCeA5Ew==
X-Gm-Gg: ASbGncsVs4/lRE4KSif/cvQUB3MUGBgSYYtTRMFaGB1jsVaN398HJCmuM3+JiFNnsdG
	bUl/yC2MxeLf7x82aT38o73WkOvGw7wfxPMiN9hC/5B353t9Po1AJKu8Xjdedr05i7RfwI8zkqb
	XJ1sbV3REAspJ58HMfr8KQjJ7RmsEDMLRzNqNFYuUL+/ymibMELtyrevhd/HA8Lphu6P4EMErYk
	9InotF7TgtEcYVKxS8UonmgYzpM/ZRQfLD5786w/eGDgzrGN+FnrOGnFCHsGeMGeFcdGia1uzcM
	ifI7wDzHwfxipckIimkf4xeWcOJ7IYx+BErkRKma7DE2WucP0XLYTqugPt8LmhPndHDU1SxD4jR
	DRMr2dKl6AaUlgLAep/P115nMMVU4axMLqG6Swm4wzJL22NO6rhvwqlKKj8sjW9dzwQB4btQNjx
	vjVsNFsyCDWL/Q//NXvdTtZOyHFJp+onFxwVu7cxoi
X-Google-Smtp-Source: AGHT+IFM+IV73fPg/cqPbrkoH/jh26T63z3a9LRUkZqumIIB0QnADeJvCfHbhMra7UDdaCJI9pKFCQ==
X-Received: by 2002:a05:7022:fa5:b0:11b:c1fb:89a with SMTP id a92af1059eb24-11c9d86fe18mr15531468c88.32.1764226502889;
        Wed, 26 Nov 2025 22:55:02 -0800 (PST)
Received: from fedora (c-73-93-224-2.hsd1.ca.comcast.net. [73.93.224.2])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcb03c232sm2838264c88.6.2025.11.26.22.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 22:55:02 -0800 (PST)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
  linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: Restore angle brackets.
In-Reply-To: <i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
References: <a719bf4893291d95db164329b2c6add4e4a0e3e7.1764119717.git.collin.funk1@gmail.com>
	<20251126020524.cq7alectskkzbjh5@illithid>
	<i526ocx5oztrostv55e77cq4fjsdet3g6hf4hej5q5wyyheyrt@eyz2knpjir55>
Date: Wed, 26 Nov 2025 22:54:59 -0800
Message-ID: <87h5ughsn0.fsf@gmail.com>
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
Content-Transfer-Encoding: quoted-printable

Alejandro Colomar <alx@kernel.org> writes:

> On Tue, Nov 25, 2025 at 08:05:24PM -0600, G. Branden Robinson wrote:
>> Hi Collin,
>>=20
>> At 2025-11-25T17:15:39-0800, Collin Funk wrote:
>> > While looking at 'man -S 3 getopt' the underlining under PID looked
>> > strange to me.
>
> The underlining under 'PID' means that it's a variable part.  We use
> that syntax in many pages.  This is documented in groff_man(3), as
> Branden said.
>
> However, you might have also noticed some dotted underline that extends
> until the end of the line.  I think that's a bug somewhere --might be in
> the terminal emulator, because I see it in xfce4-terminal(1) but not in
> xterm(1)--.

I was using Gnome terminal and Emacs '(man "getopt.3")'.

>> > -.BI _ PID _GNU_nonoption_argv_flags_
>> > +.IR _ PID _GNU_nonoption_argv_flags_
>
> For now, I'll keep the current style, which is consistent in the
> project.

It still looks strange to me. But I guess I will survive. :)

Thank you both for the explanations.

Collin

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEI3EYVQjRMXvVeOXMjOZJGuMNfXUFAmkn9cMACgkQjOZJGuMN
fXX9ZA//ZysjLA39asOHepA3DZzmkvLI5IHauxq/TbbKeOihUwhLLL3D0pcKbuij
FjUk25SfqLWz5eGHg6hkfIX7765FaFAV/iVg/22gqA131k8JK1daE065fIdU/UTN
nTV6dVICKwWI7ru+yK3Xx6N5MFTe6KVmqPSyq5QaQahpOGP3WswbNSbtuS0ty8mX
d7BHNUG6TMlRdBlCqRH+4la3bQdnfQ5AGNX9EEVQ/rEiWPqihgpfI3NmgdrYskUP
qoF1ANIOJgRLOFtDOFJ/Bj+32++N5Iviy5kXJP8GJ9BzqufkQUC8hRpintGVptLm
gxcPII8rzP/QzrxQuud5jmaaSJKAii9D5mThKSUKfT7t35ASq1z9XjiAVQz+Q2Ck
2C6rIEwCqkJf5qZOvpk1hcmbN0XWI0423d+dK4geF33bwCmvMzblRT6xictdujCa
4a+eh8aBNA8zt1Jg/dfB7JfuWuSaj/xWqpXZFD/DUXTef+2Q0DpsMxZD/qf3kg1p
3z08U23sQIqVK/a4ixPEeAvlf+TW3dmdfYEjBnf1wykGbKtgPJz5ahJvLFwvMWwE
j8Pn2o1X00RGiAdjd6ZlzpvsCvo0YHzLTT0xInudeXz5O9BOtt/K+zVQRx6+uCZl
KTODMqj5zhcxLaan6iB0eiE1uNXbbpZHqqvVJ5mTh99UvfJmfag=
=r5yz
-----END PGP SIGNATURE-----
--=-=-=--

