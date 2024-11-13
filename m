Return-Path: <linux-man+bounces-1907-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 760EF9C6E20
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 12:47:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B00B1F23B28
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C101FF7BF;
	Wed, 13 Nov 2024 11:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZTVBYYix"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577701BD9DC
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731498456; cv=none; b=H89UWX0kcS5yJgt/0adL4qEuUnf2K+yyeEfTyZTrFqBdU7zGu5FiNz6zp713go9BETioVVYNdFGLQXBLAkbg7sHENmXuP1Joj1rm7PQh4VJa2mIsdIhaReGNXNcuBbsOFIeEK9CEcP1iosvuTI/LjwJ3QYaFHqOpJMfHc7xey0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731498456; c=relaxed/simple;
	bh=XY5KBUawcmqbbPTCZSuABPjK2OUsz+xgMq8xKxzhKuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WyajbKpgY884lfledSjpduSJ4Zqy2xRVu/jzjwu1cKYKgCYERfQuanu6dHqApffhG+qepMbDJC689xIFg998lVRpb2+Q0EnaQRHZegGnMesa/F83Y+SM4gPMTJQIxFPrL7op7212DAW4mgRgBMHnrYfsXp8cVIrrQ7oTAz1qpQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZTVBYYix; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731498453;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dqfbWZLWiRlAeq1agn+40f0IeIh2jLktF4zYJD3vWCs=;
	b=ZTVBYYixv4DGz9wFuzWCfp7xbmCUO2yZslU+F5dZaMRANmOco2om6sZuyb0zHrqCGIlqAw
	0hSru5u/6mLO9TzdTe+e0oMFhaf5iOc2p5RDqa3Vc3V+u51eVI0i2vEyhWVK7WfceKj/5d
	tOWOSbzpHaBmkc+5du9S8AGcRcaieB4=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-saNj7O51Pw2vgObc9zb9pQ-1; Wed, 13 Nov 2024 06:47:31 -0500
X-MC-Unique: saNj7O51Pw2vgObc9zb9pQ-1
X-Mimecast-MFC-AGG-ID: saNj7O51Pw2vgObc9zb9pQ
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-6ea8794f354so118537247b3.2
        for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 03:47:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731498450; x=1732103250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqfbWZLWiRlAeq1agn+40f0IeIh2jLktF4zYJD3vWCs=;
        b=bI3ZCJG0d7l9sPMLYAO+9JjW1aIe403NLn5uCchTSiFFz4tEZlefKSxdh6jdxrI8hH
         Ka2jdzMzKsVzkVNK0lf4PjsT7WSwD/ihxQi80fiJv0suC+suVcb1X9tYQJu2bjt7RBr5
         5vAQd4EknmJomIaAvvhh41QG5Ng8dqcdPXF17bLvX+1mTswQ/iuAjvKTgmOgZAadjf06
         2hCX8sSvX0yc5fPKYi19ZWwITDBnKeOrjtg2eNp0a+l9a+7YYbKDkh1yoaYb/eG5FXNY
         I0Zb/e1blubZf3NyACfDVxVpiftQB+fibsYRMWfVYzWwzuQU0UlgS+7g5+mnrJ2troJK
         DzBg==
X-Forwarded-Encrypted: i=1; AJvYcCUEQafs6HZTXMQ9bndbrM8SRbY2lOYhqWzCnbxRlUnGLR+vS6jSlgoJRN6U1HTuzlp4Ih3RYG+yzSo=@vger.kernel.org
X-Gm-Message-State: AOJu0YzjyQ39lZhBeAJ0Hxbce88RE/8osR1mBmOZifcHJB0MshmhF+hB
	X4caCgEwrnZLOB16McssJKKCXoJQ1b7waIyGeXHumG2Vd3kqklcagqRne2VXBA3VE/Pgw5CCqwV
	QChJ2wCgU+Q30ywoMfp+9BFiKzapNS2RippJjKu1O/vzP0aeBVzKeVnnrVR2FRBcqi/fb+Q4yxv
	IdqhXwMFkg2CIriDGrHg6F45l8uPgZ2GZcAwBCltsX
