Return-Path: <linux-man+bounces-2798-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B14A95A76
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 03:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFD8F170BAE
	for <lists+linux-man@lfdr.de>; Tue, 22 Apr 2025 01:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10B3842AB4;
	Tue, 22 Apr 2025 01:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Jeoo+vmP"
X-Original-To: linux-man@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FE4125DF
	for <linux-man@vger.kernel.org>; Tue, 22 Apr 2025 01:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745285055; cv=none; b=KReiQ09kARY7GgAWFqdb+kA/LhGUk8AWBBnPuhwHyX0De6zOJsLgIvzjTa8DrWve417lKDQfZNhBYRirqTVR3TUlKi9U1UtpY8Euwzv/ftO/6BupZvHwKpt7RQNcCiudyCBzZ5oGanY/dPTqmgymgEOeQ7CIKe12TYTkbeBaT5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745285055; c=relaxed/simple;
	bh=I4T05vNkQe3DY9AMIRF0PMF5uSxcF6kcUkT1FCxbBxo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XJ29cR8WSGhkRuFBDV1WPeoklBJsu9w4SbHy/P7nC46v0wFGdXniRM8zPjdpMK9TfQmj0kWfzYKXInAWH4aml/CJ0NVfMF/Khg4/6RG7zXCMPxBSHTKe30MVmaYwONs+nl4Cx3ia6MIapifuAkcxIylm20BKvlDF09xXhllfDrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Jeoo+vmP; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1745285045;
	bh=I4T05vNkQe3DY9AMIRF0PMF5uSxcF6kcUkT1FCxbBxo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Jeoo+vmP/XdKohwrj3+fCYhFVwzaNhrnS/OkTueTwvwPSgxa3y84FnDEtZIhu9I3j
	 9M06mOlPZFLEiZr/8f6AdXTjsVWGhqtW1kcTU6mc2bznAK3BKn+96WGT/dTXoqt932
	 J6tVOICcOXDYceB/LXwJFZIbcaHXY+hU4TClc1KLO/cm/h5BRuuqyvDUEYxWzK3/TI
	 j7NlTlVTSvkgIqT0bKYTV9q7XI9vjqzwq9beIyeRhruZZEQ9kNgjMXntNWNohCSyxi
	 dHdlmzR6SYKQU8n0tby7i6EnMI4Vs8pW0+sG4pV3gdktUNtz6piToaXhVdLDAmIw+/
	 QcXQDwP8uSIqw==
Received: from pecola.lan (unknown [159.196.93.152])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 2672B64473;
	Tue, 22 Apr 2025 09:24:05 +0800 (AWST)
Message-ID: <c20f592759d857e9415f5d8a7f2be9a93b1ba034.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3] man/man7/mctp.7: Add man page for Linux MCTP support
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Tue, 22 Apr 2025 09:24:04 +0800
In-Reply-To: <zll3y3orzq5vkwkujzc35sogc6tbbmxqkkmiivnp34qca6hf4l@d35ookjfz26k>
References: <20250417-mctp-v3-1-07fff4d26f73@codeconstruct.com.au>
	 <zll3y3orzq5vkwkujzc35sogc6tbbmxqkkmiivnp34qca6hf4l@d35ookjfz26k>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Alejandro,

Thanks for the review!

> Some have changed, but since this patch is old, and it LGTM except for
> some minor things, I've done the amends myself.=C2=A0 I don't want to pus=
h
> back on the patch again.=C2=A0 :-)
>=20
> I propose the following diff to amend your patch, if it looks good to
> you.=C2=A0 Let me know, and I'll amend and push.=C2=A0 Feel free to ask a=
ny
> doubts about it.

That diff all looks good to me. Thanks for the explanations too, that
will help for the follow-ups.

Cheers,


Jeremy

