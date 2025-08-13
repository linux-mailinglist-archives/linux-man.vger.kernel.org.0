Return-Path: <linux-man+bounces-3447-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FEEB244BB
	for <lists+linux-man@lfdr.de>; Wed, 13 Aug 2025 10:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0194F1A265C2
	for <lists+linux-man@lfdr.de>; Wed, 13 Aug 2025 08:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C10B2EA173;
	Wed, 13 Aug 2025 08:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OyxadbFX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A552C3252
	for <linux-man@vger.kernel.org>; Wed, 13 Aug 2025 08:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755075268; cv=none; b=r+EbP9WSl+jENzyxAOcUFMD7KY24qDKCa3tbLn/rlkx/RDgfZM3Q0uolaW4Wom1QIFgCRuHwGCMwkL7Oq5T5bozYh6VXO1p1Ku1e+dSkkCiNsiiweQH9iuNTH63ObMv/2j2Al/Dtv0joD8QpX2Rv4udVUs86+81RYVRbVQ0xYVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755075268; c=relaxed/simple;
	bh=2jGLb91Kcn9w2e0l1HYXfzc4CP4dkmLfvxKmsjo65iA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cBfXeVcuEOJZ5doA/wrZbN57UbLQJQJy3njAb/QEmvn6TQRoS4EI3yJ38lsQfyCh84HNpJkzSUVyH3nnStQXVy7nEH3jkQEAWPQatzl49Msv3a4lQLXGoXHcagYC2p16Tqh+pHSQhHsFmserHUeljEW53ErpO1nvh5lZRk6HU10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OyxadbFX; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4fe234cf176so3075245137.2
        for <linux-man@vger.kernel.org>; Wed, 13 Aug 2025 01:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755075266; x=1755680066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jGLb91Kcn9w2e0l1HYXfzc4CP4dkmLfvxKmsjo65iA=;
        b=OyxadbFXNaZpORXIsG0F+Fpc2GcnBWyrDu02RLqwQQwAxKzJQl512lCEV14q3aSaEj
         lwg4MAkxogg4jeqNPwLZaCCReat/6a/Z9eOP9FG1mdzAEKiRaRXbPfhwleGH7S1RUfHw
         XAMJgdjz8B6dX+06GTLSu5SI2BfnzEVhwlMJxWxRJ0tToEiNEm1RVroJlMJcyh5jjeWV
         UQ6Wpp5AU8oZ2ExRUNet0V3VJ0YQJ2NIduh8+mCpp5jnh6Xmzdqw2kPW3LdAAStYy9+0
         UkktA2wEBTex9+HeRTXEXXfnEappkPY1fqALawC3otO7su59rx8/vjkBMyG7lqTwvaIj
         n9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755075266; x=1755680066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2jGLb91Kcn9w2e0l1HYXfzc4CP4dkmLfvxKmsjo65iA=;
        b=GpTvAunMRrkGDdfADTIofY3v3T7Cjxbzto+g1++kZjmsYpy1V1YPcc8G/RET9oSvlF
         +YuiUj7BF3fCY0s9GIylM9UEZCKv0WIgkZjUMmEa9RKXe3a5WNfYmsr7RpnHF1ljy+1Y
         W9p5jOzJCxVKWimVayiR/cbH5AlBPRNBAHBhUYAs110xUn8FNt3oxpbIlEganSbnfw1p
         RKs7kMKHhiwZZkfPkIocf1OnF9wZYUJeXpMCFJ9N1g9SwLBHo3vRR86mGnuWCyz9uFrO
         C5gqnC53UtxTZO8KX0R8d9cQbbfM5MUK+2KH/j5kDQF/QZdGmOBQ1WhPuilJR8tBMwNl
         JAag==
X-Forwarded-Encrypted: i=1; AJvYcCULd+nhL5xuaMt/tWiU4Vhbr09/Ao6D9d0IvZdeHqKOtjotqByOCHt1P+59RlUPuw4aczMBaw8Nmk8=@vger.kernel.org
X-Gm-Message-State: AOJu0YydsjaVosxUrAN+/6BnflUQc+fs2Pfnd0kAl0htLD5zIVgCscCl
	vNp1NZeRtcAFRJTNXgAHGAtplrZyLiRb2NPAi9zLigwaRjCUz+emFfmeImhJfUEDUJXn7j+tcm5
	IOQ0ANoiZ7UkTJykDcA8lzzbvoWVRW7X0PP5+
X-Gm-Gg: ASbGncvnbyyMf+odBhyavzrS414lZOo0OGstSzeMDMzcZcal7B7vcEb7kDlWVQZPS3Y
	jorlMA44IaQO8Jgz7tbxFhv/1seeppSWebdExrSU4rJxDHvs+KHHo+2KW1CmVTnKcKN1NOsCCrg
	sqoFrTbEvgDeoaEXXBOgp1eHR4EGAe9csFm1W/vAuZmqUR8v48xHzwUsnChLmTgAYhkKVTqKkPz
	UsaY7Q=
X-Google-Smtp-Source: AGHT+IHZDyuMeggj1sikEsgpjN0hDdUMaKwhk57ld0UCdEZ2af/5oQBWIuBA2YAhtos82/JKYaIRJX9YoWSWFu8/6bs=
X-Received: by 2002:a05:6102:b06:b0:4e9:bb3c:7c45 with SMTP id
 ada2fe7eead31-50e4e5d7cb6mr611290137.4.1755075265686; Wed, 13 Aug 2025
 01:54:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <m4f5nimdaa3u2atbebzdrlc23m7udtcxnm3fvh4gkf5lqxjkz3@d5l2muzr62kd>
 <20250809081953.972960-1-safinaskar@zohomail.com> <6n5kia24vp7gbofbzzt2gm2owixe4f72azygr2fxangrbvr567@qeyje3k5cknx>
 <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>
In-Reply-To: <1989ddb2277.12853400273841.3494748395747199197@zohomail.com>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 13 Aug 2025 10:54:09 +0200
X-Gm-Features: Ac12FXx_fLfd0CJz6jQzP2HT4mIqKv2AZyd6zr8LSHakAdYnd1-UHV-QSxAQmnE
Message-ID: <CACGkJdtkY=Vjcm6q8x0B_xS1+PoO8XksZZrYfvy9CeCMA9+vpw@mail.gmail.com>
Subject: Re: AW: drop ia64 from man pages?
To: Askar Safin <safinaskar@zohomail.com>
Cc: Alejandro Colomar <alx@kernel.org>, carlos <carlos@redhat.com>, enh <enh@google.com>, 
	linux-man <linux-man@vger.kernel.org>, wharms <wharms@bfs.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 12, 2025 at 12:37=E2=80=AFPM Askar Safin <safinaskar@zohomail.c=
om> wrote:
> But is it okay to at least remove mentions of archs, which were removed m=
ore than 5 years ago, such as blackfin?

"5 years" here sounds as if it is a long time ago.

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

