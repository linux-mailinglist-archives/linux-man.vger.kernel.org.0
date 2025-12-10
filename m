Return-Path: <linux-man+bounces-4393-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FC1CB3793
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 17:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 284123003BFB
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 16:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6E42FFFB6;
	Wed, 10 Dec 2025 16:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EF7Yulis"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331F830E0F5
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 16:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765384197; cv=none; b=cgI9oPUiT2MsyivK1jQDTJylfWZlquwuTIQgwsSjqtpgEzurd7gDnly41IbjgJDrOEF3P1P7q+zfk4GddxbJKeuKF7FzNaLYxgdb6l6Lf1390R+uqOaQ2yo4Q0MTFjZZuJDZVDVQIFZREWYyJEWud1Fw1XBGl0/mn3EXmUAMoTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765384197; c=relaxed/simple;
	bh=qSXmOGoxbjnUgQyys4bXqxrmogO/+ldD3j/u3PZsuaA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m2WGRqvHh3ZAyNrcKrhSp2xDE3YE3fpE7GsfctAIpyoMf4bGRwY4RL0ZQN/NEBKlIqVmdgQXc5aZHolwzR3wtWTpunqZeYx7anDFANyhfNKefo4Pg0FCrZ283uWXaDJ0wrVIhEASzNj1GH3j2BH6R0eRdhKhs9focEq1/yVh5NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EF7Yulis; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfcfbcbcc0so2458027137.2
        for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 08:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765384195; x=1765988995; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1aKPrOJzbt/8eShzzIRAoffBt/qyDsvpd+vF+7o+8yA=;
        b=EF7YulisJCNN/n7cdX6wHMS7eiOKbG8SmEolcZ2Fsi1xLPLqk2IMPbUKUPqqBftsCO
         Dq5iqh+hE/T0m7V4xgaaGLBz7whlpi4kLluaGpapihTxVeZnPLi1RHA26R5u9NsR7kYz
         RVJtPhM+Ugr/71wV4n2JbWZKHEW9UfNi2nrtQoTGpJ/FRQ/0lw67+I1LWCzP3pDZ6qeO
         Ou2it8Bp7WNkavVjOiemsm15OykGG6+CkZbrW/gPJP+FpODR7uMcrrVu87uZ66D7kLrz
         QJEe1edB1+Ls53BPDyJa9xBTrEYaCsRxQdT+xcmAsLmOT3nvli8tcIxT6YvtiVSY7iWf
         UX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765384195; x=1765988995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1aKPrOJzbt/8eShzzIRAoffBt/qyDsvpd+vF+7o+8yA=;
        b=ahyG9PDj0Wp2vSAf1rd67/L8jA/OYazDxBmXNlqAKbtzKa+l325nQ9STuzoFP8GbBW
         ph8Jvo5ZQkMGL94m9fZ2xML3BZLu2GJRSAdMAbw0YcrsrDzyRmT9cUG5P/6FEftG2QzV
         UEyKSq9TFKy3jaY+5uJ9FSvsLgpGOLbpW71TGM33Jl99lWDQguOi5FNIQgGR77ejP9PD
         dpevEd7lJg0Jc4lhl693Bq6Ardz6o6LxLt4kGVRm1ZS8KIpizU6znYaWej6oJAvOPC1y
         jZI404OEbM3CkGiQK+MukIYkXGn2ZEqgHhegEP9e92yXWDv47XjNQBtlDCCnX+nte2Js
         d6Wg==
X-Gm-Message-State: AOJu0YyO91iJcSQ86o0E0JVqHu4G+dP73VORXJGBFU87S6EVSIAYyyB1
	GEEHFggBi70JftW1vR5hxBKjW9cETkW8PlQdwKVkBAXViih/3lBaIXEGm53ZM+kiBSdup/3AUv6
	ZMe8glFuJszn/12gTnbOdbcIB/kdEvRM=
X-Gm-Gg: AY/fxX4gXP36L2tXBfUxulV1cA07hrgPexxpkQbT36QZ/+ncH1HkgpLUWMBP44IKm8t
	lhL+tR0ISB/5EkL/kzGLbwweM8YIfhLINS7wG7/Wy5mf37+u3rgrBspefZj4ggLnvUrauxPOacM
	gxx8Eg7irwJNxEMEsgYE/IqevLCok7lRj2pv8jvqyWMTzkBBLEw+oZ0PBNH0oeTpAKHtVDQATrc
	uzQNmd0Dr2Uzw4cirNBDQ90QXvAZHcqJcZqFHPyy6vOcCZoUyvy92ish917wmCR4CKd2XT6smJo
	sYiaO58wB7Q4O47cfG57Ymg2OA==
X-Google-Smtp-Source: AGHT+IEXBG+8IzGQtrRuWVeMdgUrHeBXpw5Q4qeeKe+vivFZd/ljpl9YYVwH2U/iia/5GvBvKKDM5teu9bGWitcpb0g=
X-Received: by 2002:a05:6102:292b:b0:5df:c1b5:82e0 with SMTP id
 ada2fe7eead31-5e571eed8b9mr928429137.32.1765384195087; Wed, 10 Dec 2025
 08:29:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1765370035.git.alx@kernel.org>
In-Reply-To: <cover.1765370035.git.alx@kernel.org>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 10 Dec 2025 17:29:39 +0100
X-Gm-Features: AQt7F2owMuHZ1-WpZWk2Ynjuyu3ONCuQNKsLXr9yhXt5BOCjt0fIMiYVc0tJ2nw
Message-ID: <CACGkJdv8OiDT09gHSWMULv=bzGjTLikVhF-E2OodV=2FN9Dv5w@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] man/man3/posix_memalign.3: Several fixes, and
 split the page
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 10, 2025 at 1:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
> From all of these functions, ISO C's aligned_alloc(3) is the only one
> that programmers should be using.

I strongly disagree with this assessment; moreover,  I'd argue that
this is the function that people should avoid, due to its
inconsistent;y defined behavior in various versions of the standard,
and due to its limitation of size being multiple of alignment, that
renders it useless for the vast majority of use cases.

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

