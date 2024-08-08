Return-Path: <linux-man+bounces-1593-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6B694BA84
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 12:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5D7D280ED5
	for <lists+linux-man@lfdr.de>; Thu,  8 Aug 2024 10:09:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B2BD189BBE;
	Thu,  8 Aug 2024 10:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="4QQBgOlr"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f201.google.com (mail-yw1-f201.google.com [209.85.128.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7577813AA31
	for <linux-man@vger.kernel.org>; Thu,  8 Aug 2024 10:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723111754; cv=none; b=QF2rtTHdvL0qlhabQHLlh7ZZzDYJwNdNpYtDwlhbgNi6L+0wWzaJZRGV6lvE16xPYuKc9z2uNQMUoKXeN8n1L8fY6X3yg+ta3klQFupJXo+0BGHOEBBoWc/khaCqdzozEIVPE9APqpEeqA9xLYvKm9B3XeNAeQMF3gXyFQFb4Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723111754; c=relaxed/simple;
	bh=HKtj1ndDuzb9dZ37UX6AC8KqXdSs/qDBsdJu+7KBoyY=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=N/IFvlqkgLuJXYNek7vwCjAgPdA2YoAezH6TW8ZT5VLFEbaQToJ5vdFQiHnUbd6iRInwysdazmlXtJPZCaWW6K2U+Zre3hGGlhzIesmKRrZW4gJ3bD9A5Ahrs3tgN5MNg35E38JtMLnBL4EFC+hd6SwPkNyRGuvnGfUzWjGhcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=4QQBgOlr; arc=none smtp.client-ip=209.85.128.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yw1-f201.google.com with SMTP id 00721157ae682-672bea19bedso17951417b3.3
        for <linux-man@vger.kernel.org>; Thu, 08 Aug 2024 03:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723111752; x=1723716552; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gmf1lDVYQNOTrvjtggcYQl2+7HL3Ap0SPuSuDWB4G9o=;
        b=4QQBgOlrtfaG9f/SjfixowxDbdK1BptGYtz5oaL3bSo3TVeotcOpd6TKFlVz4U+5BC
         t9Ps0ujS8CjPvWv9h1rMgumIQU+CZAvPVELEvvxTIlLUpDOVfTUQcnItgoBzW8F7WoHb
         xyySEfn+ALpEDaVPaQIcbh4Lgh+TXjLFJoUdG/cO22aL1qOsp3LHs84N1vgsr4gyUMN3
         DPNsId+u/UbDXmuWZKJKFJtPHJJusOrTSzB8/jvbB4atYp2+g3qKWWBhgPyzgmBizikg
         K+/IHmV2NaR3OTGuWp+QiI2N/HS9wB1NBwXxjA7rOPAout3FT6LTZgA94NlzdCrDQamq
         bpfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723111752; x=1723716552;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Gmf1lDVYQNOTrvjtggcYQl2+7HL3Ap0SPuSuDWB4G9o=;
        b=wvtw+5ZZAua+xhOneh6JuJQO7hOWKv0MxU2V/HNsECHOfUPMtl3U+hdB7Jo+aPLM8F
         7LJhJ1h8KQqRiIRWxX/nU6U4qBgVzB99LyD7nA929I3dHpGrKRqyHFKZqFTZmptp3LC2
         fQ5iuSqLyuK8pHlqKJsIXFTFdAwA97eDyCgaVCExA+Oue89mv4nxfS2rNU4EDX9RdQAV
         yGk+80h3fHfdNnCw5jSxAOtYqCeuBCA7cRjfu+l3Y+YFSP0dNGMzTe68GKXA/RmLaKNO
         Np/dlDiayexckSYOBMJww0FjKDCdXPy4DVN1+7tjfBlFn5b+U5W0Di7wDCvGE6/0w9Us
         Tsxg==
X-Forwarded-Encrypted: i=1; AJvYcCUFuzwv0JxB+fqYhbTf6hGTvG+6WqV4NFPHavSamEw3Su4hoGTuMQddLiDri5WHXjI3umiz9g4lzPndzEU/NcFGnvkpqHqbogQL
X-Gm-Message-State: AOJu0Yy2JkHTBuvE9E3sYeeKGk8sBweuMetzRDPgN1jB17ey/1bhbEvE
	Z8pLXpU8W03EiSTlpzitUNnumHrGqtRvCNbYHe/IfRqTh7ix2NceZNbpaIO51UB6gKekPe3tvq+
	qQA==
X-Google-Smtp-Source: AGHT+IFnMu6Vl7oOZoonbiTCgGX+6r7qD0FAdNu3kCBg2W8Y++fW20NrMX4CxUsMAfeBFzWpT/N0nYDbm1s=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a0d:cdc4:0:b0:650:93e3:fe73 with SMTP id
 00721157ae682-69bfa879220mr35397b3.5.1723111752311; Thu, 08 Aug 2024 03:09:12
 -0700 (PDT)
Date: Thu, 8 Aug 2024 12:09:10 +0200
In-Reply-To: <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com> <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
Message-ID: <ZrSZRi5BPelnaq6X@google.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: Alejandro Colomar <alx@kernel.org>, "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	Artem Kuzin <artem.kuzin@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 07, 2024 at 03:09:02PM +0300, Konstantin Meskhidze (A) wrote:
> 7/31/2024 2:40 PM, G=C3=BCnther Noack =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > Konstantin: I would still appreciate if you could have a look and sign-=
off on
> > the networking documentation patch as well, since you are the original =
author of
> > much of that documentation on the kernel side.
>=20
> Hi G=C3=BCnther. I have checked the patch. It looks good, I left one ques=
tion
> there. Please check it. Do I really need to sign-off it?

Thank you, Konstantin!

I would like to put both your "Co-developed-by" and "Signed-off-by" into th=
e
patch, because:

  (a) We should give you credit for the documentation that you've written :=
-),
      and this man page change is based on your documentation in the kernel
      Documentation/ directory and headers.

  (b) Committing this man-page change would put it under the
      "Linux-man-pages-copyleft" license, which is different than the licen=
ses
      used for the kernel, where the documentation was originally written. =
 I
      would like to add your "Co-developed-by" and "Signed-off-by", so that=
 it's
      clear that we all agree on this.

For reference, the rules for "Co-developed-by" are also discussed in [1].

Would that work for you, if we put your "Co-developed-by" and "Signed-off-b=
y"
lines on the "ABI version 4" man page commit?

Thanks,
=E2=80=94G=C3=BCnther

[1] https://www.kernel.org/doc/html/latest/process/submitting-patches.html#=
when-to-use-acked-by-cc-and-co-developed-by