X-Received: by 2002:a05:690c:6c91:b0:6e3:1fbe:9aa8 with SMTP id 00721157ae682-6eaddda1013mr204982947b3.15.1731498450567;
        Wed, 13 Nov 2024 03:47:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHglrVP5xg5way9vq/Su5ZvYEBWWVMkJ3ssScDqFHAH7UJPFHusjGxoE8MrXWfXt6cyayJ5/8NzJjIHMfsLzTM=
X-Received: by 2002:a05:690c:6c91:b0:6e3:1fbe:9aa8 with SMTP id
 00721157ae682-6eaddda1013mr204982807b3.15.1731498450271; Wed, 13 Nov 2024
 03:47:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org> <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
In-Reply-To: <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
From: Jonathan Wakely <jwakely@redhat.com>
Date: Wed, 13 Nov 2024 11:47:14 +0000
Message-ID: <CACb0b4k2Yi6onFEHJOtE=puYNf0P_cUx=mi16oRQG=3oukROsA@mail.gmail.com>
Subject: Re: improve description of %a in printf(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: Ken Pizzini <ken@gnu.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 13 Nov 2024 at 11:38, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Ken,
>
> On Wed, Nov 13, 2024 at 02:11:52AM GMT, Ken Pizzini wrote:
> > The description of the %a/%A specifiers in the printf(3) man page
> > could stand some improvement.  In particular, it is not clear from
> > the current (6.9.1) document what base is used for the "p=C2=B1d" part =
of
> > the format.  Furthermore, the description refers to a "decimal point",
> > even though it would be better referred to as the "radix point",
> > as the number in question is not a decimal representation.
> >
> > It can be inferred from the nature of %a that the base should be
> > a power of two. and it can be further inferred from the nature of
> > hexadecimal floating-point literals in C (as specified by C99 and
> > later) that the base must exactly be the number two, but it would be
> > helpful for the printf(3) man page to state this explicitly.  My first
> > expectation when reading the man page was that the exponent would be
> > taken in base 16; my second thought is that it is base FLT_RADIX (which
> > is 2 on IEEE 754 floating-point systems, but 16 on S/390).  Only by
> > going back to the standard and reading carefully could I determine
> > that the exponent in p-notation must always be taken from a base of 2.
> >
> > A patch with one suggested wording is attached. The entry for "a, A" in
> >    https://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.ht=
ml
>
> The latest standard is POSIX.1-2024.  Please link to it.
>
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.html>
>
> > gives an even better rewording, though I suspect there would be
> > copyright issues in simply copying its text.
> >
> >               --Ken Pizzini
>
>
> The patch is missing the metadata that will make it be accepted by
> git-am(1).  Would you mind formatting the patch with
> git-format-patch(1)?
>
> See:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/patches/patches>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/patches/description>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/patches/subject>
>
> > --- printf.3~ 2024-11-13 01:07:23.023847047 -0800
> > +++ printf.3  2024-11-13 01:55:48.368341811 -0800
> > @@ -757,15 +757,18 @@
> >  the letters ABCDEF, and the exponent separator
> >  .B P
> >  is used.
> > -There is one hexadecimal digit before the decimal point,
> > +There is one hexadecimal digit before the radix point,
> >  and the number of digits after it is equal to the precision.
> >  The default precision suffices for an exact representation of the valu=
e
> >  if an exact representation in base 2 exists
> >  and otherwise is sufficiently large to distinguish values of type
> >  .IR double .
> > -The digit before the decimal point is unspecified for nonnormalized
> > +The digit before the radix point is unspecified for nonnormalized
> >  numbers, and nonzero but otherwise unspecified for normalized numbers.
> > -The exponent always contains at least one
> > +The exponent
> > +.IR d ,

If there's a comma after d then shouldn't there be one before it too?

So either "The exponent, d, is ..." or just "The exponent d is ..."

But not "The exponent d, is ..."

> > +which is the appropriate exponent of 2 expressed as a decimal integer,
>
> I would remove the 'which', and s/,/;/
>
> > +always contains at least one
>
> And prepend an 'it' here.
>
> Other than that, it LGTM.  Thanks!
>
> Have a lovely day!
> Alex
>
> >  digit; if the value is zero, the exponent is 0.
> >  .TP
> >  .B c
>
>
> --
> <https://www.alejandro-colomar.es/>


