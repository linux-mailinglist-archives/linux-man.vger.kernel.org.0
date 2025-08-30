Return-Path: <linux-man+bounces-3759-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C8BB3C8B2
	for <lists+linux-man@lfdr.de>; Sat, 30 Aug 2025 09:29:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8677A56782F
	for <lists+linux-man@lfdr.de>; Sat, 30 Aug 2025 07:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F15F21CC59;
	Sat, 30 Aug 2025 07:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cy/bIS79"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D796FC5;
	Sat, 30 Aug 2025 07:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756538944; cv=none; b=SCYASVDjzlhY8EZ2sDI/ybXx834bVuaZGN9Cq5ANmzrhip0OqprGCZ6sFncJW3Bmh9QIih2qy5oehG5emHS7rX3qVQC2+/p2/d3xK3k9OhxyfGxnBqFrB6l5MJwZNNKOYEIBPneCko9hvbEMEb+foV9WvT4nyJK4lSlfiZwVh2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756538944; c=relaxed/simple;
	bh=dXBt6ipqJfV2LeJc6A+EHu2ffSzyZTLlyN7LjKzn+Tw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CajEdSvUd+FGuBTzy7gJYTOMcIgDknDFCVmh3paghaA5wmpnrX3UMq4vB3lV9CkMCFlM2BFEFLeL02aV/gcbn+2xvej7ebGT3eeX+WMlbhnfJq5r+n4hYWuPWQDk/RozGpblV7slnyIbS6fZaheK63I2wONlf1r0QXEKbuvQBng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cy/bIS79; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e96e1c82b01so2149602276.1;
        Sat, 30 Aug 2025 00:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756538941; x=1757143741; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tn5paqlyjkwwo7lq1KLyaE3ov7h9Uyq9UjigSmjR0Xw=;
        b=Cy/bIS79sJsMzuWyz1MwvlbH3eJI1JUGHxEsutOcTTak40X8aGPyQqt6aOiX1Vxb7y
         09WtKAHmjD+EChOt99obVKm6jgM/brsWg34fbJqZJF+z8DuW9Bikc8ZU6mL7XPSW9Hmz
         Hiv98KlKN+XNNs4Ahn7d/ahsVhGN+V1jLNAh+Pfyu7CHj0cLF3nZZkZbw6Qhb/4j8sQy
         OvuenadleOpxpf1vQRweNHBN0wh7hoQgnVJeic/mbZ0rylhv3/Dnb4K2Oi8vyNYMy3FE
         GSTVOI0N/Ow5no3MU+sL3rzOa89N+qkoeQcPH8Pm64qfTL6E9vzvnkN/WD9YkfQlY7pH
         iuEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756538941; x=1757143741;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tn5paqlyjkwwo7lq1KLyaE3ov7h9Uyq9UjigSmjR0Xw=;
        b=sgWFIChczTV8Go12G6CIzyvNspWRd+PhB7ACz0Zwrixuz+kbdhNyKlvWCbEm96iRI/
         6ccCNwiz9ziseeFHzkY42DRepfKwJFnhmfk9m3bqhgC7lLR+bWcxGV9ZU8Zw0cPV1Sjc
         U4hTB/62w+hJOz2gQfLnvhnQK7sCFC+Z/jd3tJ/OHuHxXQLG1e8J9m8lL8MFQDPSoE//
         n1i2oS8VJT3VzkNE5B2r1lp1yFZD/rt0laDPvvoGYJabvrUeNBWBcj1rE9xvsk9s3LwN
         JBAMI+/Yi0xPCXcUZpHw3kxLb53eGdhR/53H7oO2e4PLXsuPO/ZSXSftuWJ1xd3919O7
         RfbQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5pFzsylJXjGm0s3e83zppPN7Z4q9/nZBBcx67xiR5ConhCGvYrquMkMo/hI40zKnKJo9OlUSZMlY=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzl4KmP+JUrNenl9JRs7KofwYtEtmUx9LU3ce/sKxpfba2haFs
	H3IqShrxX7qTncXcEVu0kgXbFhtwzlnELkYEgrycWNpY2oC+G/zn6sDu
X-Gm-Gg: ASbGncuQD+4aZJTlaZ7Jk8g8EJWKHGT1NBVARJP2sne9CO89Xow9cCFKbX5OrJeNrMk
	idxkkeX55jqxz3wLVGy/66KwuA6BkUOizZF+C44kfXWzgc7TKrl5tDRe1xUQhi0AaQgnaHtcyXv
	KE1ci9CgUmWVw4vqwLFyFTr0I7MzNZrHEXKySf2Bip/zjSBOj1OpFhg6nC2eruthP+KLWDy6AOq
	Ums+Cx9E4mUyjU24AMZZMv3DSgf4ffy1Li6x5ZQRxnSArhLR2m8Sova1DvXW7Ia/WdRDiKXU/Yc
	uB0P5qXnhHARkHoZzThMI2rEFNWaP01Op5Sdwj0hokdlsCyPFo41svHzFSbEDRwzXlgk+2eNykT
	k+TdUBZRlh05QGjpVmBmXvOU=
