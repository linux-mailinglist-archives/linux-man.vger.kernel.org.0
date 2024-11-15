Return-Path: <linux-man+bounces-1922-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CBE9CDC8C
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 11:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1BC71F21A74
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 10:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11256192B9D;
	Fri, 15 Nov 2024 10:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="G3BOHYhE"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED1B1ABEDF
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 10:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731666603; cv=none; b=FfyhaG3QZlyTM79UPYC11p27Qi6gF9UzEqhOt2WRRYOfto3MisJ4abS3MNDsbGXzy8KdpZWc6am4vALaPOFaMaxN5oAsRqvduZWWqpoxs9YNXH7o2l4oZH+ojKhKhcj5joB5trVDd6GscRloanOomPn6EP+PhJXjpTOB0fMTqw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731666603; c=relaxed/simple;
	bh=/RYIlQgpoe00y8ZANjI6bNWcyF9GkAKw3M9fICCrBK8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sWa2ECCc10t8OmHP0tBrSdRkmdQcZgIJy80p+UbdnDN1uXTFrkoKTLRAxr1ZFsrOyI4A5rtooKH9wGhq3qyrUgYZgXTO0kPfxBM32ix8DBRdg5Wo+R49uyz1VGFCpZEz6XJ38lLAAf219uSICta0PBZG4CQhrfzfKvrB3Fuu7U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=G3BOHYhE; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731666601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E8o7w+ZlwLzTFnhUEqua9BmfxvS8GO9YLb2puOrVaQs=;
	b=G3BOHYhEawLItuUHj8LJ+xnBIKrCk2W6ynZiQl0pejqtD33IRG/7preiQCf5n1Ijiv5VRD
	ACt4feB4j8Hx7h5EJaedznKyq3A3jUfbcCNpUqsfuV0yOJu2xFZqu4DF1uOEnPSfT7UuUH
	B/kZKUwuC5QxtZNeSn/kvgTOg89MLh0=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-694-D83R0B0UOx6NMOyh79JhAw-1; Fri, 15 Nov 2024 05:29:59 -0500
X-MC-Unique: D83R0B0UOx6NMOyh79JhAw-1
X-Mimecast-MFC-AGG-ID: D83R0B0UOx6NMOyh79JhAw
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-6ea7c5805ccso10480597b3.0
        for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 02:29:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731666599; x=1732271399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E8o7w+ZlwLzTFnhUEqua9BmfxvS8GO9YLb2puOrVaQs=;
        b=eGAKDZAuP2WdPoHK77w9ZDb1lvxf4Gd3oCE8pWSvOKeCkJn6mmuiwJHCzAsXsGmDI8
         dfEyMW8OFp4ZoEzgeuASoDBb0JllOGauLJACirNw/LBNfeExG08aRmlDO8DC8bPcFCKV
         rnvgryfsYMAXAOTIsbhCc3YZiRF52tP44FwFYceV4eAOzxtzal2UeTXSKXp54wdOSBa/
         b33VNkRlL1OTitkKoc43+3XCQ4v++eid6TTxLLgh+E09votTNqprSCWjyHZqsdSI9F6h
         KBCY9CISRObx4AY2wV3FSXikNPHHXz/Rqw7LC7jmhQ0xi113PsdZczXIsszV6GIWKa9c
         Um2w==
X-Forwarded-Encrypted: i=1; AJvYcCU2H4nBf+TTM2/PSsnkA8dPs6JYPZuXzthA6ZQMlxYg3SyIdKkp25azNTLYQN65Rc18GOXp5bKU7J0=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx00NefP0TIyluu/3whacR+4zFDcc6+VX2KiVaAYxiKdv05H42n
	B4j9WkJy7I56stWuS0KJB5jydmEbLmI6pHa3yn+58ZNrgFA9ciKrcgfKDvP6ReobjX2VbIER0/q
	Mqdm1IZrDa4HgHyv1zBPg4F8g41pqfa1cRZrOB18woOq/jJrRQbIzXBjnnb2m8U9qgNY3dRpiYJ
	Tth0hVeN2xcGDhJaTNDBT/xDLS5xYjRj4P
X-Received: by 2002:a05:690c:5785:b0:6ee:5cf9:f863 with SMTP id 00721157ae682-6ee5cf9ff65mr8050357b3.4.1731666598863;
        Fri, 15 Nov 2024 02:29:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJAdFvPZgeXJHed8uV7h7j2IIcvr83bMOtOUiuKz5CRUTtMQqHpoeaoSu8w77Qy9vdHfUDufKxsuh86/xTEJo=
X-Received: by 2002:a05:690c:5785:b0:6ee:5cf9:f863 with SMTP id
 00721157ae682-6ee5cf9ff65mr8050237b3.4.1731666598606; Fri, 15 Nov 2024
 02:29:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org> <c089eee6-c11d-4225-81af-c59378532a28@vagg4fs7.msa.explicate.org>
In-Reply-To: <c089eee6-c11d-4225-81af-c59378532a28@vagg4fs7.msa.explicate.org>
From: Jonathan Wakely <jwakely@redhat.com>
Date: Fri, 15 Nov 2024 10:29:42 +0000
Message-ID: <CACb0b4nvdNjYW6+P-zrF3c87sdTcg_8k_zYhadwi_OBexJqtkw@mail.gmail.com>
Subject: Re: [PATCH 2/2] printf(3): improve description of %a format
To: Ken Pizzini <ken@gnu.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 15 Nov 2024 at 08:24, Ken Pizzini <ken@gnu.org> wrote:
>
> The description of the %a/%A specifiers in the printf(3) man page
> could stand some improvement.  In particular, it is not clear from the
> current document what base is used for the "p=C2=B1d" part of the format.
>
> It can be inferred from the nature of %a that the base should be
> a power of two. and it can be further inferred from the nature of
> hexadecimal floating-point literals in C (as specified by C99 and
> later) that the base must exactly be the number two, but it would be
> helpful for the printf(3) man page to state this explicitly.  My first
> expectation when reading the man page was that the exponent would be
> taken in base 16; after experimentation my second thought is that it
> is base FLT_RADIX (which is 2 on IEEE 754 floating-point systems, but
> 16 on S/390).  Only by going back to the standard [1] could I determine
> that the exponent in p-notation must always be taken from a base of 2.
>
> [1] POSIX.1-2024
>     <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.ht=
ml>
>
> Signed-off-by: Ken Pizzini <ken@gnu.org>
> ---
>  man/man3/printf.3 | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/man/man3/printf.3 b/man/man3/printf.3
> index 7a96ec9c7..acabb3c3a 100644
> --- a/man/man3/printf.3
> +++ b/man/man3/printf.3
> @@ -767,8 +767,11 @@ .SS Conversion specifiers
>  .IR double .
>  The digit before the radix point is unspecified for nonnormalized
>  numbers, and nonzero but otherwise unspecified for normalized numbers.
> -The exponent always contains at least one
> -digit; if the value is zero, the exponent is 0.
> +The exponent,
> +.IR d ,
> +which is the appropriate exponent of 2 expressed as a decimal integer,
> +always contains at least one digit;

Alex's suggestion (which I agree with) was:

> +is the appropriate exponent of 2 expressed as a decimal integer;
> +it always contains at least one digit;

Remove "which", change the comma to "; it"




> +if the value is zero, the exponent is 0.
>  .TP
>  .B c
>  If no
> --
> 2.47.0
>


