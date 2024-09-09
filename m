Return-Path: <linux-man+bounces-1771-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5242A97121B
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2024 10:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D84C28224E
	for <lists+linux-man@lfdr.de>; Mon,  9 Sep 2024 08:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B5651B5EAF;
	Mon,  9 Sep 2024 08:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HuGgmJsC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AE51B1511;
	Mon,  9 Sep 2024 08:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725870499; cv=none; b=TuGdtELYWLkazCRNseP8jepiWi4IBwsvE+SXKFi6LzetZSAky1TM62JtQajDgkVbmhcjd6fo5vk3Dpr+ywndi5FKlkfdWJE3FGxNdLju48UGuoZcE0JymKNByKBOzGDDFnFHbz5jSBXE2Ng8dKAyh/+QeRe21hXH8s6dJodKdug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725870499; c=relaxed/simple;
	bh=clwgzdL+fgwp1BnPiBsjiGqHexHv1ZGDNYI/nwy7qKA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EmYNNcP5da9ZG8XDKRdPG5hTwk9lYGOFreFzrxDW+3riBTdDTCX60fQbbpcstTLwDWYIe2nrC/7drv8zuOuTngaRWDCxzM+PecaphMi0yXY9HKpBvK6BHE3UuSi5SWVQxDuoYFRLYmaDy5Q4gSUJQqsd3Otnr/gZTwGTnopf53w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HuGgmJsC; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c27067b81aso3931998a12.0;
        Mon, 09 Sep 2024 01:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725870496; x=1726475296; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KNhuzaG9zf8RaDT5GzHcA32PByoi2WWlsSGIAPwEOPA=;
        b=HuGgmJsCzFDs4C4aZhnGc6aAEo7mqgCFY9WzxGrGN0SoLf2GPKBPNgGyZZVvAAw+7x
         sqiZ7YfHvJ0xmpPouwx6iC7lTVW25kfZ2jhmuNuqx3/l43vuxu5bBi/NCijgcOlL4DvG
         Tg/rocYCHV83nt5fiqsfsTFKJGY68T6PSOlYkH/Q1r2H7c7ZheNKZgtzgFyMl854hj+s
         R49UxBH/ThwMnPRKHR44bAtoEepDHmzdEhpXCwGJJme3QfVBU41xooSQip9nmtca8BsR
         OxVuksU5lfq1KWYP+YBTdZyqihtCdCMB4dHvjyPVT1suXZ7BFhuvYmxpdMqltBKPvlXk
         IXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725870496; x=1726475296;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KNhuzaG9zf8RaDT5GzHcA32PByoi2WWlsSGIAPwEOPA=;
        b=HhITm0LLm4Xr6X2p/D7+Q+7vrFJ4/dC9tZMMO3Y9m6DM99+XiOtfHarBsju31Nmbbz
         gjif5qdAeMeXAnb05ugfSYqRHvlPfZ6y78snWJcSMy6xVLPZDZEwocOXRI/0XlCsztAv
         kkAlhFksmIlTA+HFNe+D1JVYP/26zdkMjobrP2n9+O20c4h4kUf95bq7Dls9v1jOO9Nn
         ZcaVdBD3rrDYJ24fsn7GWx7yL05evLGGuhzpsz41QtsZZfq29LHV5wF0wg4p8QmIZwDf
         4ybXmDMu+sWPn4gCkxpZNCI0XDw+BtlB+MzXLqj53BkZ6umqc7TSj+qfirQGc2z+veBi
         xEkg==
X-Forwarded-Encrypted: i=1; AJvYcCVyN9hqeoW2fF3oHGLw0j3PMIe38HHtJK6IUrznLmKDn7Q4QMGHbBA+JnwxG3opMVybwDXBfo7nFYYjYdI=@vger.kernel.org
X-Gm-Message-State: AOJu0YwJAbSsDd6R3eRdZ9LAescIwvOOZn2A8l4dNaU8fXL40lg9R80n
	zpyZuf6cSBtGlDhS3t+cVZ0J9klfw5hNO9YplMKXb0+Oqq/ixgy9osaXypEcENbIF3EKJPXlfzm
	cYRaXwDI1GjYFUxV93/Kh/3UCCbBokA==
X-Google-Smtp-Source: AGHT+IGaxuSPCI0CCYHDH5NVtvvHr2hIZIDbl1qndCFgPccZA6p6+pxsIsCegfFklw96eEx6CcdcUNs6g1e9sinAiG0=
X-Received: by 2002:a17:907:1c1b:b0:a8d:1970:db07 with SMTP id
 a640c23a62f3a-a8d248a610dmr368489366b.52.1725870496304; Mon, 09 Sep 2024
 01:28:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>
In-Reply-To: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>
From: Stefan Puiu <stefan.puiu@gmail.com>
Date: Mon, 9 Sep 2024 11:28:04 +0300
Message-ID: <CACKs7VB_GEt_u463R4JvWveghBBscQeqaWtKrMmxNSQ2mn+-VA@mail.gmail.com>
Subject: Re: Linux man-pages project maintenance
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Fri, Sep 6, 2024 at 4:06=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi all,
>
> As you know, I've been maintaining the Linux man-pages project for the
> last 4 years as a voluntary.  I've been doing it in my free time, and no
> company has sponsored that work at all.  At the moment, I cannot sustain
> this work economically any more, and will temporarily and indefinitely
> stop working on this project.  If any company has interests in the
> future of the project, I'd welcome an offer to sponsor my work here; if
> so, please let me know.

Thanks for all the work you put in. It's true, oftentimes in the Linux
world documentation does not get the attention it deserves, so kudos
to you (and Michael before you) for taking up this underappreciated
task!

Stefan.

>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

