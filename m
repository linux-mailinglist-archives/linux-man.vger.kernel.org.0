Return-Path: <linux-man+bounces-1267-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1913917546
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 02:39:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD627281612
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 00:39:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6D1522A;
	Wed, 26 Jun 2024 00:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PcpG2ThV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81FCC13D
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 00:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719362390; cv=none; b=aI+TQwR1xngcQg3PoTIj2JXBN3Zq6pZtitypMQPazu5ib/v7Rre2NV7JG19w0HVja6fKS8aTA/9RT577FRBNMMhsmuqQ5Stc7Mw7JLs5vISMoBaJa40GrdLKzkBxRJLQB8rt0byBCgrP+5FH3iaOGXwBLAUBoIUybLGpckHDAAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719362390; c=relaxed/simple;
	bh=PobiepWZQkvwuovJ2SU1Sy5k3swz4g9o8tYpALSIwUg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CMBZlwPZcrbdgU23TLUwoCT1iRyVJloU72A84MHLykD8coU0FNKIkoxTY7YAIc5r1kut7oeunDTrNazkzCYSqK8MxjpoQWULJy2tMBiMy3T0aJvuz+KtFU37ZGfd+XIJqHZP/zNB8GgqpgAcWYpZc2Y/P6sTGK5n2Q8HXx315mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PcpG2ThV; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-700cc8e447aso464600a34.2
        for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 17:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719362388; x=1719967188; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R0DhlYSk/YZjMl3lWF8IzJ6MyxekLExnqoR5Mv+VREQ=;
        b=PcpG2ThV3zSwDfGcTXXtfDimo3pom0wtE6eEETOJjSaBLNp+dBucpHLKIUqtohODuu
         DLP6L/Sg2SYdOHlHTW3R/B5TjiBDJSriNEiatuDLkaxv8gpYjoPYgzV+HoYdn+MQjmmR
         lJKLTVFPwex7x1YFktevJ2EFTk7Docli9NEUtDR+Kl31q0AnvZ4Xa4XwAg2vFjig4E6a
         yG9GYw73aKYrF38TVWOWnWvEBQg6k2jKlOup7BlINkQ6/wXbndjTB1DRmv5WtiAcvOTS
         39H/GpR5rixnHloWanVWhZ1gwFK0NsCfuff11N/a0weAudj3ydPbPwedH0IHD4Ni4IZT
         atsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719362388; x=1719967188;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0DhlYSk/YZjMl3lWF8IzJ6MyxekLExnqoR5Mv+VREQ=;
        b=DPhufH+LQ0Cr+reRc0EN/vv8hjZdlFoorZGUW/eKQ6sb73If/hIhp8vMNskyrOMbp6
         hH+jaqCQWV52xjyTKLoI0Ht6Fhx/2erbvN6R2U1vDOzaDNubTVHfeA58LgRq49FL5ioA
         xkRPYT4j3KfOW9Uo8n7hgoZy02nN/k6BlQXW4Xp5GQGgqcLcFmeqaPxM56WUSoCMvlBI
         GlzCE96zHFAL4cdB+nbmjjAkXrvRK/yqTPqq73P6cBvqgRzHYoRMKCtegZi2JMZ89zsQ
         wm0SnCK4U7hdwJbsZmW5BmweBdKJvBLzDDpE/l6xv0PENViZbgZnpEbgzVSy6JOqGTlU
         idHA==
X-Forwarded-Encrypted: i=1; AJvYcCWyJmvLwv8K9ImelRIf0W3goaVUm70eAcBuscFA7zxVcw7VFs35+eXCZ6q5T0LTGep52N4sQJHLHF46m+tHF5aUiTRwB+LdNonZ
X-Gm-Message-State: AOJu0YxGm4MksDKhNWou3MH5Z4F7MwvHZcsbBwLlJ49kzFZ09cXegMYX
	WkFRANKPJONIcsRCb9rmdSSmrMi0NIWcAKH7HdmQk+q5hIFQ5GK4fsgyDg==