X-Google-Smtp-Source: AGHT+IENgl3KuVXeaQZ/gjf0Yxqcr7tD/C+L6q8ivQphJB9SpWFM2lhL+IzNhLz5ZSCSoa03j2Bn2g==
X-Received: by 2002:a05:6902:2747:b0:e96:efc6:837b with SMTP id 3f1490d57ef6-e98a57a1befmr1275445276.23.1756538941398;
        Sat, 30 Aug 2025 00:29:01 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e98ac580f35sm79785276.27.2025.08.30.00.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 00:29:00 -0700 (PDT)
Date: Sat, 30 Aug 2025 02:28:57 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-man@vger.kernel.org,
	Alejandro Colomar <alx@kernel.org>,
	=?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
	Darren Hart <dvhart@infradead.org>,
	Davidlohr Bueso <dave@stgolabs.net>, Ingo Molnar <mingo@redhat.com>,
	Juri Lelli <juri.lelli@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Valentin Schneider <vschneid@redhat.com>,
	Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
Message-ID: <20250830072857.mw224c532jj5xdlj@illithid>
References: <20250829160200.756194-1-bigeasy@linutronix.de>
 <20250829160200.756194-3-bigeasy@linutronix.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lbdsu2yr3pqex6be"
Content-Disposition: inline
In-Reply-To: <20250829160200.756194-3-bigeasy@linutronix.de>


--lbdsu2yr3pqex6be
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/4] man/man7/sched.7: Update the documentation references
MIME-Version: 1.0

Hi Sebastian,

At 2025-08-29T18:01:58+0200, Sebastian Andrzej Siewior wrote:
> diff --git a/man/man7/sched.7 b/man/man7/sched.7
> index 5da631c310636..2f0cb1792d02a 100644
> --- a/man/man7/sched.7
> +++ b/man/man7/sched.7
> @@ -1048,12 +1048,8 @@ was not possible up to Linux 2.6.17.
>  .I Programming for the real world \- POSIX.4
>  by Bill O.\& Gallmeister, O'Reilly & Associates, Inc., ISBN 1-56592-074-=
0.
>  .P
> -The Linux kernel source files
> -.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
> -.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
> -and
> -.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
> +The Linux kernel documentation for the scheduler
> +.IR https://docs.kernel.org/\:scheduler
>  .P
>  Worth looking at:
>  .UR https://wiki.linuxfoundation.org/\:realtime/\:start

This is not a gating/blocking suggestion.

You might consider adding a real hyperlink similar to the one at the
bottom of the context.

Thus, something like (hand-written diff):

-The Linux kernel source files
-.IR \%Documentation/\:scheduler/\:sched\-deadline\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-rt\-group\:.txt ,
-.IR \%Documentation/\:scheduler/\:sched\-design\-CFS\:.txt ,
-and
-.I \%Documentation/\:scheduler/\:sched\-nice\-design\:.txt
+.UR https://docs.kernel.org/\:scheduler
+Linux kernel scheduler documentation
+.UE

Here's the description of the UR and UE macros.

groff_man(7):
     .UR uri
     .UE [trailing=E2=80=90text]
            Identify uri as an RFC 3986 URI hyperlink with the text
            between the two macro calls as the link text.  An argument
            to UE is placed after the link text without intervening
            space.  uri may not be visible in the rendered document if
            hyperlinks are enabled and supported by the output driver.
            If they are not, uri is set in angle brackets after the link
            text and before trailing=E2=80=90text.  If hyperlinking is enab=
led
            but there is no link text, uri is formatted and hyperlinked
            without angle brackets.

Regards,
Branden

--lbdsu2yr3pqex6be
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiyqDIACgkQ0Z6cfXEm
bc4jbQ//QpBMdGc16fOkfaYdAQSX0yKYS9jibb0ANs24uB9NiHvS2B04gcT3HH9J
d1aUxR1/7ueTdRgF5tdPeVvdkNwg39Ff7PYL1FFlZHNN8u5fv3AL6TYcYycQwkNE
Nvbxxkrp2NM2I48sTeJiXDDNsclfY9EhM6kIGS30i9hY3KqCle1YlBK2JuH+UX6u
K854W8aeHRkfFr+zavgh4tXSDIc1XPqK4epVkUJYo4YFjYE5fkiZwX3DlEulLlfx
Xzt0Rilz9YfyuBD+2m+0/fBi4KYp75c4Ze+nxrBa2UhQj5o/zlmqfeAPXIpLQ9O/
kIYEQcbt0QLDc1dEwGF8O05sEFTpSphfsDX+Krj2GwIXl9XNGB1/mPg2U1atlQv1
tvItLBkG/hxz3KIr7LyNZNlnXPGbT6+g7xIG73rjx5yRo3MYfR37KKFzk8lp2sAS
qIDSzTyPWxU0HxkK9Oj1q4CVZj6sBEvqUqHUeScCccrsGsqig0JordD6yJhs7X5c
LA5bfj9mMEbgLF+CO6V6ulqWhC1n7USWoWIFVXVpagWIqST8U4adwvOb4x5jcxWl
Oi1qzYwtGnGsJ4ffKPWDmVWrYwwaZCjRUC4/jlrI2Q/59O6IU1Fw6LOHxEHgM7KA
Ld6IKQnmxLrw1Ah5nYGCGZ+AAdxlL3jp1n/EiRstiqa2Tvx/JuA=
=SnH8
-----END PGP SIGNATURE-----

--lbdsu2yr3pqex6be--