X-Google-Smtp-Source: AGHT+IFPSJriRn5ExdoXGKGWVqwVSS9/cMOnEATYXXzdYOwRXvxVmEUJpXaJMCOWbkplD/99veVePw==
X-Received: by 2002:a05:6870:5487:b0:23c:bc3a:6ccb with SMTP id 586e51a60fabf-25d016c286fmr9605581fac.19.1719362387875;
        Tue, 25 Jun 2024 17:39:47 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25cd498872csm2684947fac.21.2024.06.25.17.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 17:39:47 -0700 (PDT)
Date: Tue, 25 Jun 2024 19:39:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Josef Bacik <josef@toxicpanda.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] statx.2: Document STATX_MNT_ID_UNIQUE
Message-ID: <20240626003945.hj6ub2jn52teddun@illithid>
References: <cover.1719341580.git.josef@toxicpanda.com>
 <a45b2623a25357f33978b49963dad5f99b984386.1719341580.git.josef@toxicpanda.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqj5nbqmo7cv7vri"
Content-Disposition: inline
In-Reply-To: <a45b2623a25357f33978b49963dad5f99b984386.1719341580.git.josef@toxicpanda.com>


--fqj5nbqmo7cv7vri
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[trimming CC list for this formatting issue]

At 2024-06-25T14:56:04-0400, Josef Bacik wrote:
[...]
> -.in +4n
> +.in +1n
>  .TS
>  lB l.
>  STATX_TYPE	Want stx_mode & S_IFMT
> @@ -255,6 +255,7 @@ .SH DESCRIPTION
>  STATX_MNT_ID	Want stx_mnt_id (since Linux 5.8)
>  STATX_DIOALIGN	Want stx_dio_mem_align and stx_dio_offset_align
>  	(since Linux 6.1; support varies by filesystem)
> +STATX_MNT_ID_UNIQUE	Want unique stx_mnt_id (since Linux 6.8)
>  .TE

In my opinion this would have been better done by retaining the existing
indentation and changing the table to (1) expand the right-hand column
with the "x" column modifier and (2) using text blocks for lengthy items
in the right column.  tbl(1) in groff 1.23.0 covers this ground.

Alex, your acceptance of this patch isn't showing up for me yet.

$ git remote get-url origin
https://git.kernel.org/pub/scm/docs/man-pages/man-pages/

I guess it's only on your staging site so far?

Anyway, let me know if you agree.

Regards,
Branden

--fqj5nbqmo7cv7vri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmZ7Y0gACgkQ0Z6cfXEm
bc6c6A/8CcHrLfbHi9nIVy0+w4JJR8WvPbXzE0YwpNB9CdIlpRpKpIXLGSGYHPIF
jOoAOVT8ek2l1w3HLnW8/1Dc7kE5WylNayITFydWi242FgnNOe9zrnuMhE4zc+FG
yBo7UHe6rTA002R9LP0Msvw0lMeb1iZB7bVBQInbWDnl12Bvg6u8lZqtNAhOL1Jo
Edbjs1KTlvsbaUz2VBhrNwkqRuTIzw0gGCa5HZNwnX1R9/5Qy6BC2Cn92d9suAUs
xzppvbbgFl3yeP5V6FvXGPI9hYe0fFrTqAsL40pABWWdEcdTT32kNqhEEQ9BeKwd
/S5/RmNPi40hbCLZK3ShOHqog5VoIM6dC8ygTsvbw7YOpBL5XiMcChmx2E8IPXMW
AkumNKYAJ2zu8PYaF6nWtIuzSbNcU/sMjtSkPGCy0zuyfaWX5QrGy4hnr0nk9WDT
pC9gQps6IWe6xETt14o5X6q2sms+icwIaMZvRvpNd8XVXKZWD3kjjQKGzJIt1i8q
bmUJmMVe5S41ey0W1b918RPvRYf2AaZu5E3V9N56egl9t7EaVpMMvIGIZzdQ/Yp0
kPxWZd936/hBqFr848ex3g2p5buUlX7kVee9YFmLnP0j/NTqALt6eaVvcLQ2YiW9
HfeJS9vDVlQJWsccwAGR4BnzS0WWy53aoMggln01820IxmzN0rw=
=2cHc
-----END PGP SIGNATURE-----

--fqj5nbqmo7cv7vri--

